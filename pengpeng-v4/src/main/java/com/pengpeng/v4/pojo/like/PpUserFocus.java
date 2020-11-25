package com.pengpeng.v4.pojo.like;

import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import com.pengpeng.v4.pojo.member.PpMember;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 用户喜欢对象 pp_user_focus
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class PpUserFocus extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long useraId;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long userbId;

    /** 状态(1:A喜欢B ,2:B喜欢A，3:互相喜欢) */
    @Excel(name = "状态(1:A喜欢B ,2:B喜欢A，3:互相喜欢)")
    private Integer status;

    /** $column.columnComment */
    @Excel(name = "状态(1:A喜欢B ,2:B喜欢A，3:互相喜欢)", width = 30, dateFormat = "yyyy-MM-dd")
    private Date creatime;

    /**
     * 获取用户信息
     */
    private String myHeadUrl;
    private String myNickname;
    private String othersNickname;
    private String othersHeadUrl;



}
