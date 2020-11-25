package com.pengpeng.v4.pojo.invite;

import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 用户邀请关系对象 pp_invite
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
public class PpInvite extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 用户邀请记录表 */
    private Long id;

    /** 用户id */
    @Excel(name = "用户id")
    private Long userId;

    /** 被邀请人 */
    @Excel(name = "被邀请人")
    private Long byUserId;


    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }
    public void setByUserId(Long byUserId) 
    {
        this.byUserId = byUserId;
    }

    public Long getByUserId() 
    {
        return byUserId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("userId", getUserId())
            .append("byUserId", getByUserId())
            .toString();
    }
}
