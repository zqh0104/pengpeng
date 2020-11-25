package com.pengpeng.web.controller.system;

import com.pengpeng.common.config.Global;
import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.utils.ServletUtils;
import com.pengpeng.common.utils.StringUtils;
import com.pengpeng.framework.util.JwtUtil;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.framework.util.common.Constant;
import com.pengpeng.system.domain.SysMenu;
import com.pengpeng.system.domain.SysUser;
import com.pengpeng.system.service.ISysMenuService;
import com.pengpeng.system.service.ISysUserService;
import org.apache.shiro.authc.AuthenticationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

/**
 * 首页 业务处理
 * 
 * @author pengpeng
 */
@Controller
public class SysIndexController extends BaseController
{
    @Autowired
    private ISysMenuService menuService;

    @Autowired
    private ISysUserService userService;
    // 系统首页
    @GetMapping("/index")
    public String index(ModelMap mmap)
    {
        // 取身份信息
        SysUser user =ShiroUtils.getSysUser();
        // 根据用户id取出菜单
        List<SysMenu> menus = menuService.selectMenusByUser(user);
        mmap.put("menus", menus);
        mmap.put("user", user);
        mmap.put("copyrightYear", Global.getCopyrightYear());
        mmap.put("demoEnabled", Global.isDemoEnabled());
        return "index";
    }

    // 切换主题
    @GetMapping("/system/switchSkin")
    public String switchSkin(ModelMap mmap)
    {
        return "skin";
    }

    // 系统介绍
    @GetMapping("/system/main")
    public String main(ModelMap mmap)
    {
        mmap.put("version", Global.getVersion());
        return "main";
    }
}
