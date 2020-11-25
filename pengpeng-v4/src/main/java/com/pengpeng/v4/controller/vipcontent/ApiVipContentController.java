package com.pengpeng.v4.controller.vipcontent;

import java.util.List;

import com.pengpeng.v4.pojo.vipcontent.SysVipContent;
import com.pengpeng.v4.service.vipcontent.ISysVipContentService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.pengpeng.common.annotation.Log;
import com.pengpeng.common.enums.BusinessType;
import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.utils.poi.ExcelUtil;
import com.pengpeng.common.core.page.TableDataInfo;

/**
 * 会员特权页面内容Controller
 * 
 * @author pengpeng
 * @date 2019-12-30
 */
@SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
@Controller
@RequestMapping("/api/content")
public class ApiVipContentController extends BaseController {
    private String prefix = "system/content";

    @Autowired
    private ISysVipContentService sysVipContentService;

    @GetMapping()
    public String content()
    {
        return prefix + "/content";
    }

    /**
     * 查询会员特权页面内容列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list()
    {
        startPage();
        List<SysVipContent> list = sysVipContentService.selectSysVipContent();
        return getDataTable(list);
    }

}
