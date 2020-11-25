package com.pengpeng.v4.pojo.login;

import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import lombok.Data;
import lombok.ToString;

/**
 * 登录信息对象 pp_login
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@Data
@ToString
public class PpLogin extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 会员id */
    @Excel(name = "会员id")
    private Long memberId;

    /** 登录手机号 */
    @Excel(name = "登录手机号")
    private String loginPhone;

    /** 登录名称 */
    @Excel(name = "登录名称")
    private String loginName;

    /** 登录密码 */
    @Excel(name = "登录密码")
    private String password;

    /** 盐加密 */
    @Excel(name = "盐加密")
    private String salt;

    /** 帐号状态（0正常 1停用） */
    @Excel(name = "帐号状态", readConverterExp = "0=正常,1=停用")
    private String status;

    /** 登录类型 （1：手机号）*/
    private Integer type;
}
