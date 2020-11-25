package com.pengpeng.v4.service.dynamic.impl;

import com.pengpeng.common.core.text.Convert;
import com.pengpeng.common.enums.FileSource;
import com.pengpeng.common.utils.DateUtils;
import com.pengpeng.common.utils.StringUtils;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.mapper.dynamic.PpCommendRecordMapper;
import com.pengpeng.v4.mapper.dynamic.PpDynamicMapper;
import com.pengpeng.v4.mapper.files.PpFilesMapper;
import com.pengpeng.v4.pojo.dynamic.PpCommendRecord;
import com.pengpeng.v4.pojo.dynamic.PpDynamic;
import com.pengpeng.v4.pojo.files.PpFiles;
import com.pengpeng.v4.service.dynamic.IPpCommendRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * 点赞记录Service业务层处理
 *
 * @author ruoyi
 * @date 2019-12-10
 */
@Service
public class PpCommendRecordServiceImpl implements IPpCommendRecordService {
    @Autowired
    private PpCommendRecordMapper ppCommendRecordMapper;

    @Autowired
    private PpDynamicMapper ppDynamicMapper;

    @Autowired
    private PpFilesMapper ppFilesMapper;

    @Autowired
    private ThreadPoolTaskExecutor threadPoolTaskExecutor;

    @Autowired
    private RedisTemplate redisTemplate;

    /**
     * 查询点赞记录
     *
     * @param id 点赞记录ID
     * @return 点赞记录
     */
    @Override
    public PpCommendRecord selectPpCommendRecordById(Long id) {
        return ppCommendRecordMapper.selectPpCommendRecordById(id);
    }

    /**
     * 查询点赞记录列表
     *
     * @param ppCommendRecord 点赞记录
     * @return 点赞记录
     */
    @Override
    @Transactional(rollbackFor = Exception.class)
    public List<PpCommendRecord> selectPpCommendRecordList(PpCommendRecord ppCommendRecord) {
        ppCommendRecord.setToUid(ShiroUtils.getAppUserId());
        ppCommendRecord.setIsRead(false);
        ppCommendRecord.setStatus(1);
        List<PpCommendRecord> resultList = ppCommendRecordMapper.selectPpCommendRecordList(ppCommendRecord);
        resultList.parallelStream().forEach(record -> {
            if (StringUtils.isNotBlank(record.getHeadImage())) {
                String str = record.getHeadImage().split(",")[0];
                record.setHeadImage(str);
            }
            PpFiles ppFiles = ppFilesMapper.selectPpFilesByFileIdAndFileSourceLimitOne(record.getDynamicId(), FileSource.DYNAMIC.getValue());
            if (Optional.ofNullable(ppFiles).isPresent() && StringUtils.isNotBlank(ppFiles.getFileUrl())) {
                record.setFileUrl(ppFiles.getFileUrl());
                record.setFileType(ppFiles.getFileType());
            }
        });
        //修改为已读
        if (resultList.size() > 0) {
            threadPoolTaskExecutor.execute(() ->
                    ppCommendRecordMapper.updatePpCommendRecordByIds(resultList
                            .parallelStream()
                            .map(PpCommendRecord::getId)
                            .collect(Collectors.toList()))
            );
        }
        return resultList;
    }

    /**
     * pc查询所有记录列表
     *
     * @param ppCommendRecord 点赞记录
     * @return 点赞记录集合
     */
    @Override
    public List<PpCommendRecord> selectAllPpCommendRecordList(PpCommendRecord ppCommendRecord) {
        List<PpCommendRecord> resultList = ppCommendRecordMapper.selectAllPpCommendRecordList(ppCommendRecord);
        return resultList;
    }

    /**
     * 新增点赞记录
     *
     * @param ppCommendRecord 点赞记录
     * @return 结果
     */
    @Override
    @Transactional(rollbackFor = Exception.class)
    public int insertPpCommendRecord(PpCommendRecord ppCommendRecord) {
        PpDynamic dynamic = ppDynamicMapper.selectPpDynamicById(ppCommendRecord.getDynamicId());
        if (!Optional.ofNullable(dynamic).isPresent()) {
            return 0;
        }
        //判断用户是否已经点过赞
        PpCommendRecord record = ppCommendRecordMapper.selectPpCommendRecordByDynamicIdAUserId(dynamic.getId(), ShiroUtils.getAppUserId());
        if (Optional.ofNullable(record).isPresent()) {
            Integer status = record.getStatus() == 0 ? 1 : 0;
            record.setStatus(status);
            threadPoolTaskExecutor.execute(() -> {
                if (status == 1) {
                    this.pushCommendMessage(dynamic, ppCommendRecord);
                }
                ppDynamicMapper.updatePpDynamicCommondNum(dynamic.getId(), status);
            });
            return ppCommendRecordMapper.updatePpCommendRecord(record);
        } else {
            ppCommendRecord.setCreateTime(DateUtils.getNowDate());
            ppCommendRecord.setUserId(ShiroUtils.getAppUserId());
            ppCommendRecord.setToUid(dynamic.getUserId());
            threadPoolTaskExecutor.execute(() -> {
                ppDynamicMapper.updatePpDynamicCommondNum(dynamic.getId(), 1);
                this.pushCommendMessage(dynamic, ppCommendRecord);
            });
            return ppCommendRecordMapper.insertPpCommendRecord(ppCommendRecord);
        }
    }

    /**
     * 推送点赞消息
     */
    public void pushCommendMessage(PpDynamic dynamic, PpCommendRecord ppCommendRecord) {
        Map<String, String> params = new HashMap<>();
        if (redisTemplate.hasKey("pp:member:push:" + dynamic.getUserId().toString())) {
            String registerid = redisTemplate.opsForHash().get("pp:member:push:", dynamic.getUserId().toString()).toString();
            params.put("id", registerid);
            params.put("title", "有人给你点赞了");
            //设置提示信息,内容是文章标题
            params.put("msg", "您刚才发布的动态" + dynamic.getDynamicContent() + "被点赞了");
            params.put("pushType", "pointToPoint");
            params.put("url", "/pages/friend/msg-comment/msg-comment?swapperIndex=2");
            redisTemplate.convertAndSend("pushIdentificationMessage", params);
        }
    }

    /**
     * 修改点赞记录
     *
     * @param ppCommendRecord 点赞记录
     * @return 结果
     */
    @Override
    public int updatePpCommendRecord(PpCommendRecord ppCommendRecord) {
        ppCommendRecord.setUpdateTime(DateUtils.getNowDate());
        return ppCommendRecordMapper.updatePpCommendRecord(ppCommendRecord);
    }

    /**
     * 删除点赞记录对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePpCommendRecordByIds(String ids) {
        return ppCommendRecordMapper.deletePpCommendRecordByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除点赞记录信息
     *
     * @param id 点赞记录ID
     * @return 结果
     */
    @Override
    public int deletePpCommendRecordById(Long id) {
        return ppCommendRecordMapper.deletePpCommendRecordById(id);
    }
}
