package com.pengpeng.v4.service.comment.impl;

import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.text.Convert;
import com.pengpeng.common.enums.FileSource;
import com.pengpeng.common.utils.DateUtils;
import com.pengpeng.common.utils.StringUtils;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.mapper.comment.PpCommentMapper;
import com.pengpeng.v4.mapper.dynamic.PpDynamicMapper;
import com.pengpeng.v4.mapper.files.PpFilesMapper;
import com.pengpeng.v4.mapper.member.PpMemberMapper;
import com.pengpeng.v4.pojo.comment.PpComment;
import com.pengpeng.v4.pojo.dynamic.PpDynamic;
import com.pengpeng.v4.pojo.files.PpFiles;
import com.pengpeng.v4.service.comment.IPpCommentService;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * 评论Service业务层处理
 *
 * @author ruoyi
 * @date 2019-12-10
 */
@Service
public class PpCommentServiceImpl implements IPpCommentService {

    @Autowired
    private PpCommentMapper ppCommentMapper;

    @Autowired
    private PpDynamicMapper ppDynamicMapper;

    @Autowired
    private PpMemberMapper ppMemberMapper;

    @Autowired
    private PpFilesMapper ppFilesMapper;

    @Autowired
    private ThreadPoolTaskExecutor threadPoolTaskExecutor;

    @Autowired
    private RedisTemplate redisTemplate;

    /**
     * 查询评论
     *
     * @param id 评论ID
     * @return 评论
     */
    @Override
    public PpComment selectPpCommentById(Long id) {
        return ppCommentMapper.selectPpCommentById(id);
    }

    /**
     * 消息 --查询评论列表
     *
     * @param ppComment 评论
     * @return 评论
     */
    @Override
    public List<PpComment> selectPpCommentList(PpComment ppComment) {
        ppComment.setToUid(ShiroUtils.getAppUserId());
        ppComment.setLooked(false);
        ppComment.setType(1);
        List<PpComment> resultList = ppCommentMapper.selectPpCommentList(ppComment);
        resultList.parallelStream().forEach(comment -> {
            PpFiles ppFiles = ppFilesMapper.selectPpFilesByFileIdAndFileSourceLimitOne(comment.getDynamicId(), FileSource.DYNAMIC.getValue());
            if (Optional.ofNullable(ppFiles).isPresent()) {
                comment.setFileUrl(ppFiles.getFileUrl());
                comment.setFileType(ppFiles.getFileType());
            }
            if (StringUtils.isNotBlank(comment.getHeadImage())) {
                comment.setHeadImage(comment.getHeadImage());
            }
        });
        //修改为已读
        if (CollectionUtils.isNotEmpty(resultList)) {
            threadPoolTaskExecutor.execute(() -> ppCommentMapper.updatePpCommentByIds(resultList.parallelStream().map(PpComment::getId).collect(Collectors.toList())));
        }
        return resultList;
    }

    /**
     * 查询所有评论
     *
     * @param ppComment 评论
     * @return 评论集合
     */
    @Override
    public List<PpComment> selectAllPpCommentList(PpComment ppComment) {
        List<PpComment> resultList = ppCommentMapper.selectAllPpCommentList(ppComment);
        return resultList;
    }

    /**
     * 新增评论
     *
     * @param ppComment 评论
     * @return 结果
     */
    @Override
    public AjaxResult insertPpComment(PpComment ppComment) {
        PpDynamic ppDynamic = ppDynamicMapper.selectPpDynamicById(ppComment.getDynamicId());
        if (!Optional.ofNullable(ppDynamic).isPresent() || ppDynamic.getStatus() == 0) {
            return AjaxResult.warn("文章不存在或已删除");
        }
        ppComment.setToUid(ppDynamic.getUserId());
        //如果是自己评论或者回复的设置为已查看
//        if (ppDynamic.getUserId().equals(ShiroUtils.getAppUserId())) {
//            ppComment.setLooked(true);
//        }
        //查询最大treeCode
        Integer maxTreeCode = ppCommentMapper.selectPpCommentMaxTreeCodeById(ppDynamic.getId());
        ppComment.setTreeCode(Long.valueOf(maxTreeCode + 1));
        //回复
        if (ppComment.getType() == 2) {
            if (ppComment.getId() == null) {
                return AjaxResult.error("所回复的对象id不能为空");
            }
            PpComment ppSourceComment = ppCommentMapper.selectSourcePpCommentById(ppComment.getId());
            if (!Optional.ofNullable(ppSourceComment).isPresent()) {
                return AjaxResult.error("回复对象不存在");
            }
            ppComment.setFromUid(ShiroUtils.getAppUserId());
            ppComment.setToUid(ppSourceComment.getFromUid());
            ppComment.setParentId(ppSourceComment.getId());
            Optional.ofNullable(ppSourceComment.getTree()).orElse(String.valueOf(ppSourceComment.getTreeCode()));
            String str = Optional.ofNullable(ppSourceComment.getTree()).orElse(String.valueOf(ppSourceComment.getTreeCode()));
            ppComment.setTree(str + ":" + (maxTreeCode + 1));
        }

        ppComment.setFromUid(ShiroUtils.getAppUserId());
        ppComment.setCreateTime(DateUtils.getNowDate());
        ppCommentMapper.insertPpComment(ppComment);
        threadPoolTaskExecutor.execute(() -> {
            if (StringUtils.isNotBlank(ppComment.getFileUrl())) {
                String[] files = ppComment.getFileUrl().split(",");
                for (int i = 0; i < files.length; i++) {
                    PpFiles ppFiles = new PpFiles();
                    ppFiles.setFileUrl(files[i]);
                    ppFiles.setFileId(ppComment.getId());
                    ppFiles.setFileType(ppComment.getFileType());
                    ppFiles.setFileSource(FileSource.COMMENT.getValue());
                    ppFiles.setCreateTime(DateUtils.getNowDate());
                    ppFilesMapper.insertPpFiles(ppFiles);
                }
            }
            this.pushCommendMessage(ppDynamic, ppComment);
        });
        return AjaxResult.success();
    }

    /**
     * 推送评论
     */
    public void pushCommendMessage(PpDynamic dynamic, PpComment ppComment) {
        Map<String, String> params = new HashMap<>();
        if (redisTemplate.hasKey("pp:member:push:" + dynamic.getUserId().toString())) {
            String registerid = redisTemplate.opsForHash().get("pp:member:push:", dynamic.getUserId().toString()).toString();
            params.put("id", registerid);
            params.put("title", "你的好友刚刚评论了你");
            //设置提示信息,内容是文章标题
            params.put("msg", ppComment.getComment());
            params.put("pushType", "pointToPoint");
            params.put("url", "/pages/friend/msg-comment/msg-comment?swapperIndex=1");
            redisTemplate.convertAndSend("pushIdentificationMessage", params);
        }
    }

    /**
     * 修改评论
     *
     * @param ppComment 评论
     * @return 结果
     */
    @Override
    public int updatePpComment(PpComment ppComment) {
        ppComment.setUpdateTime(DateUtils.getNowDate());
        return ppCommentMapper.updatePpComment(ppComment);
    }

    /**
     * 删除评论对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePpCommentByIds(String ids) {
        return ppCommentMapper.deletePpCommentByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除评论信息
     *
     * @param id 评论ID
     * @return 结果
     */
    @Override
    public int deletePpCommentById(Long id) {
        return ppCommentMapper.deletePpCommentById(id);
    }

    /**
     * 查询动态下面所有评论
     */
    @Override
    public List<PpComment> selectPpCommentPllist(PpComment ppComment) {
        ppComment.setType(1);
        //获取所有评论列表
        List<PpComment> ppCommentList = ppCommentMapper.selectPpCommentPllist(ppComment);
        ppCommentList.parallelStream().forEach(p -> {
            //获取评论下面的回复数量
            Integer count = ppCommentMapper.selectPpCommentPlCount(p);
            p.setCommentNum(count);
            //查询评论的文件内容
            List<PpFiles> ppFiles = ppFilesMapper.selectPpFilesByFileIdAndFileSourceAll(p.getId(), FileSource.COMMENT.getValue());
            p.setPpFilesList(ppFiles);
            //查询评论下的回复内容
            p.setType(FileSource.COMMENT.getValue());
            List<Map> commentList = ppCommentMapper.selectPpCommentUnDerList(p);
            commentList.stream().forEach(comment -> {
                List<PpFiles> commentFiles = ppFilesMapper.selectPpFilesByFileIdAndFileSourceAll(Long.valueOf(comment.get("id").toString()), FileSource.COMMENT.getValue());
                comment.put("ppFilesList", commentFiles);
            });
            p.setCommentList(commentList);
        });
        return ppCommentList;
    }

    /**
     * 别人评论我的
     *
     * @param userId
     */
    @Override
    public List<PpComment> otherComment(Long userId) {
        List<PpComment> ppComments = ppCommentMapper.otherComment(userId);
        //修改为已读
        ppComments.parallelStream().forEach(ppComment -> {
            PpFiles ppFiles = ppFilesMapper.selectPpFilesByFileIdAndFileSourceLimitOne(ppComment.getDynamicId(),FileSource.DYNAMIC.getValue());
            if (Optional.ofNullable(ppFiles).isPresent()){
                ppComment.setFileUrl(ppFiles.getFileUrl());
                ppComment.setFileType(ppFiles.getFileType());
            }
            ppComment.setIsLooked(1);
            ppCommentMapper.updatePpComment(ppComment);
        });
        return ppComments;
    }
}
