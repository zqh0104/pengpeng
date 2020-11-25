package com.pengpeng.web.controller.app;

import java.util.List;

import com.pengpeng.v4.pojo.viporder.PpVipOrder;
import com.pengpeng.v4.service.viporder.IPpVipOrderService;
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
 * 会员记录Controller
 * 
 * @author pengpeng
 * @date 2019-12-23
 */
@Controller
@RequestMapping("/app/viporder")
public class AppVipOrderController extends BaseController
{
    private String prefix = "app/viporder";

    @Autowired
    private IPpVipOrderService ppVipOrderService;

    @RequiresPermissions("system:order:view")
    @GetMapping()
    public String order()
    {
        return prefix + "/order";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("system:order:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpVipOrder ppVipOrder)
    {
        startPage();
        List<PpVipOrder> list = ppVipOrderService.selectPpVipOrderList(ppVipOrder);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("system:order:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PpVipOrder ppVipOrder)
    {
        List<PpVipOrder> list = ppVipOrderService.selectPpVipOrderList(ppVipOrder);
        ExcelUtil<PpVipOrder> util = new ExcelUtil<PpVipOrder>(PpVipOrder.class);
        return util.exportExcel(list, "order");
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
    @RequiresPermissions("system:order:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PpVipOrder ppVipOrder)
    {
        return toAjax(ppVipOrderService.insertPpVipOrder(ppVipOrder));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        PpVipOrder ppVipOrder = ppVipOrderService.selectPpVipOrderById(id);
        mmap.put("ppVipOrder", ppVipOrder);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("system:order:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpVipOrder ppVipOrder)
    {
        return toAjax(ppVipOrderService.updatePpVipOrder(ppVipOrder));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("system:order:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ppVipOrderService.deletePpVipOrderByIds(ids));
    }
}
