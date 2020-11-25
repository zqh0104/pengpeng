package com.pengpeng.v4.service.viporder.impl;

import java.util.List;

import com.pengpeng.v4.mapper.viporder.PpVipOrderMapper;
import com.pengpeng.v4.pojo.viporder.PpVipOrder;
import com.pengpeng.v4.service.viporder.IPpVipOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.pengpeng.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author pengpeng
 * @date 2019-12-23
 */
@SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
@Service
public class PpVipOrderServiceImpl implements IPpVipOrderService
{
    @Autowired
    private PpVipOrderMapper ppVipOrderMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public PpVipOrder selectPpVipOrderById(Long id)
    {
        return ppVipOrderMapper.selectPpVipOrderById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param ppVipOrder 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<PpVipOrder> selectPpVipOrderList(PpVipOrder ppVipOrder)
    {
        return ppVipOrderMapper.selectPpVipOrderList(ppVipOrder);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param ppVipOrder 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertPpVipOrder(PpVipOrder ppVipOrder)
    {
        return ppVipOrderMapper.insertPpVipOrder(ppVipOrder);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param ppVipOrder 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updatePpVipOrder(PpVipOrder ppVipOrder)
    {
        return ppVipOrderMapper.updatePpVipOrder(ppVipOrder);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePpVipOrderByIds(String ids)
    {
        return ppVipOrderMapper.deletePpVipOrderByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deletePpVipOrderById(Long id)
    {
        return ppVipOrderMapper.deletePpVipOrderById(id);
    }

    /**
     * 订单查询
     *
     * @param orderNumber
     */
    @Override
    public PpVipOrder selectOrderNumber(String orderNumber) {
        return ppVipOrderMapper.selectOrderNumber(orderNumber);
    }
}
