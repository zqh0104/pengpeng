package com.pengpeng.v4.service.appcomment.impl;

import com.pengpeng.common.core.text.Convert;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.mapper.appcomment.PpAppCommentMapper;
import com.pengpeng.v4.mapper.slide.PpSlideNumberMapper;
import com.pengpeng.v4.pojo.appcomment.PpAppComment;
import com.pengpeng.v4.pojo.slide.PpSlideNumber;
import com.pengpeng.v4.service.appcomment.IPpAppCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author pengpeng
 * @date 2020-01-07
 */
@Service
public class PpAppCommentServiceImpl implements IPpAppCommentService
{
    @Autowired
    private PpAppCommentMapper ppAppCommentMapper;

    @Autowired
    private ThreadPoolTaskExecutor threadPoolTaskExecutor;

    @Autowired
    private PpSlideNumberMapper ppSlideNumberMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public PpAppComment selectPpAppCommentById(Long id)
    {
        return ppAppCommentMapper.selectPpAppCommentById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param ppAppComment 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<PpAppComment> selectPpAppCommentList(PpAppComment ppAppComment)
    {
        return ppAppCommentMapper.selectPpAppCommentList(ppAppComment);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param ppAppComment 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertPpAppComment(PpAppComment ppAppComment) {
        //获取当前用户
        Long appUserId = ShiroUtils.getAppUserId();
        //获取当前用户的滑动次数
        PpSlideNumber ppSlideNumber = ppSlideNumberMapper.selectId(appUserId);
        //修改滑动次数
        threadPoolTaskExecutor.execute(() -> {
            //获取最大滑动次数
            Integer sum = 40;
            Long maximumSlideNumber = ppSlideNumber.getMaximumSlideNumber();
            if (maximumSlideNumber == null) {
                sum = maximumSlideNumber.intValue();
            } else {
                sum += maximumSlideNumber.intValue();
            }
            ppSlideNumberMapper.updateSlideNumber(appUserId, sum.longValue());
        });
        ppAppComment.setCommentId(appUserId);
        return ppAppCommentMapper.insertPpAppComment(ppAppComment);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param ppAppComment 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updatePpAppComment(PpAppComment ppAppComment)
    {
        return ppAppCommentMapper.updatePpAppComment(ppAppComment);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePpAppCommentByIds(String ids)
    {
        return ppAppCommentMapper.deletePpAppCommentByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deletePpAppCommentById(Long id)
    {
        return ppAppCommentMapper.deletePpAppCommentById(id);
    }

    /**
     * 用户评论
     *
     * @param userId
     */
    @Override
    public List<PpAppComment> selectUser(Long userId) {
        return ppAppCommentMapper.selectUser(userId);
    }
}
