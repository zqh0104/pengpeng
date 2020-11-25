package com.pengpeng.v4.pojo.vipcontent;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;

/**
 * 会员特权页面内容对象 sys_vip_content
 * 
 * @author pengpeng
 * @date 2019-12-30
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class SysVipContent extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 会员特权页面 */
    private Long id;

    /** 会员特权页面内容 */
    @Excel(name = "会员特权页面内容")
    private String vipContent;

}
