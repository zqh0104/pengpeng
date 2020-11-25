package com.pengpeng.framework.config;

import java.util.*;
import javax.servlet.Filter;

import com.pengpeng.framework.config.jwt.JwtFilter;
import com.pengpeng.framework.shiro.MyModularRealmAuthenticator;
import com.pengpeng.framework.shiro.realm.AdminRealm;
import com.pengpeng.framework.shiro.web.filter.SessionExpiredFilter;
import org.apache.shiro.authc.Authenticator;
import org.apache.shiro.authc.pam.FirstSuccessfulStrategy;
import org.apache.shiro.codec.Base64;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.realm.Realm;
import org.apache.shiro.session.mgt.eis.SessionDAO;
import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.CookieRememberMeManager;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.apache.shiro.web.servlet.SimpleCookie;
import org.apache.shiro.web.session.mgt.DefaultWebSessionManager;
import org.crazycake.shiro.RedisCacheManager;
import org.crazycake.shiro.RedisManager;
import org.crazycake.shiro.RedisSessionDAO;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import com.pengpeng.framework.shiro.realm.MemberRealm;
import com.pengpeng.framework.shiro.web.filter.LogoutFilter;
import com.pengpeng.framework.shiro.web.filter.captcha.CaptchaValidateFilter;
import com.pengpeng.framework.shiro.web.filter.kickout.KickoutSessionFilter;
import at.pollux.thymeleaf.shiro.dialect.ShiroDialect;

/**
 * 权限配置加载
 *
 * @author pengpeng
 */
@Configuration
public class ShiroConfig {
    public static final String PREMISSION_STRING = "perms[\"{0}\"]";

    // Session超时时间，单位为毫秒（默认30分钟）
    @Value("${shiro.session.expireTime}")
    private int expireTime;

    // 相隔多久检查一次session的有效性，单位毫秒，默认就是10分钟
    @Value("${shiro.session.validationInterval}")
    private int validationInterval;

    // 同一个用户最大会话数
    @Value("${shiro.session.maxSession}")
    private int maxSession;

    // 踢出之前登录的/之后登录的用户，默认踢出之前登录的用户
    @Value("${shiro.session.kickoutAfter}")
    private boolean kickoutAfter;

    // 验证码开关
    @Value("${shiro.user.captchaEnabled}")
    private boolean captchaEnabled;

    // 验证码类型
    @Value("${shiro.user.captchaType}")
    private String captchaType;

    // 设置Cookie的域名
    @Value("${shiro.cookie.domain}")
    private String domain;

    // 设置cookie的有效访问路径
    @Value("${shiro.cookie.path}")
    private String path;

    // 设置HttpOnly属性
    @Value("${shiro.cookie.httpOnly}")
    private boolean httpOnly;

    // 设置Cookie的过期时间，秒为单位
    @Value("${shiro.cookie.maxAge}")
    private int maxAge;

    // 登录地址
    @Value("${shiro.user.loginUrl}")
    private String loginUrl;

    // 权限认证失败地址
    @Value("${shiro.user.unauthorizedUrl}")
    private String unauthorizedUrl;

    @Value("${spring.redis.host}")
    private String host;

    @Value("${spring.redis.password}")
    private String password;

    @Value("${spring.redis.port}")
    private int port;

    @Value("${spring.redis.timeout}")
    private int timeout;

    /**
     * cacheManager 缓存 redis实现
     * 使用的是shiro-redis开源插件
     *
     * @return
     */
    @Bean("redisCacheManager")
    public RedisCacheManager cacheManager() {
        RedisCacheManager redisCacheManager = new RedisCacheManager();
        redisCacheManager.setRedisManager(redisManager());
        return redisCacheManager;
    }

    /**
     * 配置shiro redisManager
     * 使用的是shiro-redis开源插件
     *
     * @return
     */
    @Bean
    public RedisManager redisManager() {
        RedisManager redisManager = new RedisManager();
        redisManager.setHost(host);
        redisManager.setPort(port);
        redisManager.setExpire(timeout);
        redisManager.setTimeout(timeout);
        redisManager.setPassword(password);
        return redisManager;
    }

    /**
     * Session Manager
     * 使用的是shiro-redis开源插件
     */
    @Bean
    public DefaultWebSessionManager sessionManager() {
        DefaultWebSessionManager sessionManager = new DefaultWebSessionManager();
        sessionManager.setSessionDAO(redisSessionDAO());
        return sessionManager;
    }

    /**
     * RedisSessionDAO shiro sessionDao层的实现 通过redis
     * 使用的是shiro-redis开源插件
     */
    @Bean
    public RedisSessionDAO redisSessionDAO() {
        RedisSessionDAO redisSessionDAO = new RedisSessionDAO();
        redisSessionDAO.setRedisManager(redisManager());
        return redisSessionDAO;
    }

    /**
     * 重要！！定义token与Realm关系，设置认证策略
     *
     * @return
     */
    public Authenticator authenticator() {
        MyModularRealmAuthenticator authenticator = new MyModularRealmAuthenticator();
        // 设置两个Realm，一个用于用户登录验证和访问权限获取；一个用于jwt token的认证
        authenticator.setRealms(Arrays.asList(adminRealm(), memberRealm()));
        // 设置多个realm认证策略，一个成功即跳过其它的
        authenticator.setAuthenticationStrategy(new FirstSuccessfulStrategy());
        return authenticator;
    }

    /**
     * MemberRealm
     */
    @Bean
    public MemberRealm memberRealm() {
        MemberRealm memberRealm = new MemberRealm();
        memberRealm.setCacheManager(cacheManager());
        memberRealm.setAuthorizationCachingEnabled(true);
        memberRealm.setAuthorizationCacheName("Authorization");
        return memberRealm;
    }

    /**
     * AdminRealm
     */
    @Bean
    public AdminRealm adminRealm() {
        AdminRealm adminRealm = new AdminRealm();
        adminRealm.setAuthorizationCachingEnabled(false);
        adminRealm.setCacheManager(cacheManager());
        return adminRealm;
    }

    @Bean("securityManager")
    public SecurityManager securityManager() {
        DefaultWebSecurityManager defaultWebSecurityManager = new DefaultWebSecurityManager();
        // 使用多Realm
        List<Realm> realms = new ArrayList<>();
        realms.add(memberRealm());
        realms.add(adminRealm());
        defaultWebSecurityManager.setRealms(realms);
        //记住我
        defaultWebSecurityManager.setRememberMeManager(rememberMeManager());
        // 设置redis缓存
        defaultWebSecurityManager.setCacheManager(cacheManager());
        defaultWebSecurityManager.setSessionManager(sessionManager());
        defaultWebSecurityManager.setAuthenticator(authenticator());
        return defaultWebSecurityManager;
    }

    /**
     * 退出过滤器
     */
    public LogoutFilter logoutFilter() {
        LogoutFilter logoutFilter = new LogoutFilter();
        logoutFilter.setCacheManager(cacheManager());
        logoutFilter.setLoginUrl(loginUrl);
        return logoutFilter;
    }

    /**
     * Shiro过滤器配置
     */
    @Bean
    public ShiroFilterFactoryBean shiroFilterFactoryBean(SecurityManager securityManager) {
        ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();
        // Shiro的核心安全接口,这个属性是必须的
        shiroFilterFactoryBean.setSecurityManager(securityManager);
        // 身份认证失败，则跳转到登录页面的配置
        shiroFilterFactoryBean.setLoginUrl(loginUrl);
        // 权限认证失败，则跳转到指定页面
        shiroFilterFactoryBean.setUnauthorizedUrl(unauthorizedUrl);
        // Shiro连接约束配置，即过滤链的定义
        LinkedHashMap<String, String> filterChainDefinitionMap = new LinkedHashMap<>();
        // 对静态资源设置匿名访问
        filterChainDefinitionMap.put("/favicon.ico**", "anon");
        filterChainDefinitionMap.put("/pengpeng.png**", "anon");
        filterChainDefinitionMap.put("/css/**", "anon");
        filterChainDefinitionMap.put("/docs/**", "anon");
        filterChainDefinitionMap.put("/fonts/**", "anon");
        filterChainDefinitionMap.put("/img/**", "anon");
        filterChainDefinitionMap.put("/ajax/**", "anon");
        filterChainDefinitionMap.put("/js/**", "anon");
        filterChainDefinitionMap.put("/pengpeng/**", "anon");
        filterChainDefinitionMap.put("/druid/**", "anon");
        filterChainDefinitionMap.put("/captcha/captchaImage**", "anon");
        // 退出 logout地址，shiro去清除session
        filterChainDefinitionMap.put("/logout", "logout");
        filterChainDefinitionMap.put("/api/ali/aliPayCallback", "anon");
        filterChainDefinitionMap.put("/api/wx/wxPayCallback","anon");
        filterChainDefinitionMap.put("/api/ali/vipAliPayCallback", "anon");
        filterChainDefinitionMap.put("/api/wx/vipWxPayCallback","anon");
        // 不需要拦截的访问
        filterChainDefinitionMap.put("/login", "anon,captchaValidate");
        filterChainDefinitionMap.put("/app/login", "anon");
        filterChainDefinitionMap.put("/api/member/add", "anon");
        filterChainDefinitionMap.put("/system/city/list", "anon");
        filterChainDefinitionMap.put("/system/country/list", "anon");
        filterChainDefinitionMap.put("/system/dict/pp/list", "anon");
        filterChainDefinitionMap.put("/qiniu/uploadFiles", "anon");
        // 系统权限列表
        // filterChainDefinitionMap.putAll(SpringUtils.getBean(IMenuService.class).selectPermsAll());

        Map<String, Filter> filters = new LinkedHashMap<String, Filter>();
        filters.put("captchaValidate", captchaValidateFilter());
        filters.put("kickout", kickoutSessionFilter());
        filters.put("jwt", new JwtFilter());
        filters.put("admin", new SessionExpiredFilter());
        // 注销成功，则跳转到指定页面
        filters.put("logout", logoutFilter());
        shiroFilterFactoryBean.setFilters(filters);

        // 前端请求使用JWTFilter验证
        filterChainDefinitionMap.put("/api/**", "jwt");
        filterChainDefinitionMap.put("/**", "admin");
        shiroFilterFactoryBean.setFilterChainDefinitionMap(filterChainDefinitionMap);

        return shiroFilterFactoryBean;
    }


    /**
     * 自定义验证码过滤器
     */
    @Bean
    public CaptchaValidateFilter captchaValidateFilter() {
        CaptchaValidateFilter captchaValidateFilter = new CaptchaValidateFilter();
        captchaValidateFilter.setCaptchaEnabled(captchaEnabled);
        captchaValidateFilter.setCaptchaType(captchaType);
        return captchaValidateFilter;
    }

    /**
     * cookie 属性设置
     */
    public SimpleCookie rememberMeCookie() {
        SimpleCookie cookie = new SimpleCookie("rememberMe");
        cookie.setDomain(domain);
        cookie.setPath(path);
        cookie.setHttpOnly(httpOnly);
        cookie.setMaxAge(maxAge * 24 * 60 * 60);
        return cookie;
    }

    /**
     * 记住我
     */
    public CookieRememberMeManager rememberMeManager() {
        CookieRememberMeManager cookieRememberMeManager = new CookieRememberMeManager();
        cookieRememberMeManager.setCookie(rememberMeCookie());
        cookieRememberMeManager.setCipherKey(Base64.decode("fCq+/xW488hMTCD+cmJ3aQ=="));
        return cookieRememberMeManager;
    }

    /**
     * 同一个用户多设备登录限制
     */
    public KickoutSessionFilter kickoutSessionFilter() {
        KickoutSessionFilter kickoutSessionFilter = new KickoutSessionFilter();
        kickoutSessionFilter.setCacheManager(cacheManager());
        kickoutSessionFilter.setSessionManager(sessionManager());
        // 同一个用户最大的会话数，默认-1无限制；比如2的意思是同一个用户允许最多同时两个人登录
        kickoutSessionFilter.setMaxSession(maxSession);
        // 是否踢出后来登录的，默认是false；即后者登录的用户踢出前者登录的用户；踢出顺序
        kickoutSessionFilter.setKickoutAfter(kickoutAfter);
        // 被踢出后重定向到的地址；
        kickoutSessionFilter.setKickoutUrl("/login?kickout=1");
        return kickoutSessionFilter;
    }

    /**
     * thymeleaf模板引擎和shiro框架的整合
     */
    @Bean
    public ShiroDialect shiroDialect() {
        return new ShiroDialect();
    }

    /**
     * 开启Shiro注解通知器
     */
    @Bean
    public AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor(
            @Qualifier("securityManager") SecurityManager securityManager) {
        AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor = new AuthorizationAttributeSourceAdvisor();
        authorizationAttributeSourceAdvisor.setSecurityManager(securityManager);
        return authorizationAttributeSourceAdvisor;
    }


}
