package com.pengpeng.v4.service.withdraw;

import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.v4.pojo.withdraw.PpwithdrawRecord;

import java.util.List;

/**
 * 用户提现记录Service接口
 * 
 * @author ruoyi
 * @date 2019-12-18
 */
public interface IPpwithdrawRecordService
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
    public AjaxResult insertPpwithdrawRecord(PpwithdrawRecord ppwithdrawRecord);

    /**
     * 修改用户提现记录
     * 
     * @param ppwithdrawRecord 用户提现记录
     * @return 结果
     */
    public int updatePpwithdrawRecord(PpwithdrawRecord ppwithdrawRecord);

    /**
     * 批量删除用户提现记录
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpwithdrawRecordByIds(String ids);

    /**
     * 删除用户提现记录信息
     * 
     * @param withdrawId 用户提现记录ID
     * @return 结果
     */
    public int deletePpwithdrawRecordById(Long withdrawId);
}
