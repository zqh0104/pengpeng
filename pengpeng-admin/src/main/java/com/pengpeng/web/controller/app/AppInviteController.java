package com.pengpeng.web.controller.app;

import java.util.List;

import com.pengpeng.v4.pojo.invite.PpInvite;
import com.pengpeng.v4.service.invite.IPpInviteService;
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
 * 用户邀请关系Controller
 * 
 * @author pengpeng
 * @date 2019-12-21
 */
@Controller
@RequestMapping("/app/invite")
public class AppInviteController extends BaseController
{
    private String prefix = "app/invite";

    @Autowired
    private IPpInviteService ppInviteService;

    @RequiresPermissions("system:invite:view")
    @GetMapping()
    public String invite()
    {
        return prefix + "/invite";
    }

    /**
     * 查询用户邀请关系列表
     */
    @RequiresPermissions("system:invite:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpInvite ppInvite)
    {
        startPage();
        List<PpInvite> list = ppInviteService.selectPpInviteList(ppInvite);
        return getDataTable(list);
    }

    /**
     * 导出用户邀请关系列表
     */
    @RequiresPermissions("system:invite:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PpInvite ppInvite)
    {
        List<PpInvite> list = ppInviteService.selectPpInviteList(ppInvite);
        ExcelUtil<PpInvite> util = new ExcelUtil<PpInvite>(PpInvite.class);
        return util.exportExcel(list, "invite");
    }

    /**
     * 新增用户邀请关系
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存用户邀请关系
     */
    @RequiresPermissions("system:invite:add")
    @Log(title = "用户邀请关系", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PpInvite ppInvite)
    {
        return toAjax(ppInviteService.manageInsertPpInvite(ppInvite));
    }

    /**
     * 修改用户邀请关系
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        PpInvite ppInvite = ppInviteService.selectPpInviteById(id);
        mmap.put("ppInvite", ppInvite);
        return prefix + "/edit";
    }

    /**
     * 修改保存用户邀请关系
     */
    @RequiresPermissions("system:invite:edit")
    @Log(title = "用户邀请关系", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpInvite ppInvite)
    {
        return toAjax(ppInviteService.manageUpdatePpInvite(ppInvite));
    }

    /**
     * 删除用户邀请关系
     */
    @RequiresPermissions("system:invite:remove")
    @Log(title = "用户邀请关系", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        //将字符串变成Long
        Long id = Long.valueOf(ids);
        int i = ppInviteService.manageInviteById(id);
        return toAjax(i);
    }
}
