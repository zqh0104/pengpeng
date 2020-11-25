package com.pengpeng.v4.mapper.income;
import com.pengpeng.v4.pojo.income.PpIncome;

import java.util.List;

/**
 * 用户收入Mapper接口
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
public interface PpIncomeMapper 
{
    /**
     * 查询用户收入
     * 
     * @param id 用户收入ID
     * @return 用户收入
     */
    public PpIncome selectPpIncomeById(Long id);

    /**
     * 查询用户收入列表
     * 
     * @param ppIncome 用户收入
     * @return 用户收入集合
     */
    public List<PpIncome> selectPpIncomeList(PpIncome ppIncome);

    /**
     * 新增用户收入
     * 
     * @param ppIncome 用户收入
     * @return 结果
     */
    public int insertPpIncome(PpIncome ppIncome);

    /**
     * 修改用户收入
     * 
     * @param ppIncome 用户收入
     * @return 结果
     */
    public int updatePpIncome(PpIncome ppIncome);

    /**
     * 删除用户收入
     * 
     * @param id 用户收入ID
     * @return 结果
     */
    public int deletePpIncomeById(Long id);

    /**
     * 批量删除用户收入
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpIncomeByIds(String[] ids);

    /**
     * 获取收入详情
     */
    List<PpIncome> selectIncomeUser(Long userId);

    List<PpIncome> selectPpIncomeTew(PpIncome ppIncome);


}
