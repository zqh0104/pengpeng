package com.pengpeng.v4.service.slide;

import com.pengpeng.v4.pojo.slide.PpSlideNumber;

import java.util.List;

/**
 * 用户滑动记录Service接口
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
public interface IPpSlideNumberService 
{
    /**
     * 查询用户滑动记录
     * 
     * @param id 用户滑动记录ID
     * @return 用户滑动记录
     */
    public PpSlideNumber selectPpSlideNumberById(Long id);

    /**
     * 查询用户滑动记录列表
     * 
     * @param ppSlideNumber 用户滑动记录
     * @return 用户滑动记录集合
     */
    public List<PpSlideNumber> selectPpSlideNumberList(PpSlideNumber ppSlideNumber);

    /**
     * 新增用户滑动记录
     * 
     * @param ppSlideNumber 用户滑动记录
     * @return 结果
     */
    public int insertPpSlideNumber(PpSlideNumber ppSlideNumber);

    /**
     * 修改用户滑动记录
     * 
     * @param ppSlideNumber 用户滑动记录
     * @return 结果
     */
    public int updatePpSlideNumber(PpSlideNumber ppSlideNumber);

    /**
     * 批量删除用户滑动记录
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpSlideNumberByIds(String ids);

    /**
     * 删除用户滑动记录信息
     * 
     * @param id 用户滑动记录ID
     * @return 结果
     */
    public int deletePpSlideNumberById(Long id);

    /**
     * 获取用户的当前滑动次数
     */
    PpSlideNumber selectUserById(Long userId);

    int shareAddNum();
}
