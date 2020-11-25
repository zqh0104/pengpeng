package com.pengpeng.web.controller.app;

import java.util.List;

import com.pengpeng.v4.pojo.push.PpPush;
import com.pengpeng.v4.service.push.IPpPushService;
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
 * 推送记录列Controller
 * 
 * @author pengpeng
 * @date 2019-12-24
 */
@Controller
@RequestMapping("/app/push")
public class AppPushController extends BaseController {

    private String prefix = "app/push";

    @Autowired
    private IPpPushService ppPushService;

    @RequiresPermissions("system:push:view")
    @GetMapping()
    public String push()
    {
        return prefix + "/push";
    }

    /**
     * 查询推送记录列列表
     */
    @RequiresPermissions("system:push:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpPush ppPush)
    {
        startPage();
        List<PpPush> list = ppPushService.selectPpPushList(ppPush);
        return getDataTable(list);
    }

    /**
     * 导出推送记录列列表
     */
    @RequiresPermissions("system:push:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PpPush ppPush)
    {
        List<PpPush> list = ppPushService.selectPpPushList(ppPush);
        ExcelUtil<PpPush> util = new ExcelUtil<PpPush>(PpPush.class);
        return util.exportExcel(list, "push");
    }

    /**
     * 新增推送记录列
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存推送记录列
     */
    @RequiresPermissions("system:push:add")
    @Log(title = "推送记录列", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PpPush ppPush)
    {
        return toAjax(ppPushService.insertPpPush(ppPush));
    }

    /**
     * 修改推送记录列
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        PpPush ppPush = ppPushService.selectPpPushById(id);
        mmap.put("ppPush", ppPush);
        return prefix + "/edit";
    }

    /**
     * 修改保存推送记录列
     */
    @RequiresPermissions("system:push:edit")
    @Log(title = "推送记录列", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpPush ppPush)
    {
        return toAjax(ppPushService.updatePpPush(ppPush));
    }

    /**
     * 删除推送记录列
     */
    @RequiresPermissions("system:push:remove")
    @Log(title = "推送记录列", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ppPushService.deletePpPushByIds(ids));
    }
}
