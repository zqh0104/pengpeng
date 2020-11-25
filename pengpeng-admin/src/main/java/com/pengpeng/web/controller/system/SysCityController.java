package com.pengpeng.web.controller.system;

import java.util.List;

import com.pengpeng.common.annotation.Log;
import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.page.TableDataInfo;
import com.pengpeng.common.enums.BusinessType;
import com.pengpeng.common.utils.poi.ExcelUtil;
import com.pengpeng.system.domain.SysCity;
import com.pengpeng.system.service.ISysCityService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 【请填写功能名称】Controller
 * 
 * @author ruoyi
 * @date 2019-12-16
 */
@Controller
@RequestMapping("/system/city")
public class SysCityController extends BaseController
{
    private String prefix = "system/city";

    @Autowired
    private ISysCityService sysCityService;

    @RequiresPermissions("system:city:view")
    @GetMapping()
    public String city()
    {
        return prefix + "/city";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysCity sysCity)
    {
        startPage();
        List<SysCity> list = sysCityService.selectSysCityList(sysCity);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("system:city:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysCity sysCity)
    {
        List<SysCity> list = sysCityService.selectSysCityList(sysCity);
        ExcelUtil<SysCity> util = new ExcelUtil<SysCity>(SysCity.class);
        return util.exportExcel(list, "city");
    }

    /**
     * 新增【请填写功能名称】
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存【请填写功能名称】
     */
    @RequiresPermissions("system:city:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SysCity sysCity)
    {
        return toAjax(sysCityService.insertSysCity(sysCity));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        SysCity sysCity = sysCityService.selectSysCityById(id);
        mmap.put("sysCity", sysCity);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("system:city:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysCity sysCity)
    {
        return toAjax(sysCityService.updateSysCity(sysCity));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("system:city:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(sysCityService.deleteSysCityByIds(ids));
    }
}
