package com.pengpeng.web.controller.app;

import com.pengpeng.common.annotation.Log;
import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.page.TableDataInfo;
import com.pengpeng.common.enums.BusinessType;
import com.pengpeng.common.utils.poi.ExcelUtil;
import com.pengpeng.v4.pojo.level.PpLevel;
import com.pengpeng.v4.service.level.IPpLevelService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * app等级管理
 * @author pengpeng
 */
@Controller
@RequestMapping("/app/level")
public class AppLevelController extends BaseController {

    private static String prefix = "app/level";

    @Autowired
    private IPpLevelService ppLevelService;

    @RequiresPermissions("system:level:view")
    @GetMapping()
    public String level()
    {
        return prefix + "/level";
    }

    /**
     * 查询财富等级列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpLevel ppLevel)
    {
        startPage();
        List<PpLevel> list = ppLevelService.selectPpLevelList(ppLevel);
        return getDataTable(list);
    }

    /**
     * 导出财富等级列表
     */
    @RequiresPermissions("system:level:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PpLevel ppLevel)
    {
        List<PpLevel> list = ppLevelService.selectPpLevelList(ppLevel);
        ExcelUtil<PpLevel> util = new ExcelUtil<PpLevel>(PpLevel.class);
        return util.exportExcel(list, "level");
    }

    /**
     * 新增财富等级
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存财富等级
     */
    @RequiresPermissions("system:level:add")
    @Log(title = "财富等级", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PpLevel ppLevel)
    {
        return toAjax(ppLevelService.insertPpLevel(ppLevel));
    }

    /**
     * 修改财富等级
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        PpLevel ppLevel = ppLevelService.selectPpLevelById(id);
        mmap.put("ppLevel", ppLevel);
        return prefix + "/edit";
    }

    /**
     * 修改保存财富等级
     */
    @RequiresPermissions("system:level:edit")
    @Log(title = "财富等级", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpLevel ppLevel)
    {
        return toAjax(ppLevelService.updatePpLevel(ppLevel));
    }

    /**
     * 删除财富等级
     */
    @RequiresPermissions("system:level:remove")
    @Log(title = "财富等级", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ppLevelService.deletePpLevelByIds(ids));
    }
}
