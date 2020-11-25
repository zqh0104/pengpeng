package com.pengpeng.web.controller.app;

import com.pengpeng.common.annotation.Log;
import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.page.TableDataInfo;
import com.pengpeng.common.enums.BusinessType;
import com.pengpeng.common.utils.poi.ExcelUtil;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.pojo.member.PpMember;
import com.pengpeng.v4.pojo.member.PpmemberDto;
import com.pengpeng.v4.pojo.whistleblowing.PpUserWhistleBlowing;
import com.pengpeng.v4.service.member.IPpMemberService;
import com.pengpeng.v4.service.whistleblowing.IPpUserWhistleBlowingService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.List;

/**
 * 用户Controller
 *
 * @author ruoyi
 * @date 2019-12-10
 */
@Controller
@RequestMapping("/app/member")
public class AppMemberController extends BaseController
{
    private String prefix = "app/member";

    @Autowired
    private IPpMemberService ppMemberService;

    @Autowired
    private IPpUserWhistleBlowingService ppUserWhistleBlowingService;

    @RequiresPermissions("system:member:view")
    @GetMapping()
    public String member()
    {
        return prefix + "/member";
    }

    /**
     * 查询用户列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpMember ppMember)
    {
        startPage();
        List<PpMember> list = ppMemberService.selectPpMemberList(ppMember);
        return getDataTable(list);
    }

    /**
     * 新增用户扩展
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }


    /**
     * 导出用户列表
     */
    @RequiresPermissions("system:member:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PpMember ppMember)
    {
        List<PpMember> list = ppMemberService.selectPpMemberList(ppMember);
        ExcelUtil<PpMember> util = new ExcelUtil<PpMember>(PpMember.class);
        return util.exportExcel(list, "mapper/member");
    }


    /**
     * 新增保存用户
     */
    @Log(title = "用户", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PpMember ppMember)
    {
        return ppMemberService.insertPpMemberForPc(ppMember);
    }

    /**
     * 编辑用户资料 修改用户
     */
    @Log(title = "判断是否是会员")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        PpMember ppMember = ppMemberService.selectPpMemberById(id);
        mmap.put("ppMember", ppMember);
        return prefix + "/edit";
    }

    /**
     * 修改保存用户
     */
    @Log(title = "用户", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpMember ppMember)
    {
        return toAjax(ppMemberService.updatePpMember(ppMember));
    }

    /**
     * 删除用户
     */
    @RequiresPermissions("system:member:remove")
    @Log(title = "用户", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ppMemberService.deletePpMemberByIds(ids));
    }


    @RequiresPermissions("system:vipmember:view")
    @GetMapping("/vip")
    public String vipMember()
    {
        return prefix + "/vipmember";
    }

    /**
     * 查询vip列表
     */
    @PostMapping("/viplist")
    @ResponseBody
    public TableDataInfo viplist(PpMember ppMember)
    {
        startPage();
        ppMember.setIsvip(1);
        List<PpMember> list = ppMemberService.selectPpMemberList(ppMember);
        return getDataTable(list);
    }

    /**
     * 举报用户页面
     * @return
     */
    @RequiresPermissions("system:blowing:view")
    @GetMapping("/blowing")
    public String blowing()
    {
        return prefix + "/blowing";
    }
    /**
     * 查询用户举报列表
     */
    @RequiresPermissions("system:blowing:list")
    @PostMapping("/blowing/list")
    @ResponseBody
    public TableDataInfo blowinglist(PpUserWhistleBlowing ppUserWhistleBlowing)
    {
        startPage();
        List<PpUserWhistleBlowing> list = ppUserWhistleBlowingService.selectPpUserWhistleBlowingList(ppUserWhistleBlowing);
        return getDataTable(list);
    }

    /**
     * 删除用户举报
     */
    @Log(title = "用户举报", businessType = BusinessType.DELETE)
    @PostMapping( "/blowing/remove")
    @ResponseBody
    public AjaxResult blowingremove(String ids)
    {
        return toAjax(ppUserWhistleBlowingService.deletePpUserWhistleBlowingByIds(ids));
    }
}
