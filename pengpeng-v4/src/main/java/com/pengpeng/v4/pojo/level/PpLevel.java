package com.pengpeng.v4.pojo.level;


import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import lombok.Data;
import lombok.ToString;

/**
 * 财富等级对象 pp_level
 * 
 * @author ruoyi
 * @date 2019-12-19
 */
@Data
@ToString
public class PpLevel extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 财富等级名称 */
    @Excel(name = "财富等级名称")
    private String gradeName;

    /** 财富值 */
    @Excel(name = "财富值")
    private Long gradeTreasure;

}
