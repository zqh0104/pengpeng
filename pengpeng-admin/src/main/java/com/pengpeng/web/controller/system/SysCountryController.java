package com.pengpeng.web.controller.system;

import com.pengpeng.common.annotation.Log;
import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.page.TableDataInfo;
import com.pengpeng.common.enums.BusinessType;
import com.pengpeng.common.utils.poi.ExcelUtil;
import com.pengpeng.system.domain.SysCountry;
import com.pengpeng.system.service.ISysCountryService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 国家 代码Controller
 * 
 * @author ruoyi
 * @date 2019-12-12
 */
@Controller
@RequestMapping("/system/country")
public class SysCountryController extends BaseController
{
    private String prefix = "system/country";

    @Autowired
    private ISysCountryService sysCountryService;

    @RequiresPermissions("system:country:view")
    @GetMapping()
    public String country()
    {
        return prefix + "/country";
    }

    /**
     * 查询国家 代码列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysCountry sysCountry)
    {
        startPage();
        List<SysCountry> list = sysCountryService.selectSysCountryList(sysCountry);
        return getDataTable(list);
    }

    /**
     * 导出国家 代码列表
     */
    @RequiresPermissions("system:country:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysCountry sysCountry)
    {
        List<SysCountry> list = sysCountryService.selectSysCountryList(sysCountry);
        ExcelUtil<SysCountry> util = new ExcelUtil<SysCountry>(SysCountry.class);
        return util.exportExcel(list, "country");
    }

    /**
     * 新增国家 代码
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存国家 代码
     */
    @RequiresPermissions("system:country:add")
    @Log(title = "国家 代码", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SysCountry sysCountry)
    {
        return toAjax(sysCountryService.insertSysCountry(sysCountry));
    }

    /**
     * 修改国家 代码
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        SysCountry sysCountry = sysCountryService.selectSysCountryById(id);
        mmap.put("sysCountry", sysCountry);
        return prefix + "/edit";
    }

    /**
     * 修改保存国家 代码
     */
    @RequiresPermissions("system:country:edit")
    @Log(title = "国家 代码", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysCountry sysCountry)
    {
        return toAjax(sysCountryService.updateSysCountry(sysCountry));
    }

    /**
     * 删除国家 代码
     */
    @RequiresPermissions("system:country:remove")
    @Log(title = "国家 代码", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(sysCountryService.deleteSysCountryByIds(ids));
    }
}
