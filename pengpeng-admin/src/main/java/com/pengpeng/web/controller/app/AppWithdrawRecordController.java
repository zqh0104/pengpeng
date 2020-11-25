package com.pengpeng.web.controller.app;

import java.util.List;

import com.pengpeng.v4.pojo.withdraw.PpwithdrawRecord;
import com.pengpeng.v4.service.withdraw.IPpwithdrawRecordService;
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
 * 用户提现记录Controller
 * 
 * @author pengpeng
 * @date 2019-12-23
 */
@Controller
@RequestMapping("/app/withdrawrecord")
public class AppWithdrawRecordController extends BaseController
{
    private String prefix = "app/withdrawrecord";

    @Autowired
    private IPpwithdrawRecordService ppwithdrawRecordService;

    @RequiresPermissions("system:withdrawrecord:view")
    @GetMapping()
    public String record()
    {
        return prefix + "/record";
    }

    /**
     * 查询用户提现记录列表
     */
    @RequiresPermissions("system:record:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpwithdrawRecord ppwithdrawRecord)
    {
        startPage();
        List<PpwithdrawRecord> list = ppwithdrawRecordService.selectPpwithdrawRecordList(ppwithdrawRecord);
        return getDataTable(list);
    }

    /**
     * 导出用户提现记录列表
     */
    @RequiresPermissions("system:record:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PpwithdrawRecord ppWithdrawRecord)
    {
        List<PpwithdrawRecord> list = ppwithdrawRecordService.selectPpwithdrawRecordList(ppWithdrawRecord);
        ExcelUtil<PpwithdrawRecord> util = new ExcelUtil<PpwithdrawRecord>(PpwithdrawRecord.class);
        return util.exportExcel(list, "record");
    }

    /**
     * 新增用户提现记录
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存用户提现记录
     */
    @RequiresPermissions("system:record:add")
    /**
     * 新增保存用户提现记录
     */
    @Log(title = "用户提现记录", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PpwithdrawRecord ppwithdrawRecord)
    {
        return ppwithdrawRecordService.insertPpwithdrawRecord(ppwithdrawRecord);
    }



    /**
     * 修改用户提现记录
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        System.out.println(id);
        PpwithdrawRecord ppWithdrawRecord = ppwithdrawRecordService.selectPpwithdrawRecordById(id);
        mmap.put("ppWithdrawRecord", ppWithdrawRecord);
        return prefix + "/edit";
    }

    /**
     * 修改保存用户提现记录
     */
    @RequiresPermissions("system:record:edit")
    @Log(title = "用户提现记录", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpwithdrawRecord ppWithdrawRecord)
    {
        return toAjax(ppwithdrawRecordService.updatePpwithdrawRecord(ppWithdrawRecord));
    }

    /**
     * 删除用户提现记录
     */
    @RequiresPermissions("system:record:remove")
    @Log(title = "用户提现记录", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ppwithdrawRecordService.deletePpwithdrawRecordByIds(ids));
    }
}
