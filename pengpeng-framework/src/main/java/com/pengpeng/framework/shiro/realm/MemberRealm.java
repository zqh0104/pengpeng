package com.pengpeng.framework.shiro.realm;

import com.pengpeng.common.exception.user.*;
import com.pengpeng.common.utils.StringUtils;
import com.pengpeng.framework.LoginType;
import com.pengpeng.framework.config.jwt.JwtToken;
import com.pengpeng.framework.util.JwtUtil;
import com.pengpeng.framework.util.common.Constant;
import com.pengpeng.system.domain.PpLogin;
import com.pengpeng.system.service.ISysUserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 自定义Realm 处理登录 权限
 *
 * @author pengpeng
 */
public class MemberRealm extends AuthorizingRealm {

    @Autowired
    private ISysUserService userService;

    @Override
    public boolean supports(AuthenticationToken token) {
        return token instanceof JwtToken;
    }

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection arg0) {

        return new SimpleAuthorizationInfo();
    }

    /**
     * 登录认证
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        String token = (String) authenticationToken.getCredentials();
        // 解密获得account，用于和数据库进行对比
        String account = JwtUtil.getClaim(token, Constant.ACCOUNT);
        String loginType = JwtUtil.getClaim(token, Constant.LOGIN_TYPE);
        // 帐号为空
        if (StringUtils.isBlank(account)) {
            throw new AuthenticationException("Token中帐号为空(The account in Token is empty.)");
        }
        //手机登录
        if (LoginType.PHONE.getValue().equals(loginType)) {
            PpLogin ppLogin = userService.selectUserByPhoneNumber(account);
            if (ppLogin == null) {
                throw new UserNotExistsException();
            }
        }
        //微信登录
        if (LoginType.WX.getValue().equals(loginType)) {
            PpLogin ppLogin = userService.selectUserByPhoneWx(account);
            if (ppLogin == null) {
                throw new UserNotExistsException();
            }
        }

//        return new SimpleAuthenticationInfo(token, token, "memberRealm");
        if (JwtUtil.verify(token)) {
            return new SimpleAuthenticationInfo(token, token, "memberRealm");
        }
        throw new AuthenticationException("Token已过期(Token expired or incorrect.)");
    }
}
