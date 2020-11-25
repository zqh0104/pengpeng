package com.pengpeng.v4.mapper.slide;

import com.pengpeng.v4.pojo.slide.PpSlideNumber;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 * 用户滑动记录Mapper接口
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
public interface PpSlideNumberMapper 
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
     * 删除用户滑动记录
     * 
     * @param id 用户滑动记录ID
     * @return 结果
     */
    public int deletePpSlideNumberById(Long id);

    /**
     * 批量删除用户滑动记录
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpSlideNumberByIds(String[] ids);

    /**
     * 通过用户id获取对应的数据
     */
    PpSlideNumber selectId(@Param("userId") Long userId);

    /**
     * 通过用户id修改用户信息
     */
    void updateSlideNumber(@Param("userId")Long userId, @Param("maximumSlideNumber") Long maximumSlideNumber);

    /**
     * 获取用户的当前滑动次数
     */
    PpSlideNumber selectUserById(Long userId);


}
