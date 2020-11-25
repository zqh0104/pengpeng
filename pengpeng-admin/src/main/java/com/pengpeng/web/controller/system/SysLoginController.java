package com.pengpeng.web.controller.system;

import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.utils.ServletUtils;
import com.pengpeng.common.utils.StringUtils;
import com.pengpeng.framework.shiro.service.SysPasswordService;
import com.pengpeng.system.service.ISysUserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 登录验证
 *
 * @author pengpeng
 */
@Controller
public class SysLoginController extends BaseController {

    /**
     * RefreshToken过期时间
     */
    @Value("${pengpeng.refreshTokenExpireTime}")
    private String refreshTokenExpireTime;


    @GetMapping("/login")
    public String login(HttpServletRequest request, HttpServletResponse response) {
        // 如果是Ajax请求，返回Json字符串。
        if (ServletUtils.isAjaxRequest(request)) {
            return ServletUtils.renderString(response, "{\"code\":\"1\",\"msg\":\"未登录或登录超时。请重新登录\"}");
        }

        return "login";
    }

    @PostMapping("/login")
    @ResponseBody
    public AjaxResult ajaxLogin(String username, String password, Boolean rememberMe, HttpServletResponse httpServletResponse) {

        UsernamePasswordToken token = new UsernamePasswordToken(username, password, rememberMe);

        Subject subject = SecurityUtils.getSubject();
        try {
            subject.login(token);
            return AjaxResult.success("登录成功", getSession().getId());
        } catch (AuthenticationException e) {
            String msg = "用户或密码错误";
            if (StringUtils.isNotEmpty(e.getMessage())) {
                msg = e.getMessage();
            }
            return error(msg);
        }
    }


    @GetMapping("/unauth")
    public String unauth() {
        return "error/unauth";
    }


    /**
     * 生成密码
     */
    public static void main(String[] args) {
        System.out.println(new Md5Hash("13015535410" + "RRCCYY1127" + "632996").toHex());
    }
}
