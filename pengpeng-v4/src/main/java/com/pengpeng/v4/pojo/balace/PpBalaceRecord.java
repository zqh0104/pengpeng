package com.pengpeng.v4.pojo.balace;

import com.pengpeng.v4.pojo.gift.PpGiftRecord;
import com.pengpeng.v4.pojo.rechargerecord.PpRechargeRecord;
import lombok.*;
import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import java.util.Date;

/**
 * 余额变动 不可提取对象 pp_balace_record
 *
 * @author pengpeng
 * @date 2019-12-21
 */

@Data
@ToString
@EqualsAndHashCode(callSuper=false)
@NoArgsConstructor
@AllArgsConstructor
public class PpBalaceRecord extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 余额表id  */
    private Long balanceId;

    /** 充值记录表id || 礼物赠送记录表id */
    @Excel(name = "充值记录表id || 礼物赠送记录表id")
    private Long otherId;

    /** 用户id */
    @Excel(name = "用户id")
    private Long userId;

    /** 类型（1: 充值 2: 赠送） */
    @Excel(name = "类型", readConverterExp = "1=:,充=值,2=:,赠=送")
    private Integer type;

    /** 变动金额 */
    @Excel(name = "变动金额")
    private String balaceAlterationGold;

    /** 变动时间 */
    @Excel(name = "变动时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date balaceAlterationTime;

    /**
     * 礼物记录
     */
    private PpGiftRecord ppGiftRecord;

    /**
     * 充值记录
     */
    private PpRechargeRecord ppRechargeRecord;
    /** 用户昵称 */
    private String nickname;

    private Date beginBalaceAlterationTime;
    private Date endBalaceAlterationTime;
    /**
     * by_user_id
     */
    private Long byUserId;
    private String giftType;
    private Long giftNumber;
    private Double rechargeMoney;
    private Long rechargeDiamond;

    private String othersnickname;
    private Long id;

    private String giftName;


}
