package com.pengpeng.v4.pojo.push;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;

/**
 * 推送记录列对象 pp_push
 * 
 * @author pengpeng
 * @date 2019-12-24
 */
public class PpPush extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 用户推送列表主键 */
    private Long id;

    /** 用户id */
    @Excel(name = "用户id")
    private Long userId;

    /** 推送内容 */
    @Excel(name = "推送内容")
    private String pushContent;

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
    public void setPushContent(String pushContent) 
    {
        this.pushContent = pushContent;
    }

    public String getPushContent() 
    {
        return pushContent;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("userId", getUserId())
            .append("pushContent", getPushContent())
            .toString();
    }
}
