package com.pengpeng.web.controller.app;

import java.util.List;

import com.pengpeng.common.utils.poi.ExcelUtil;
import com.pengpeng.v4.pojo.slide.PpSlideRecord;
import com.pengpeng.v4.service.slide.IPpSlideRecordService;
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
import com.pengpeng.common.core.page.TableDataInfo;

/**
 * 【请填写功能名称】Controller
 *
 * @author pengpeng
 * @date 2019-12-21
 */
@Controller
@RequestMapping("/app/slide")
public class AppSlideRecordController extends BaseController
{
    private String prefix = "app/slide";

    @Autowired
    private IPpSlideRecordService ppSlideRecordService;

    @RequiresPermissions("system:slide:view")
    @GetMapping()
    public String record()
    {
        return prefix + "/slide";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("system:slide:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpSlideRecord ppSlideRecord)
    {
        startPage();
        List<PpSlideRecord> list = ppSlideRecordService.selectPpSlideRecordList(ppSlideRecord);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("system:slide:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PpSlideRecord ppSlideRecord)
    {
        List<PpSlideRecord> list = ppSlideRecordService.selectPpSlideRecordList(ppSlideRecord);
        ExcelUtil<PpSlideRecord> util = new ExcelUtil<PpSlideRecord>(PpSlideRecord.class);
        return util.exportExcel(list, "record");
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
    @RequiresPermissions("system:slide:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PpSlideRecord ppSlideRecord)
    {
        return toAjax(ppSlideRecordService.insertPpSlideRecord(ppSlideRecord));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        PpSlideRecord ppSlideRecord = ppSlideRecordService.selectPpSlideRecordById(id);
        mmap.put("ppSlideRecord", ppSlideRecord);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("system:slide:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpSlideRecord ppSlideRecord)
    {
        return toAjax(ppSlideRecordService.updatePpSlideRecord(ppSlideRecord));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("system:slide:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ppSlideRecordService.deletePpSlideRecordByIds(ids));
    }
}
