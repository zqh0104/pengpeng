package com.pengpeng.web.controller.system;

import java.util.List;

import com.pengpeng.common.annotation.Log;
import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.page.TableDataInfo;
import com.pengpeng.common.enums.BusinessType;
import com.pengpeng.common.utils.poi.ExcelUtil;
import com.pengpeng.system.domain.SysDistrict;
import com.pengpeng.system.service.ISysDistrictService;
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
@RequestMapping("/system/district")
public class SysDistrictController extends BaseController
{
    private String prefix = "system/district";

    @Autowired
    private ISysDistrictService sysDistrictService;

    @RequiresPermissions("system:district:view")
    @GetMapping()
    public String district()
    {
        return prefix + "/district";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("system:district:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysDistrict sysDistrict)
    {
        startPage();
        List<SysDistrict> list = sysDistrictService.selectSysDistrictList(sysDistrict);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("system:district:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysDistrict sysDistrict)
    {
        List<SysDistrict> list = sysDistrictService.selectSysDistrictList(sysDistrict);
        ExcelUtil<SysDistrict> util = new ExcelUtil<SysDistrict>(SysDistrict.class);
        return util.exportExcel(list, "district");
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
    @RequiresPermissions("system:district:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SysDistrict sysDistrict)
    {
        return toAjax(sysDistrictService.insertSysDistrict(sysDistrict));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        SysDistrict sysDistrict = sysDistrictService.selectSysDistrictById(id);
        mmap.put("sysDistrict", sysDistrict);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("system:district:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysDistrict sysDistrict)
    {
        return toAjax(sysDistrictService.updateSysDistrict(sysDistrict));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("system:district:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(sysDistrictService.deleteSysDistrictByIds(ids));
    }
}
