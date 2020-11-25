package com.pengpeng.v4.service.feedback.impl;

import com.pengpeng.common.core.text.Convert;
import com.pengpeng.common.enums.FileSource;
import com.pengpeng.common.utils.DateUtils;
import com.pengpeng.common.utils.StringUtils;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.mapper.feedback.PpFeedbackMapper;
import com.pengpeng.v4.mapper.files.PpFilesMapper;
import com.pengpeng.v4.pojo.feedback.PpFeedback;
import com.pengpeng.v4.pojo.files.PpFiles;
import com.pengpeng.v4.service.feedback.IPpFeedbackService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

/**
 * 用户意见反馈Service业务层处理
 *
 * @author ruoyi
 * @date 2019-12-10
 */
@SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
@Service
@Slf4j
public class PpFeedbackServiceImpl implements IPpFeedbackService {
    @Autowired
    private PpFeedbackMapper ppFeedbackMapper;

    @Autowired
    private PpFilesMapper ppFilesMapper;

    /**
     * 查询用户意见反馈
     *
     * @param id 用户意见反馈ID
     * @return 用户意见反馈
     */
    @Override
    public PpFeedback selectPpFeedbackById(Long id) {
        return ppFeedbackMapper.selectPpFeedbackById(id);
    }

    /**
     * 查询用户意见反馈列表
     *
     * @param ppFeedback 用户意见反馈
     * @return 用户意见反馈
     */
    @Override
    public List<PpFeedback> selectPpFeedbackList(PpFeedback ppFeedback) {
        return ppFeedbackMapper.selectPpFeedbackList(ppFeedback);
    }

    /**
     * 新增用户意见反馈
     *
     * @param ppFeedback 用户意见反馈
     * @return 结果
     */
    @Override
    @Transactional(rollbackFor = Exception.class)
    public int insertPpFeedback(PpFeedback ppFeedback) {

        ppFeedback.setUserId(ShiroUtils.getAppUserId());
        ppFeedback.setFeedbackTime(DateUtils.getNowDate());
        ppFeedbackMapper.insertPpFeedback(ppFeedback);
        if (StringUtils.isNotBlank(ppFeedback.getFiles())) {
            String[] files = ppFeedback.getFiles().split(",");
            for (int i = 0; i < files.length; i++) {
                PpFiles ppFiles = new PpFiles();
                ppFiles.setFileId(ppFeedback.getId());
                ppFiles.setFileUrl(files[i]);
                ppFiles.setFileType(1);
                ppFiles.setFileSource(FileSource.FEED_BACK.getValue());
                ppFiles.setCreateTime(DateUtils.getNowDate());
                ppFilesMapper.insertPpFiles(ppFiles);
            }
        }
        return 1;
    }

    /**
     * 修改用户意见反馈
     *
     * @param ppFeedback 用户意见反馈
     * @return 结果
     */
    @Override
    public int updatePpFeedback(PpFeedback ppFeedback) {
        return ppFeedbackMapper.updatePpFeedback(ppFeedback);
    }

    /**
     * 删除用户意见反馈对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePpFeedbackByIds(String ids) {
        return ppFeedbackMapper.deletePpFeedbackByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除用户意见反馈信息
     *
     * @param id 用户意见反馈ID
     * @return 结果
     */
    @Override
    public int deletePpFeedbackById(Long id) {
        return ppFeedbackMapper.deletePpFeedbackById(id);
    }

    /**
     * 后台查询
     *
     * @param ppFeedback
     */
    @Override
    public List<PpFeedback> backgroundList(PpFeedback ppFeedback) {
        return ppFeedbackMapper.backgroundList(ppFeedback);
    }

    /**
     * 后台删除 多表关联删除 批量删除
     *
     * @param ids
     */
    @Override
    public int backgroundDeleteByIds(String ids) {
        return ppFeedbackMapper.backgroundDeleteByIds(Convert.toStrArray(ids));
    }


}
