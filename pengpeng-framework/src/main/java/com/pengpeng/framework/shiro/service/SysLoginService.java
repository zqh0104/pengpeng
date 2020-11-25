package com.pengpeng.framework.shiro.service;

import com.pengpeng.common.constant.ShiroConstants;
import com.pengpeng.common.constant.UserConstants;
import com.pengpeng.common.enums.UserStatus;
import com.pengpeng.common.exception.user.*;
import com.pengpeng.common.utils.DateUtils;
import com.pengpeng.common.utils.ServletUtils;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.system.domain.SysUser;
import com.pengpeng.system.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

/**
 * 登录校验方法
 * 
 * @author pengpeng
 */
@Component
public class SysLoginService
{
    @Autowired
    private SysPasswordService passwordService;

    @Autowired
    private ISysUserService userService;

    /**
     * 登录
     */
    public SysUser login(String username, String password)
    {
        // 验证码校验
        if (!StringUtils.isEmpty(ServletUtils.getRequest().getAttribute(ShiroConstants.CURRENT_CAPTCHA)))
        {
            throw new CaptchaException();
        }
        // 用户名或密码为空 错误
        if (StringUtils.isEmpty(username) || StringUtils.isEmpty(password))
        {
            throw new UserNotExistsException();
        }
        // 密码如果不在指定范围内 错误
        if (password.length() < UserConstants.PASSWORD_MIN_LENGTH
                || password.length() > UserConstants.PASSWORD_MAX_LENGTH)
        {
//            AsyncManager.me().execute(AsyncFactory.recordLogininfor(username, Constants.LOGIN_FAIL, MessageUtils.message("user.password.not.match")));
            throw new UserPasswordNotMatchException();
        }

        // 用户名不在指定范围内 错误
        if (username.length() < UserConstants.USERNAME_MIN_LENGTH
                || username.length() > UserConstants.USERNAME_MAX_LENGTH)
        {
//            AsyncManager.me().execute(AsyncFactory.recordLogininfor(username, Constants.LOGIN_FAIL, MessageUtils.message("user.password.not.match")));
            throw new UserPasswordNotMatchException();
        }

        // 查询用户信息
        SysUser user = userService.selectUserByLoginName(username);

        if (user == null && maybeMobilePhoneNumber(username))
        {
//            user = userService.selectUserByPhoneNumber(username);
        }

        if (user == null && maybeEmail(username))
        {
            user = userService.selectUserByEmail(username);
        }

        if (user == null)
        {
            throw new UserNotExistsException();
        }
        
        if (UserStatus.DELETED.getCode().equals(user.getDelFlag()))
        {
            throw new UserDeleteException();
        }
        
        if (UserStatus.DISABLE.getCode().equals(user.getStatus()))
        {
            throw new UserBlockedException();
        }

        passwordService.validate(user, password);

        recordLoginInfo(user);
        return user;
    }

    private boolean maybeEmail(String username)
    {
        if (!username.matches(UserConstants.EMAIL_PATTERN))
        {
            return false;
        }
        return true;
    }

    private boolean maybeMobilePhoneNumber(String username)
    {
        if (!username.matches(UserConstants.MOBILE_PHONE_NUMBER_PATTERN))
        {
            return false;
        }
        return true;
    }

    /**
     * 记录登录信息
     */
    public void recordLoginInfo(SysUser user)
    {
        user.setLoginIp(ShiroUtils.getIp());
        user.setLoginDate(DateUtils.getNowDate());
        userService.updateUserInfo(user);
    }
}
