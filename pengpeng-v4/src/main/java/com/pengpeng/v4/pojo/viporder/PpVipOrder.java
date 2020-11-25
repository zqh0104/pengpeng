package com.pengpeng.v4.pojo.viporder;

import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import lombok.Data;
import lombok.ToString;

import java.util.Date;

/**
 * 【请填写功能名称】对象 pp_vip_order
 * 
 * @author pengpeng
 * @date 2019-12-23
 */
@Data
@ToString
public class PpVipOrder extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long memberId;

    /** 购买时间 */
    @Excel(name = "购买时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date buyTime;

    /** 失效时间 */
    @Excel(name = "失效时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date loseTime;

    private Date createTime;

    /**
     * 订单号
     */
    private String orderNumber;

    /**
     * 开通多长时间
     */
    private String memberSecond;

    /**
     * 开通时间类型
     */
    private String memberSecondType;

    /**
     * 开通金额
     */
    private String currentPrice;

}
