package com.pengpeng.v4.service.rechargerecord.impl;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import com.pengpeng.common.utils.DateUtils;
import com.pengpeng.v4.mapper.member.PpMemberMapper;
import com.pengpeng.v4.mapper.rechargerecord.PpRechargeRecordMapper;
import com.pengpeng.v4.pojo.member.PpMember;
import com.pengpeng.v4.pojo.rechargerecord.PpRechargeRecord;
import com.pengpeng.v4.service.rechargerecord.IPpRechargeRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.pengpeng.common.core.text.Convert;
import org.springframework.transaction.annotation.Transactional;

/**
 * 充值记录Service业务层处理
 *
 * @author pengpeng
 * @date 2019-12-21
 */
@SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
@Service
public class PpRechargeRecordServiceImpl implements IPpRechargeRecordService {
    @Autowired
    private PpRechargeRecordMapper ppRechargeRecordMapper;

    @Autowired
    private PpMemberMapper ppMemberMapper;

    /**
     * 查询充值记录
     *
     * @param id 充值记录ID
     * @return 充值记录
     */
    @Override
    public PpRechargeRecord selectPpRechargeRecordById(Long id) {
        return ppRechargeRecordMapper.selectPpRechargeRecordById(id);
    }


    /**
     * 查询充值记录
     *
     * @param orderSn 充值记录ID
     * @return 充值记录
     */
    @Override
    public PpRechargeRecord selectPpRechargeRecordByOrderSn(String orderSn) {
        return ppRechargeRecordMapper.selectPpRechargeRecordByOrderSn(orderSn);
    }

    /**
     * 查询充值记录列表
     *
     * @param ppRechargeRecord 充值记录
     * @return 充值记录
     */
    @Override
    public List<PpRechargeRecord> selectPpRechargeRecordList(PpRechargeRecord ppRechargeRecord) {
        return ppRechargeRecordMapper.selectPpRechargeRecordList(ppRechargeRecord);
    }

    /**
     * 新增充值记录
     *
     * @param ppRechargeRecord 充值记录
     * @return 结果
     */
    @Override
    @Transactional(rollbackFor = Exception.class)
    public int insertPpRechargeRecord(PpRechargeRecord ppRechargeRecord) {
        ppRechargeRecord.setRechargeTime(DateUtils.getNowDate());
        ppRechargeRecord.setOrderSn(getOrdersn());
        int result = ppRechargeRecordMapper.insertPpRechargeRecord(ppRechargeRecord);
        //更改余额
        PpMember ppMember = ppMemberMapper.selectPpMemberById(ppRechargeRecord.getUserId());
        ppMember.setBalance(ppMember.getBalance() + ppRechargeRecord.getRechargeDiamond());
        ppMemberMapper.updatePpMember(ppMember);
        return result;
    }

    /**
     * 修改充值记录
     *
     * @param ppRechargeRecord 充值记录
     * @return 结果
     */
    @Override
    public int updatePpRechargeRecord(PpRechargeRecord ppRechargeRecord) {
        return ppRechargeRecordMapper.updatePpRechargeRecord(ppRechargeRecord);
    }

    /**
     * 删除充值记录对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePpRechargeRecordByIds(String ids) {
        return ppRechargeRecordMapper.deletePpRechargeRecordByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除充值记录信息
     *
     * @param id 充值记录ID
     * @return 结果
     */
    @Override
    public int deletePpRechargeRecordById(Long id) {
        return ppRechargeRecordMapper.deletePpRechargeRecordById(id);
    }

    public String getOrdersn() {
        return "DD" + LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd")) + System.currentTimeMillis();
    }
}
