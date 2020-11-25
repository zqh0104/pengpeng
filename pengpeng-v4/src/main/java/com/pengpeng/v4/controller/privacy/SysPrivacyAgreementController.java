package com.pengpeng.v4.controller.privacy;

import java.util.List;

import com.pengpeng.v4.pojo.privacy.SysPrivacyAgreement;
import com.pengpeng.v4.service.privacy.ISysPrivacyAgreementService;
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
 * 隐私协议Controller
 * 
 * @author pengpeng
 * @date 2019-12-24
 */
@Controller
@RequestMapping("/api/agreement")
public class SysPrivacyAgreementController extends BaseController
{
    private String prefix = "system/agreement";

    @Autowired
    private ISysPrivacyAgreementService sysPrivacyAgreementService;

    @RequiresPermissions("system:agreement:view")
    @GetMapping()
    public String agreement()
    {
        return prefix + "/agreement";
    }

    /**
     * 查询隐私协议列表
     */
//    @RequiresPermissions("system:agreement:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysPrivacyAgreement sysPrivacyAgreement)
    {
        startPage();
        List<SysPrivacyAgreement> list = sysPrivacyAgreementService.selectSysPrivacyAgreementList(sysPrivacyAgreement);
        return getDataTable(list);
    }

    /**
     * 导出隐私协议列表
     */
    @RequiresPermissions("system:agreement:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysPrivacyAgreement sysPrivacyAgreement)
    {
        List<SysPrivacyAgreement> list = sysPrivacyAgreementService.selectSysPrivacyAgreementList(sysPrivacyAgreement);
        ExcelUtil<SysPrivacyAgreement> util = new ExcelUtil<SysPrivacyAgreement>(SysPrivacyAgreement.class);
        return util.exportExcel(list, "agreement");
    }

    /**
     * 新增隐私协议
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存隐私协议
     */
    @RequiresPermissions("system:agreement:add")
    @Log(title = "隐私协议", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SysPrivacyAgreement sysPrivacyAgreement)
    {
        return toAjax(sysPrivacyAgreementService.insertSysPrivacyAgreement(sysPrivacyAgreement));
    }

    /**
     * 修改隐私协议
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        SysPrivacyAgreement sysPrivacyAgreement = sysPrivacyAgreementService.selectSysPrivacyAgreementById(id);
        mmap.put("sysPrivacyAgreement", sysPrivacyAgreement);
        return prefix + "/edit";
    }

    /**
     * 修改保存隐私协议
     */
    @RequiresPermissions("system:agreement:edit")
    @Log(title = "隐私协议", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysPrivacyAgreement sysPrivacyAgreement)
    {
        return toAjax(sysPrivacyAgreementService.updateSysPrivacyAgreement(sysPrivacyAgreement));
    }

    /**
     * 删除隐私协议
     */
    @RequiresPermissions("system:agreement:remove")
    @Log(title = "隐私协议", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(sysPrivacyAgreementService.deleteSysPrivacyAgreementByIds(ids));
    }
}
