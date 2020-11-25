package com.pengpeng.v4.pojo.note;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;

/**
 * 短信发送列对象 pp_note
 * 
 * @author pengpeng
 * @date 2019-12-26
 */
public class PpNote extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 短信发送表主键 */
    private Long id;

    /** 用户id */
    @Excel(name = "用户id")
    private Long userId;

    /** 短信内容 */
    @Excel(name = "短信内容")
    private String userNote;

    /** 手机号 */
    @Excel(name = "手机号")
    private String phone;

    /** 发送状态 （2:成功 0：失败） */
    @Excel(name = "发送状态 ", readConverterExp = "2=:成功,0=：失败")
    private Integer status;

    /** 类型（1:验证码） */
    @Excel(name = "类型", readConverterExp = "1=:验证码")
    private Integer type;

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
    public void setUserNote(String userNote) 
    {
        this.userNote = userNote;
    }

    public String getUserNote() 
    {
        return userNote;
    }
    public void setPhone(String phone) 
    {
        this.phone = phone;
    }

    public String getPhone() 
    {
        return phone;
    }
    public void setStatus(Integer status) 
    {
        this.status = status;
    }

    public Integer getStatus() 
    {
        return status;
    }
    public void setType(Integer type) 
    {
        this.type = type;
    }

    public Integer getType() 
    {
        return type;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("userId", getUserId())
            .append("userNote", getUserNote())
            .append("phone", getPhone())
            .append("status", getStatus())
            .append("createTime", getCreateTime())
            .append("type", getType())
            .toString();
    }
}
