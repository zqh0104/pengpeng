package com.pengpeng.v4.pojo.gift;

import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import lombok.Data;
import lombok.ToString;

/**
 * 礼物对象 pp_gift
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@Data
@ToString
public class PpGift extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 礼物名称 */
    @Excel(name = "礼物名称")
    private String giftName;

    /** 需要钻石数量 */
    @Excel(name = "需要钻石数量")
    private Integer diamond;

    /** 礼物金额 */
    @Excel(name = "礼物金额")
    private Double money;

    /** 状态(0:取消 1:启用) */
    @Excel(name = "状态(0:取消 1:启用)")
    private Integer status;

    /**
     * 礼物路径
     */
    @Excel(name = "礼物路径")
    private String giftUrl;

}
