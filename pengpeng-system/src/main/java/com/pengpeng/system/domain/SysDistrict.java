package com.pengpeng.system.domain;

import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import lombok.Data;
import lombok.ToString;

import javax.validation.constraints.NotNull;

/**
 * 【请填写功能名称】对象 sys_district
 * 
 * @author ruoyi
 * @date 2019-12-16
 */
@Data
@ToString
public class SysDistrict extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    @NotNull
    private Long cityId;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String district;

}
