package com.pengpeng.v4.pojo.gift;

import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import lombok.Data;
import lombok.ToString;

import javax.validation.constraints.NotNull;
import java.util.Date;

/**
 * 礼物记录对象 pp_gift_record
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@Data
@ToString
public class PpGiftRecord extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 礼物记录表 */
    private Long id;

    /** 礼物id */
    @NotNull(message = "礼物Id不能为空")
    private Long giftId;

    /** 赠送人id */
    @Excel(name = "赠送人id")
    private Long userId;

    /** 收取人id */
    @Excel(name = "收取人id")
    @NotNull(message = "收取人id不能为空")
    private Long byUserId;

    /** 礼物类型 */
    @Excel(name = "礼物类型")
    private String giftType;

    /** 礼物数量 */
    @Excel(name = "礼物数量")
    @NotNull(message = "礼物数量不能为空")
    private Integer giftNumber;

    /** 赠送时间 */
    private Date createTime;

    /**
     * 跟组聚合后数量
     */
    private Integer sumNumber;

    /**
     * 礼物类型
     */
    private String giftName;

    /**
     * 礼物图片
     */
    private String giftUrl;

}
