package com.pengpeng.web.controller.app;

import java.util.List;

import com.pengpeng.v4.pojo.rechargespec.PpRechargeSpec;
import com.pengpeng.v4.service.rechargespec.IPpRechargeSpecService;
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
 * 充值规格Controller
 * 
 * @author pengpeng
 * @date 2019-12-23
 */
@Controller
@RequestMapping("/app/rechargespec")
public class AppRechargeSpecController extends BaseController
{
    private String prefix = "app/rechargespec";

    @Autowired
    private IPpRechargeSpecService ppRechargeSpecService;

    @RequiresPermissions("system:rechargespec:view")
    @GetMapping()
    public String spec()
    {
        return prefix + "/spec";
    }

    /**
     * 查询充值规格列表
     */
    @RequiresPermissions("system:spec:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpRechargeSpec ppRechargeSpec)
    {
        startPage();
        List<PpRechargeSpec> list = ppRechargeSpecService.selectPpRechargeSpecList(ppRechargeSpec);
        return getDataTable(list);
    }

    /**
     * 导出充值规格列表
     */
    @RequiresPermissions("system:spec:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PpRechargeSpec ppRechargeSpec)
    {
        List<PpRechargeSpec> list = ppRechargeSpecService.selectPpRechargeSpecList(ppRechargeSpec);
        ExcelUtil<PpRechargeSpec> util = new ExcelUtil<PpRechargeSpec>(PpRechargeSpec.class);
        return util.exportExcel(list, "spec");
    }

    /**
     * 新增充值规格
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存充值规格
     */
    @RequiresPermissions("system:spec:add")
    @Log(title = "充值规格", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PpRechargeSpec ppRechargeSpec)
    {
        return toAjax(ppRechargeSpecService.insertPpRechargeSpec(ppRechargeSpec));
    }

    /**
     * 修改充值规格
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        PpRechargeSpec ppRechargeSpec = ppRechargeSpecService.selectPpRechargeSpecById(id);
        mmap.put("ppRechargeSpec", ppRechargeSpec);
        return prefix + "/edit";
    }

    /**
     * 修改保存充值规格
     */
    @RequiresPermissions("system:spec:edit")
    @Log(title = "充值规格", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpRechargeSpec ppRechargeSpec)
    {
        return toAjax(ppRechargeSpecService.updatePpRechargeSpec(ppRechargeSpec));
    }

    /**
     * 删除充值规格
     */
    @RequiresPermissions("system:spec:remove")
    @Log(title = "充值规格", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ppRechargeSpecService.deletePpRechargeSpecByIds(ids));
    }
}
