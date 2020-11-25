package com.pengpeng.v4.service.dynamic.impl;

import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.text.Convert;
import com.pengpeng.common.enums.FileSource;
import com.pengpeng.common.json.JSONObject;
import com.pengpeng.common.utils.DateUtils;
import com.pengpeng.common.utils.StringUtils;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.mapper.comment.PpCommentMapper;
import com.pengpeng.v4.mapper.dynamic.PpCommendRecordMapper;
import com.pengpeng.v4.mapper.dynamic.PpDynamicMapper;
import com.pengpeng.v4.mapper.files.PpFilesMapper;
import com.pengpeng.v4.mapper.like.PpUserFocusMapper;
import com.pengpeng.v4.pojo.comment.PpComment;
import com.pengpeng.v4.pojo.dynamic.PpCommendRecord;
import com.pengpeng.v4.pojo.dynamic.PpDynamic;
import com.pengpeng.v4.pojo.files.PpFiles;
import com.pengpeng.v4.pojo.like.PpUserFocus;
import com.pengpeng.v4.pojo.member.PpMember;
import com.pengpeng.v4.service.dynamic.IPpDynamicService;
import com.pengpeng.v4.service.like.IPpUserFocusService;
import org.apache.commons.collections4.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;
import java.util.stream.Collectors;

/**
 * 发布动态Service业务层处理
 *
 * @author ruoyi
 * @date 2019-12-10
 */
@Service
public class PpDynamicServiceImpl implements IPpDynamicService {
    @Autowired
    private PpDynamicMapper ppDynamicMapper;

    @Autowired
    private PpFilesMapper ppFilesMapper;

    @Autowired
    private PpUserFocusMapper ppUserFocusMapper;

    @Autowired
    private PpCommendRecordMapper ppCommendRecordMapper;

    @Autowired
    private ThreadPoolTaskExecutor threadPoolTaskExecutor;

    @Autowired
    private PpCommentMapper ppCommentMapper;

    @Autowired
    private IPpUserFocusService ppUserFocusService;

    /**
     * 查询发布动态
     *
     * @param id 发布动态ID
     * @return 发布动态
     */
    @Override
    public PpDynamic selectPpDynamicById(Long id) {
        Long userId = ShiroUtils.getAppUserId();
        PpDynamic ppDynamic = ppDynamicMapper.selectPpDynamicById(id);
        PpCommendRecord ppCommendRecord = new PpCommendRecord();
        //获取点赞详情
        ppCommendRecord.setDynamicId(id);
        ppCommendRecord.setStatus(1);
        List<PpCommendRecord> ppCommendRecords = ppCommendRecordMapper.selectAllPpCommendRecordList(ppCommendRecord);
        ppDynamic.setCommendRecordList(ppCommendRecords);
        PpComment ppComment = new PpComment();
        ppComment.setDynamicId(id);
        ppDynamic.setCommentList(ppCommentMapper.selectPpCommentPllist(ppComment));
        //设置自己是否点过赞
        ppDynamic.setIsLike(ppDynamic.getCommendRecordList()
                .stream()
                .filter(record -> userId.equals(record.getUserId()) && record.getStatus().equals(1))
                .map(PpCommendRecord::getUserId)
                .collect(Collectors.toSet())
                .contains(userId));
        List<PpFiles> ppFiles = ppFilesMapper.selectPpFilesByFileIdAndFileSourceAll(ppDynamic.getId(), FileSource.DYNAMIC.getValue());
        ppDynamic.setFilesList(ppFiles);
        return ppDynamic;
    }

    /**
     * 查询发布动态列表
     *
     * @param ppDynamic 发布动态
     * @return 发布动态
     */
    @Override
    public List<PpDynamic> selectPpDynamicList(PpDynamic ppDynamic) {
        ppDynamic.setStatus(1);
        List<PpDynamic> ppDynamicList = ppDynamicMapper.selectPpDynamicList(ppDynamic);
        ppDynamicList.parallelStream().forEach(p -> {
            List<PpFiles> ppFilesList = ppFilesMapper.selectPpFilesByFileIdAndFileSourceAll(p.getId(), FileSource.DYNAMIC.getValue());
            p.setFilesList(ppFilesList);
        });
        return ppDynamicList;
    }

    /**
     * 新增发布动态
     *
     * @param ppDynamic 发布动态
     * @return 结果
     */
    @Override
    @Transactional(rollbackFor = Exception.class)
    public int insertPpDynamic(PpDynamic ppDynamic) {
        ppDynamic.setCreateTime(DateUtils.getNowDate());
        ppDynamic.setUserId(ShiroUtils.getAppUserId());
        int result = ppDynamicMapper.insertPpDynamic(ppDynamic);
        if (StringUtils.isNotBlank(ppDynamic.getFileUrl())) {
            List<String> filesList = Arrays.asList(ppDynamic.getFileUrl().split(","));
            filesList.stream().forEach(fileUrl -> {
                PpFiles ppFiles = new PpFiles();
                ppFiles.setFileUrl(fileUrl);
                ppFiles.setFileId(ppDynamic.getId());
                ppFiles.setFileType(ppDynamic.getFileType());
                ppFiles.setFileSource(1);
                ppFiles.setCreateTime(DateUtils.getNowDate());
                ppFilesMapper.insertPpFiles(ppFiles);
            });
        }
        return result;
    }

    /**
     * 修改发布动态
     *
     * @param ppDynamic 发布动态
     * @return 结果
     */
    @Override
    public int updatePpDynamic(PpDynamic ppDynamic) {
        ppDynamic.setUpdateTime(DateUtils.getNowDate());
        return ppDynamicMapper.updatePpDynamic(ppDynamic);
    }

    /**
     * 删除发布动态对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePpDynamicByIds(String ids) {
        return ppDynamicMapper.deletePpDynamicByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除发布动态信息
     *
     * @param id 发布动态ID
     * @return 结果
     */
    @Override
    public int deletePpDynamicById(Long id) {
        return ppDynamicMapper.deletePpDynamicById(id);
    }

    /**
     * 查询好友发布动态列表
     *
     * @param ppDynamic 发布动态
     * @return 发布动态集合
     */
    @Override
    public List<PpDynamic> selectPpDynamicFriendsList(PpDynamic ppDynamic) {
        Long userId = ShiroUtils.getAppUserId();
        List<PpUserFocus> ppUserFocusList = ppUserFocusMapper.selectEachFocusList(userId);
        //得到所有朋友
        //获取当前用户的信息
        List<Long> friendsList = new ArrayList();
        List<PpMember> ppMembers = ppUserFocusService.friendList();
        for (PpMember ppMember : ppMembers) {
            friendsList.add(ppMember.getId());
        }
       /* Set<Long> userASet = ppUserFocusList.parallelStream().map(PpUserFocus::getUseraId).collect(Collectors.toSet());
        Set<Long> userBSet = ppUserFocusList.parallelStream().map(PpUserFocus::getUserbId).collect(Collectors.toSet());
        userASet.addAll(userBSet);
        List<Long> friendsList = new ArrayList(userASet);*/
        List<PpDynamic> friendsDynamicList = new ArrayList<>();
        //判断集合不为null
        if (CollectionUtils.isNotEmpty(friendsList)) {
            ppDynamic.setUserId(userId);
            ppDynamic.setStatus(1);
            //只展示好友可见的消息
            ppDynamic.setIsVisible(1);
            //开启分页
            BaseController.startPage();
            //动态列表
            friendsDynamicList = ppDynamicMapper.selectPpDynamicForFriendsList(userId, ppDynamic, friendsList);
            friendsDynamicList.parallelStream().forEach(p -> {
                PpCommendRecord ppCommendRecord = new PpCommendRecord();
                PpComment ppComment = new PpComment();
                //获取点赞详情
                ppCommendRecord.setDynamicId(p.getId());
                ppCommendRecord.setStatus(1);
                //点赞用户列表
                List<PpCommendRecord> commendRecords = ppCommendRecordMapper.selectAllPpCommendRecordList(ppCommendRecord);
                p.setCommendRecordList(commendRecords);
                //设置自己是否点过赞
                List<PpCommendRecord> myRecord = commendRecords.stream().filter(record -> userId.equals(record.getUserId())).collect(Collectors.toList());
                p.setIsLike(CollectionUtils.isNotEmpty(myRecord));
                //如果自己点过赞 排序给自己放到点赞列表最后一个
                if (p.getIsLike()) {
                    List<PpCommendRecord> commendOtherRecords = commendRecords.stream().filter(record -> !userId.equals(record.getUserId())).collect(Collectors.toList());
                    commendOtherRecords.add(myRecord.get(0));
                    p.setCommendRecordList(commendOtherRecords);
                }
                //获取评论列表
                ppComment.setDynamicId(p.getId());
                p.setCommentList(ppCommentMapper.selectPpCommentPllist(ppComment));
                p.setFilesList(ppFilesMapper.selectPpFilesByFileIdAndFileSourceAll(p.getId(), FileSource.DYNAMIC.getValue()));
            });
        }
        return friendsDynamicList;
    }

    /**
     * 动态页面消息红点
     *
     * @return
     */
    @Override
    public JSONObject unreadMessage() {
        Long userId = ShiroUtils.getAppUserId();
        List<PpComment> ppComments = ppCommentMapper.otherComment(userId);
        PpCommendRecord ppCommendRecord = new PpCommendRecord();
        ppCommendRecord.setToUid(userId);
        ppCommendRecord.setIsRead(false);
        ppCommendRecord.setStatus(1);
        List<PpCommendRecord> resultList = ppCommendRecordMapper.selectPpCommendRecordList(ppCommendRecord);
        JSONObject resultJson = new JSONObject();
        boolean flag = CollectionUtils.isNotEmpty(ppComments) || CollectionUtils.isNotEmpty(resultList);
        resultJson.put("show", flag ? true : false);
        return resultJson;
    }

}
