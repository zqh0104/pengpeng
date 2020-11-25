package com.pengpeng.v4.mapper.withdraw;

import com.pengpeng.v4.pojo.withdraw.PpwithdrawRecord;

import java.util.List;

/**
 * 用户提现记录Mapper接口
 * 
 * @author ruoyi
 * @date 2019-12-18
 */
public interface PpwithdrawRecordMapper
{
    /**
     * 查询用户提现记录
     * 
     * @param withdrawId 用户提现记录ID
     * @return 用户提现记录
     */
    public PpwithdrawRecord selectPpwithdrawRecordById(Long withdrawId);

    /**
     * 查询用户提现记录列表
     * 
     * @param ppwithdrawRecord 用户提现记录
     * @return 用户提现记录集合
     */
    public List<PpwithdrawRecord> selectPpwithdrawRecordList(PpwithdrawRecord ppwithdrawRecord);

    /**
     * 新增用户提现记录
     * 
     * @param ppwithdrawRecord 用户提现记录
     * @return 结果
     */
    public int insertPpwithdrawRecord(PpwithdrawRecord ppwithdrawRecord);

    /**
     * 修改用户提现记录
     * 
     * @param ppwithdrawRecord 用户提现记录
     * @return 结果
     */
    public int updatePpwithdrawRecord(PpwithdrawRecord ppwithdrawRecord);

    /**
     * 删除用户提现记录
     * 
     * @param withdrawId 用户提现记录ID
     * @return 结果
     */
    public int deletePpwithdrawRecordById(Long withdrawId);

    /**
     * 批量删除用户提现记录
     * 
     * @param withdrawIds 需要删除的数据ID
     * @return 结果
     */
    public int deletePpwithdrawRecordByIds(String[] withdrawIds);
}
