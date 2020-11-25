package com.pengpeng.v4.pojo.rechargespec;


import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import lombok.Data;
import lombok.ToString;

/**
 * 充值规格对象 pp_recharge_spec
 * 
 * @author ruoyi
 * @date 2019-12-19
 */
@Data
@ToString
public class PpRechargeSpec extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 规格金额 */
    @Excel(name = "规格金额")
    private String specMoney;

    /** 规格值 */
    @Excel(name = "规格值")
    private Integer specVal;

    /** 状态(0:删除 1:正常) */
    @Excel(name = "状态(0:删除 1:正常)")
    private Integer status;

    /**
     * 苹果支付的productid
     */
    private String productId;

}
