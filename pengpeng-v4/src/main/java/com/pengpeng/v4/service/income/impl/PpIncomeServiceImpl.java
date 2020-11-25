package com.pengpeng.v4.service.income.impl;

import java.util.List;

import com.pengpeng.common.core.text.Convert;
import com.pengpeng.v4.mapper.income.PpIncomeMapper;
import com.pengpeng.v4.pojo.income.PpIncome;
import com.pengpeng.v4.service.income.IPpIncomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 用户收入Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
@Service
public class PpIncomeServiceImpl implements IPpIncomeService
{
    @Autowired
    private PpIncomeMapper ppIncomeMapper;

    /**
     * 查询用户收入
     * 
     * @param id 用户收入ID
     * @return 用户收入
     */
    @Override
    public PpIncome selectPpIncomeById(Long id)
    {
        return ppIncomeMapper.selectPpIncomeById(id);
    }

    /**
     * 查询用户收入列表
     * 
     * @param ppIncome 用户收入
     * @return 用户收入
     */
    @Override
    public List<PpIncome> selectPpIncomeList(PpIncome ppIncome)
    {
        return ppIncomeMapper.selectPpIncomeList(ppIncome);
    }

    /**
     * 新增用户收入
     * 
     * @param ppIncome 用户收入
     * @return 结果
     */
    @Override
    public int insertPpIncome(PpIncome ppIncome)
    {
        return ppIncomeMapper.insertPpIncome(ppIncome);
    }

    /**
     * 修改用户收入
     * 
     * @param ppIncome 用户收入
     * @return 结果
     */
    @Override
    public int updatePpIncome(PpIncome ppIncome)
    {
        return ppIncomeMapper.updatePpIncome(ppIncome);
    }

    /**
     * 删除用户收入对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePpIncomeByIds(String ids)
    {
        return ppIncomeMapper.deletePpIncomeByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除用户收入信息
     * 
     * @param id 用户收入ID
     * @return 结果
     */
    @Override
    public int deletePpIncomeById(Long id)
    {
        return ppIncomeMapper.deletePpIncomeById(id);
    }

    /**
     * 获取收入详情
     *
     * @param userId
     */
    @Override
    public List<PpIncome> selectIncomeUser(Long userId) {
        return ppIncomeMapper.selectIncomeUser(userId);
    }
}
