package com.pengpeng.web.controller.app;

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
@RequestMapping("/app/content")
public class AppVipContentController extends BaseController
{
    private String prefix = "app/content";

    @Autowired
    private ISysVipContentService sysVipContentService;

    @RequiresPermissions("system:content:view")
    @GetMapping()
    public String content()
    {
        return prefix + "/content";
    }

    /**
     * 查询会员特权页面内容列表
     */
    @RequiresPermissions("system:content:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysVipContent sysVipContent)
    {
        startPage();
        List<SysVipContent> list = sysVipContentService.selectSysVipContentList(sysVipContent);
        return getDataTable(list);
    }

    /**
     * 导出会员特权页面内容列表
     */
    @RequiresPermissions("system:content:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysVipContent sysVipContent)
    {
        List<SysVipContent> list = sysVipContentService.selectSysVipContentList(sysVipContent);
        ExcelUtil<SysVipContent> util = new ExcelUtil<SysVipContent>(SysVipContent.class);
        return util.exportExcel(list, "content");
    }

    /**
     * 新增会员特权页面内容
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存会员特权页面内容
     */
    @RequiresPermissions("system:content:add")
    @Log(title = "会员特权页面内容", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SysVipContent sysVipContent)
    {
        return toAjax(sysVipContentService.insertSysVipContent(sysVipContent));
    }

    /**
     * 修改会员特权页面内容
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        SysVipContent sysVipContent = sysVipContentService.selectSysVipContentById(id);
        mmap.put("sysVipContent", sysVipContent);
        return prefix + "/edit";
    }

    /**
     * 修改保存会员特权页面内容
     */
    @RequiresPermissions("system:content:edit")
    @Log(title = "会员特权页面内容", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysVipContent sysVipContent)
    {
        return toAjax(sysVipContentService.updateSysVipContent(sysVipContent));
    }

    /**
     * 删除会员特权页面内容
     */
    @RequiresPermissions("system:content:remove")
    @Log(title = "会员特权页面内容", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(sysVipContentService.deleteSysVipContentByIds(ids));
    }
}
