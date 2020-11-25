package com.pengpeng.web.controller.app;

import com.pengpeng.common.annotation.Log;
import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.page.TableDataInfo;
import com.pengpeng.common.enums.BusinessType;
import com.pengpeng.common.utils.poi.ExcelUtil;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.pojo.dynamic.PpDynamic;
import com.pengpeng.v4.service.dynamic.IPpDynamicService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * app 动态管理
 * @author pengpeng
 */
@Controller
@RequestMapping("/app/dynamic")
public class AppDynamicController extends BaseController {

    private String prefix = "app/dynamic";

    @Autowired
    private IPpDynamicService ppDynamicService;

    @RequiresPermissions("system:dynamic:view")
    @GetMapping()
    public String dynamic()
    {
        return prefix + "/dynamic";
    }

    /**
     * 查询发布动态列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpDynamic ppDynamic)
    {
        startPage();
        List<PpDynamic> list = ppDynamicService.selectPpDynamicList(ppDynamic);
        return getDataTable(list);
    }

    /**
     * 查询好友动态列表
     */
    @PostMapping("/friendsList")
    @ResponseBody
    public TableDataInfo friendsList(PpDynamic ppDynamic)
    {
        startPage();
        List<PpDynamic> list = ppDynamicService.selectPpDynamicFriendsList(ppDynamic);
        return getDataTable(list);
    }

    /**
     * 导出发布动态列表
     */
    @RequiresPermissions("system:dynamic:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PpDynamic ppDynamic)
    {
        List<PpDynamic> list = ppDynamicService.selectPpDynamicList(ppDynamic);
        ExcelUtil<PpDynamic> util = new ExcelUtil<PpDynamic>(PpDynamic.class);
        return util.exportExcel(list, "dynamic");
    }

    /**
     * 新增发布动态
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存发布动态
     */
    @Log(title = "发布动态", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@Validated PpDynamic ppDynamic)
    {
        return toAjax(ppDynamicService.insertPpDynamic(ppDynamic));
    }

    /**
     * 修改发布动态
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        PpDynamic ppDynamic = ppDynamicService.selectPpDynamicById(id);
        mmap.put("ppDynamic", ppDynamic);
        return prefix + "/edit";
    }

    /**
     * 查询动态详情
     */
    @PostMapping("/details")
    @ResponseBody
    public AjaxResult details(PpDynamic ppDynamic)
    {
        return AjaxResult.success(ppDynamicService.selectPpDynamicById(ppDynamic.getId()));
    }

    /**
     * 修改保存发布动态
     */
    @RequiresPermissions("system:dynamic:edit")
    @Log(title = "发布动态", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpDynamic ppDynamic)
    {
        return toAjax(ppDynamicService.updatePpDynamic(ppDynamic));
    }

    /**
     * 删除发布动态
     */
    @RequiresPermissions("system:dynamic:remove")
    @Log(title = "发布动态", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ppDynamicService.deletePpDynamicByIds(ids));
    }
}
