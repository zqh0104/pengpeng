package com.pengpeng.v4.service.rechargespec;

import com.pengpeng.v4.pojo.rechargespec.PpRechargeSpec;

import java.util.List;

/**
 * 充值规格Service接口
 * 
 * @author ruoyi
 * @date 2019-12-19
 */
public interface IPpRechargeSpecService 
{
    /**
     * 查询充值规格
     * 
     * @param id 充值规格ID
     * @return 充值规格
     */
    public PpRechargeSpec selectPpRechargeSpecById(Long id);

    /**
     * 查询充值规格列表
     * 
     * @param ppRechargeSpec 充值规格
     * @return 充值规格集合
     */
    public List<PpRechargeSpec> selectPpRechargeSpecList(PpRechargeSpec ppRechargeSpec);

    /**
     * 新增充值规格
     * @param ppRechargeSpec 充值规格
     * @return 结果
     */
    public int insertPpRechargeSpec(PpRechargeSpec ppRechargeSpec);

    /**
     * 修改充值规格
     * 
     * @param ppRechargeSpec 充值规格
     * @return 结果
     */
    public int updatePpRechargeSpec(PpRechargeSpec ppRechargeSpec);

    /**
     * 批量删除充值规格
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpRechargeSpecByIds(String ids);

    /**
     * 删除充值规格信息
     * 
     * @param id 充值规格ID
     * @return 结果
     */
    public int deletePpRechargeSpecById(Long id);
}
