package com.pengpeng.v4.pojo.income;

import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import com.pengpeng.v4.pojo.member.PpMember;
import lombok.Data;
import lombok.ToString;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 用户收入对象 pp_income
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@Data
@ToString
public class PpIncome extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 收入记录主键 */
    private Long id;

    /** 用户id */
    @Excel(name = "用户id")
    private Long userId;

    private String userName;

    /** 赠送人id */
    @Excel(name = "赠送人id")
    private Long presenterId;

    /** 赠送人姓名 */
    private String persentName;

    /** 赠送人礼物 */
    @Excel(name = "赠送人礼物")
    private String presenterGift;

    /** 收入金额 */
    @Excel(name = "收入金额")
    private BigDecimal incomeMoney;

    /** 收入时间 */
    @Excel(name = "收入时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date incomeTime;

    private Date beginIncomeTime;

    private Date endIncomeTime;

    /**
     * 用户表关联
     */
    private PpMember ppMember;

    /**
     * 礼物数量
     */
    private Long giftNumber;

}
