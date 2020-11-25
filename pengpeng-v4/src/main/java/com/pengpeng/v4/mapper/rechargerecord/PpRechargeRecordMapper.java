package com.pengpeng.v4.mapper.rechargerecord;

import com.pengpeng.v4.pojo.rechargerecord.PpRechargeRecord;

import java.util.List;

/**
 * 充值记录Mapper接口
 * 
 * @author pengpeng
 * @date 2019-12-21
 */
public interface PpRechargeRecordMapper 
{
    /**
     * 查询充值记录
     * 
     * @param id 充值记录ID
     * @return 充值记录
     */
    public PpRechargeRecord selectPpRechargeRecordById(Long id);

    /**
     * 查询充值记录列表
     * 
     * @param ppRechargeRecord 充值记录
     * @return 充值记录集合
     */
    public List<PpRechargeRecord> selectPpRechargeRecordList(PpRechargeRecord ppRechargeRecord);

    /**
     * 新增充值记录
     * 
     * @param ppRechargeRecord 充值记录
     * @return 结果
     */
    public int insertPpRechargeRecord(PpRechargeRecord ppRechargeRecord);

    /**
     * 修改充值记录
     * 
     * @param ppRechargeRecord 充值记录
     * @return 结果
     */
    public int updatePpRechargeRecord(PpRechargeRecord ppRechargeRecord);

    /**
     * 删除充值记录
     * 
     * @param id 充值记录ID
     * @return 结果
     */
    public int deletePpRechargeRecordById(Long id);

    /**
     * 批量删除充值记录
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpRechargeRecordByIds(String[] ids);

    PpRechargeRecord selectPpRechargeRecordByOrderSn(String orderSn);
}
