package com.pengpeng.v4.pojo.member;

import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * 会员规格对象 pp_member_spec
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class PpMemberSpec extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 原价 */
    @Excel(name = "原价")
    private String memberMoney;

    /** 现价 */
    @Excel(name = "现价")
    private String currentPrice;

    /** 时间 */
    @Excel(name = "时间")
    private String memberSecond;

    /**
     * 时间类型
     * @param id
     */
    @Excel(name = "时间类型")
    private String memberSecondType;

    /**
     * 节约多少
     */
    @Excel(name = "节约")
    private String save;

    /**
     * 每个月对多钱
     */
    @Excel(name = "平均每月多少钱")
    private String averageMonth;

    /**
     * 苹果支付的productid
     */
    private String productId;
}
