package com.pengpeng.v4.controller.privacy;

import java.util.List;

import com.pengpeng.v4.pojo.privacy.SysPrivacyClause;
import com.pengpeng.v4.service.privacy.ISysPrivacyClauseService;
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
 * 隐私条款Controller
 * 
 * @author pengpeng
 * @date 2019-12-24
 */
@Controller
@RequestMapping("/api/clause")
public class SysPrivacyClauseController extends BaseController
{
    private String prefix = "system/clause";

    @Autowired
    private ISysPrivacyClauseService sysPrivacyClauseService;

    @RequiresPermissions("system:clause:view")
    @GetMapping()
    public String clause()
    {
        return prefix + "/clause";
    }

    /**
     * 查询隐私条款列表
     */
//    @RequiresPermissions("system:clause:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysPrivacyClause sysPrivacyClause)
    {
        startPage();
        List<SysPrivacyClause> list = sysPrivacyClauseService.selectSysPrivacyClauseList(sysPrivacyClause);
        return getDataTable(list);
    }

    /**
     * 导出隐私条款列表
     */
    @RequiresPermissions("system:clause:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysPrivacyClause sysPrivacyClause)
    {
        List<SysPrivacyClause> list = sysPrivacyClauseService.selectSysPrivacyClauseList(sysPrivacyClause);
        ExcelUtil<SysPrivacyClause> util = new ExcelUtil<SysPrivacyClause>(SysPrivacyClause.class);
        return util.exportExcel(list, "clause");
    }

    /**
     * 新增隐私条款
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存隐私条款
     */
    @RequiresPermissions("system:clause:add")
    @Log(title = "隐私条款", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SysPrivacyClause sysPrivacyClause)
    {
        return toAjax(sysPrivacyClauseService.insertSysPrivacyClause(sysPrivacyClause));
    }

    /**
     * 修改隐私条款
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        SysPrivacyClause sysPrivacyClause = sysPrivacyClauseService.selectSysPrivacyClauseById(id);
        mmap.put("sysPrivacyClause", sysPrivacyClause);
        return prefix + "/edit";
    }

    /**
     * 修改保存隐私条款
     */
    @RequiresPermissions("system:clause:edit")
    @Log(title = "隐私条款", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysPrivacyClause sysPrivacyClause)
    {
        return toAjax(sysPrivacyClauseService.updateSysPrivacyClause(sysPrivacyClause));
    }

    /**
     * 删除隐私条款
     */
    @RequiresPermissions("system:clause:remove")
    @Log(title = "隐私条款", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(sysPrivacyClauseService.deleteSysPrivacyClauseByIds(ids));
    }
}
