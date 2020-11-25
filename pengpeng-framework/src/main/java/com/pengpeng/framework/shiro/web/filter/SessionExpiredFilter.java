package com.pengpeng.framework.shiro.web.filter;

import java.io.IOException;

import com.pengpeng.framework.util.ShiroUtils;
import org.apache.shiro.web.filter.PathMatchingFilter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

/**
 * //自定义拦截器,Session过期AJAX处理
 */
public class SessionExpiredFilter extends PathMatchingFilter {

    @Override
    protected boolean onPreHandle(ServletRequest request, ServletResponse response, Object mappedValue) throws Exception {
        if (ShiroUtils.getSysUser() == null) {
            onLoginFail(response);
            return false;
        }
        return true;
    }

    //session过期给403状态码
    private void onLoginFail(ServletResponse response) throws IOException {
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        httpResponse.setStatus(403);
        httpResponse.getWriter().write("session超时了");
        httpResponse.sendRedirect("/login");
    }


}
