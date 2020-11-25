package com.pengpeng.v4.pojo.withdraw;

import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import lombok.Data;
import lombok.ToString;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.Date;

/**
 * 用户提现记录对象 pp_ withdraw_record
 * 
 * @author ruoyi
 * @date 2019-12-18
 */
@Data
@ToString
public class PpwithdrawRecord extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 提现记录表 */
    private Long withdrawId;

    /** 用户id */
    @Excel(name = "用户id")
    private Long userId;

    /** 提现方式 */
    @Excel(name = "提现方式")
    @NotNull(message = "提现方式不能为空")
    private Integer withdrawWay;

    /** 提现金额 */
    @Excel(name = "提现金额")
    @NotNull(message = "提现金额不能为空")
    private Double withdrawGold;

    /** 提现账户 */
    @Excel(name = "提现账户")
    @NotBlank(message = "提现账户不能为空")
    private String withdrawAccount;

    /** 提现时间 */
    @Excel(name = "提现时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date withdrawTime;

    /**
     * 状态 0:审核不通过 1:审核中 2:审核通过 3:已打款
     */
    @Excel(name = "提现状态")
    private Integer withdrawStatus;

    /**
     * 修改时间
     */
    @Excel(name = "修改时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date updateTime;

    /**
     * 拒绝原因
     */
    private String withdrawCause;


}
