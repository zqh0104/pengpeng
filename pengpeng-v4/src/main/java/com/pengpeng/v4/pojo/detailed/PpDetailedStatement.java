package com.pengpeng.v4.pojo.detailed;

import lombok.NoArgsConstructor;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import java.util.Date;

/**
 * 收支明细对象 pp_detailed_statement
 *
 * @author pengpeng
 * @date 2019-12-20
 */
@NoArgsConstructor
public class PpDetailedStatement extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键id 收支明细表主键 */
    private Long id;

    /** 用户信息 */
    @Excel(name = "用户信息")
    private Long memberId;

    /** 金额 */
    @Excel(name = "金额")
    private String gold;

    /** 原因 */
    @Excel(name = "原因")
    private String cause;

    /** 状态 1-余额 0-收入 */
    @Excel(name = "状态 1-余额 0-收入")
    private Integer type;

    /** 时间 */
    @Excel(name = "时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date time;

    public PpDetailedStatement(Long memberId, String gold, String cause, Integer type, Date time) {
        this.memberId = memberId;
        this.gold = gold;
        this.cause = cause;
        this.type = type;
        this.time = time;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setMemberId(Long memberId)
    {
        this.memberId = memberId;
    }

    public Long getMemberId()
    {
        return memberId;
    }
    public void setGold(String gold)
    {
        this.gold = gold;
    }

    public String getGold()
    {
        return gold;
    }
    public void setCause(String cause)
    {
        this.cause = cause;
    }

    public String getCause()
    {
        return cause;
    }
    public void setType(Integer type)
    {
        this.type = type;
    }

    public Integer getType()
    {
        return type;
    }
    public void setTime(Date time)
    {
        this.time = time;
    }

    public Date getTime()
    {
        return time;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("memberId", getMemberId())
            .append("gold", getGold())
            .append("cause", getCause())
            .append("type", getType())
            .append("time", getTime())
            .toString();
    }
}
