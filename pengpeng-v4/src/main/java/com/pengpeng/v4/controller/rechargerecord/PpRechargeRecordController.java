package com.pengpeng.v4.controller.rechargerecord;

import java.util.List;

import com.pengpeng.v4.pojo.rechargerecord.PpRechargeRecord;
import com.pengpeng.v4.service.rechargerecord.IPpRechargeRecordService;
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
 * 充值记录Controller
 * 
 * @author pengpeng
 * @date 2019-12-21
 */
@Controller
@RequestMapping("/api/record")
public class PpRechargeRecordController extends BaseController
{
    private String prefix = "system/record";

    @Autowired
    private IPpRechargeRecordService ppRechargeRecordService;

    @RequiresPermissions("system:record:view")
    @GetMapping()
    public String record()
    {
        return prefix + "/record";
    }

    /**
     * 查询充值记录列表
     */
    @RequiresPermissions("system:record:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpRechargeRecord ppRechargeRecord)
    {
        startPage();
        List<PpRechargeRecord> list = ppRechargeRecordService.selectPpRechargeRecordList(ppRechargeRecord);
        return getDataTable(list);
    }

    /**
     * 导出充值记录列表
     */
    @RequiresPermissions("system:record:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PpRechargeRecord ppRechargeRecord)
    {
        List<PpRechargeRecord> list = ppRechargeRecordService.selectPpRechargeRecordList(ppRechargeRecord);
        ExcelUtil<PpRechargeRecord> util = new ExcelUtil<PpRechargeRecord>(PpRechargeRecord.class);
        return util.exportExcel(list, "record");
    }

    /**
     * 新增充值记录
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存充值记录
     */
    @RequiresPermissions("system:record:add")
    @Log(title = "充值记录", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PpRechargeRecord ppRechargeRecord)
    {
        return toAjax(ppRechargeRecordService.insertPpRechargeRecord(ppRechargeRecord));
    }

    /**
     * 修改充值记录
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        PpRechargeRecord ppRechargeRecord = ppRechargeRecordService.selectPpRechargeRecordById(id);
        mmap.put("ppRechargeRecord", ppRechargeRecord);
        return prefix + "/edit";
    }

    /**
     * 修改保存充值记录
     */
    @RequiresPermissions("system:record:edit")
    @Log(title = "充值记录", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpRechargeRecord ppRechargeRecord)
    {
        return toAjax(ppRechargeRecordService.updatePpRechargeRecord(ppRechargeRecord));
    }

    /**
     * 删除充值记录
     */
    @RequiresPermissions("system:record:remove")
    @Log(title = "充值记录", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ppRechargeRecordService.deletePpRechargeRecordByIds(ids));
    }
}
