package com.pengpeng.v4.service.feedback;


import com.pengpeng.v4.pojo.feedback.PpFeedback;

import java.util.List;

/**
 * 用户意见反馈Service接口
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
public interface IPpFeedbackService 
{
    /**
     * 查询用户意见反馈
     * 
     * @param id 用户意见反馈ID
     * @return 用户意见反馈
     */
    public PpFeedback selectPpFeedbackById(Long id);

    /**
     * 查询用户意见反馈列表
     * 
     * @param ppFeedback 用户意见反馈
     * @return 用户意见反馈集合
     */
    public List<PpFeedback> selectPpFeedbackList(PpFeedback ppFeedback);

    /**
     * 新增用户意见反馈
     * 
     * @param ppFeedback 用户意见反馈
     * @return 结果
     */
    public int insertPpFeedback(PpFeedback ppFeedback);

    /**
     * 修改用户意见反馈
     * 
     * @param ppFeedback 用户意见反馈
     * @return 结果
     */
    public int updatePpFeedback(PpFeedback ppFeedback);

    /**
     * 批量删除用户意见反馈
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpFeedbackByIds(String ids);

    /**
     * 删除用户意见反馈信息
     * 
     * @param id 用户意见反馈ID
     * @return 结果
     */
    public int deletePpFeedbackById(Long id);

    /**
     * 后台查询
     */
    List<PpFeedback> backgroundList(PpFeedback ppFeedback);

    /**
     * 后台删除 多表关联删除 批量删除
     */
    int backgroundDeleteByIds(String ids);
}
