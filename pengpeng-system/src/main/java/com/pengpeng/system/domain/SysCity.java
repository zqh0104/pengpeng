package com.pengpeng.system.domain;

import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import lombok.Data;
import lombok.ToString;

import java.util.List;

/**
 * 【请填写功能名称】对象 sys_city
 * 
 * @author ruoyi
 * @date 2019-12-16
 */
@Data
@ToString
public class SysCity extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 国家id */
    @Excel(name = "国家id")
    private Long countryId;

    /** 城市名称 */
    @Excel(name = "城市名称")
    private String city;

    private List<SysDistrict> districtList;
}
