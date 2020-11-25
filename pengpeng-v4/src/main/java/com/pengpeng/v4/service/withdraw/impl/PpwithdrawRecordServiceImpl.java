package com.pengpeng.v4.service.withdraw.impl;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.List;

import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.text.Convert;
import com.pengpeng.common.utils.DateUtils;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.mapper.sysset.SysSetMapper;
import com.pengpeng.v4.mapper.withdraw.PpwithdrawRecordMapper;
import com.pengpeng.v4.pojo.sysset.SysSet;
import com.pengpeng.v4.pojo.withdraw.PpwithdrawRecord;
import com.pengpeng.v4.service.withdraw.IPpwithdrawRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import static com.pengpeng.common.core.domain.AjaxResult.error;
import static com.pengpeng.common.core.domain.AjaxResult.success;

/**
 * 用户提现记录Service业务层处理
 *
 * @author ruoyi
 * @date 2019-12-18
 */
@Service
public class PpwithdrawRecordServiceImpl implements IPpwithdrawRecordService {
    @Autowired
    private PpwithdrawRecordMapper ppwithdrawRecordMapper;

    @Autowired
    private SysSetMapper sysSetMapper;

    /**
     * 查询用户提现记录
     *
     * @param withdrawId 用户提现记录ID
     * @return 用户提现记录
     */
    @Override
    public PpwithdrawRecord selectPpwithdrawRecordById(Long withdrawId) {
        return ppwithdrawRecordMapper.selectPpwithdrawRecordById(withdrawId);
    }

    /**
     * 查询用户提现记录列表
     *
     * @param ppwithdrawRecord 用户提现记录
     * @return 用户提现记录
     */
    @Override
    public List<PpwithdrawRecord> selectPpwithdrawRecordList(PpwithdrawRecord ppwithdrawRecord) {
        return ppwithdrawRecordMapper.selectPpwithdrawRecordList(ppwithdrawRecord);
    }

    /**
     * 新增用户提现记录
     *
     * @param ppwithdrawRecord 用户提现记录
     * @return 结果
     */
    @Override
    @Transactional(rollbackFor = Exception.class)
    public AjaxResult insertPpwithdrawRecord(PpwithdrawRecord ppwithdrawRecord) {
        SysSet sysSet = sysSetMapper.selectSet();
        //获取当前几号
        int currentTime = Calendar.getInstance().get(Calendar.DAY_OF_MONTH);
        boolean flag = currentTime >= sysSet.getWithdrawStar() && currentTime <= sysSet.getWithdrawOver();
        if (!flag) {
            return error("当前提现日期不在指定范围内");
        }
        if (new BigDecimal(ppwithdrawRecord.getWithdrawGold()).compareTo(sysSet.getWithdrawLowest()) == -1) {
            return error("提现金额小于" + sysSet.getWithdrawLowest());
        }
        ppwithdrawRecord.setUserId(ShiroUtils.getAppUserId());
        ppwithdrawRecord.setWithdrawTime(DateUtils.getNowDate());
        int result = ppwithdrawRecordMapper.insertPpwithdrawRecord(ppwithdrawRecord);
        return result > 0 ? success("提现申请成功") : error("提现申请失败");
    }

    /**
     * 修改用户提现记录
     *
     * @param ppwithdrawRecord 用户提现记录
     * @return 结果
     */
    @Override
    public int updatePpwithdrawRecord(PpwithdrawRecord ppwithdrawRecord) {
        return ppwithdrawRecordMapper.updatePpwithdrawRecord(ppwithdrawRecord);
    }

    /**
     * 删除用户提现记录对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePpwithdrawRecordByIds(String ids) {
        return ppwithdrawRecordMapper.deletePpwithdrawRecordByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除用户提现记录信息
     *
     * @param withdrawId 用户提现记录ID
     * @return 结果
     */
    @Override
    public int deletePpwithdrawRecordById(Long withdrawId) {
        return ppwithdrawRecordMapper.deletePpwithdrawRecordById(withdrawId);
    }
}
