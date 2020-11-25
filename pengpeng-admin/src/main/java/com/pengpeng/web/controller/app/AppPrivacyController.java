package com.pengpeng.web.controller.app;

import com.pengpeng.common.annotation.Log;
import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.enums.BusinessType;
import com.pengpeng.v4.pojo.privacy.SysPrivacyAgreement;
import com.pengpeng.v4.pojo.privacy.SysPrivacyClause;
import com.pengpeng.v4.service.privacy.ISysPrivacyAgreementService;
import com.pengpeng.v4.service.privacy.ISysPrivacyClauseService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author Administrator
 */
@Controller
@RequestMapping("/app/privacy")
public class AppPrivacyController extends BaseController {
    private String prefix = "app/privacy";

    @Autowired
    private ISysPrivacyClauseService sysPrivacyClauseService;

    @Autowired
    private ISysPrivacyAgreementService sysPrivacyAgreementService;

    @RequiresPermissions("system:clause:view")
    @GetMapping("/clause")
    public String clause(ModelMap mmap)
    {
        SysPrivacyClause sysPrivacyClause = sysPrivacyClauseService.selectSysPrivacyClauseById(Long.valueOf(1));
        mmap.put("sysPrivacyClause", sysPrivacyClause);
        return prefix + "/clause";
    }

    /**
     * 修改保存隐私条款
     */
    @RequiresPermissions("system:clause:edit")
    @Log(title = "隐私条款", businessType = BusinessType.UPDATE)
    @PostMapping("/clause/edit")
    @ResponseBody
    public AjaxResult editSave(SysPrivacyClause sysPrivacyClause)
    {
        return toAjax(sysPrivacyClauseService.updateSysPrivacyClause(sysPrivacyClause));
    }


    @RequiresPermissions("system:agreement:view")
    @GetMapping("/agreement")
    public String agreement(ModelMap mmap)
    {
        SysPrivacyAgreement sysPrivacyAgreement = sysPrivacyAgreementService.selectSysPrivacyAgreementById(Long.valueOf(1));
        mmap.put("sysPrivacyAgreement", sysPrivacyAgreement);
        return prefix + "/agreement";
    }

    /**
     * 修改保存隐私协议
     */
    @RequiresPermissions("system:agreement:edit")
    @Log(title = "隐私协议", businessType = BusinessType.UPDATE)
    @PostMapping("/agreement/edit")
    @ResponseBody
    public AjaxResult editSave(SysPrivacyAgreement sysPrivacyAgreement)
    {
        return toAjax(sysPrivacyAgreementService.updateSysPrivacyAgreement(sysPrivacyAgreement));
    }
}
