package com.pengpeng.v4.pojo.rechargerecord;

import lombok.Data;
import lombok.ToString;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

/**
 * 充值记录对象 pp_recharge_record
 * 
 * @author pengpeng
 * @date 2019-12-21
 */
@Data
@ToString
public class PpRechargeRecord extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long userId;

    /** 充值订单编号 */
    private String orderSn;

    /** 充值金额 */
    @Excel(name = "充值金额")
    private String rechargeMoney;

    /** 充值钻石数量 */
    @Excel(name = "充值钻石数量")
    private Integer rechargeDiamond;

    /** 充值时间 */
    @Excel(name = "充值时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date rechargeTime;

    /**
     * 充值类型 0-自动 1-手动
     */
    private Integer rechargeType;

    /**充值状态（0:充值失败 充值成功）*/
    private Integer rechargeStatus;

    /** 支付方式（1:支付宝  2：微信）*/
    private Integer payType;
}
