package com.pengpeng.system.domain;

import lombok.Data;
import lombok.ToString;

import java.util.Date;

/**
 * 登录信息对象 pp_login
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@Data
@ToString
public class PpLogin
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 会员id */
    private Long memberId;

    /** 登录手机号 */
    private String loginPhone;

    /** 登录名称 */
    private String loginName;

    /** 登录密码 */
    private String password;

    /** 盐加密 */
    private String salt;

    /** 帐号状态（0正常 1停用） */
    private String status;

    private Date createTime;

    private Date updateTime;
}
