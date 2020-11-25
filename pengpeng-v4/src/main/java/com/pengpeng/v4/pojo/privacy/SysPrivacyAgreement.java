package com.pengpeng.v4.pojo.privacy;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;

/**
 * 隐私协议对象 sys_privacy_agreement
 * 
 * @author pengpeng
 * @date 2019-12-24
 */
public class SysPrivacyAgreement extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String agreementContent;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setAgreementContent(String agreementContent) 
    {
        this.agreementContent = agreementContent;
    }

    public String getAgreementContent() 
    {
        return agreementContent;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("agreementContent", getAgreementContent())
            .toString();
    }
}
