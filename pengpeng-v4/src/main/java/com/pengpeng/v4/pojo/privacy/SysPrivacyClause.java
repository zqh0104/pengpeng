package com.pengpeng.v4.pojo.privacy;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;

/**
 * 隐私条款对象 sys_privacy_clause
 * 
 * @author pengpeng
 * @date 2019-12-24
 */
public class SysPrivacyClause extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 隐私条款内容 */
    @Excel(name = "隐私条款内容")
    private String clauseContent;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setClauseContent(String clauseContent) 
    {
        this.clauseContent = clauseContent;
    }

    public String getClauseContent() 
    {
        return clauseContent;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("clauseContent", getClauseContent())
            .toString();
    }
}
