package com.pengpeng.system.domain;

import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import lombok.Data;
import lombok.ToString;

import java.util.List;

/**
 * 国家 代码对象 sys_country
 * 
 * @author ruoyi
 * @date 2019-12-12
 */
@Data
@ToString
public class SysCountry extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 国家名称 */
    @Excel(name = "国家名称")
    private String country;

    /** 区号 */
    @Excel(name = "区号")
    private String code;

    private String value;

    private List<SysCity> cityList;

}
