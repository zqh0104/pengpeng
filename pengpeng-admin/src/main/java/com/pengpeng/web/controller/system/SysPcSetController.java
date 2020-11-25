package com.pengpeng.web.controller.system;

import java.util.List;

import com.pengpeng.common.utils.poi.ExcelUtil;
import com.pengpeng.v4.pojo.sysset.SysSet;
import com.pengpeng.v4.service.sysset.SysSetService;
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
import com.pengpeng.common.core.page.TableDataInfo;

/**
 * 系统设置Controller
 *
 * @author pengpeng
 * @date 2019-12-23
 */
@Controller
@RequestMapping("/system/set")
public class SysPcSetController extends BaseController
{
    private String prefix = "system/set";

    @Autowired
    private SysSetService sysSetService;

    @RequiresPermissions("system:set:view")
    @GetMapping()
    public String set()
    {
        return prefix + "/set";
    }

    /**
     * 查询系统设置列表
     */
    @RequiresPermissions("system:set:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysSet sysSet)
    {
        startPage();
        List<SysSet> list = sysSetService.selectSysSetList(sysSet);
        return getDataTable(list);
    }

    /**
     * 导出系统设置列表
     */
    @RequiresPermissions("system:set:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysSet sysSet)
    {
        List<SysSet> list = sysSetService.selectSysSetList(sysSet);
        ExcelUtil<SysSet> util = new ExcelUtil<SysSet>(SysSet.class);
        return util.exportExcel(list, "set");
    }

    /**
     * 新增系统设置
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存系统设置
     */
    @RequiresPermissions("system:set:add")
    @Log(title = "系统设置", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SysSet sysSet)
    {
        return toAjax(sysSetService.insertSysSet(sysSet));
    }

    /**
     * 修改系统设置
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        SysSet sysSet = sysSetService.selectSysSetById(id);
        mmap.put("sysSet", sysSet);
        return prefix + "/edit";
    }

    /**
     * 修改保存系统设置
     */
    @RequiresPermissions("system:set:edit")
    @Log(title = "系统设置", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysSet sysSet)
    {
        return toAjax(sysSetService.updateSysSet(sysSet));
    }

    /**
     * 删除系统设置
     */
    @RequiresPermissions("system:set:remove")
    @Log(title = "系统设置", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(sysSetService.deleteSysSetByIds(ids));
    }
}
