package com.pengpeng.v4.mapper.viporder;

import com.pengpeng.v4.pojo.viporder.PpVipOrder;

import java.util.List;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author pengpeng
 * @date 2019-12-23
 */
public interface PpVipOrderMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public PpVipOrder selectPpVipOrderById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param ppVipOrder 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<PpVipOrder> selectPpVipOrderList(PpVipOrder ppVipOrder);

    /**
     * 新增【请填写功能名称】
     * 
     * @param ppVipOrder 【请填写功能名称】
     * @return 结果
     */
    public int insertPpVipOrder(PpVipOrder ppVipOrder);

    /**
     * 修改【请填写功能名称】
     * 
     * @param ppVipOrder 【请填写功能名称】
     * @return 结果
     */
    public int updatePpVipOrder(PpVipOrder ppVipOrder);

    /**
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deletePpVipOrderById(Long id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpVipOrderByIds(String[] ids);

    /**
     * 通过用户查询用户的信息
     */
    List<PpVipOrder> selectUser(Long userId);

    /**
     * 订单查询
     */
    PpVipOrder selectOrderNumber(String orderNumber);


}
