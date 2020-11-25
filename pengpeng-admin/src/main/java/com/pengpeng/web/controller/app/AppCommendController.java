package com.pengpeng.web.controller.app;

import com.pengpeng.common.annotation.Log;
import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.page.TableDataInfo;
import com.pengpeng.common.enums.BusinessType;
import com.pengpeng.common.utils.poi.ExcelUtil;
import com.pengpeng.v4.pojo.dynamic.PpCommendRecord;
import com.pengpeng.v4.service.dynamic.IPpCommendRecordService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 点赞记录Controller
 *
 * @author ruoyi
 * @date 2019-12-10
 */
@Controller
@RequestMapping("/app/commend")
public class AppCommendController extends BaseController
{
    private String prefix = "app/commend";

    @Autowired
    private IPpCommendRecordService ppCommendRecordService;

    @RequiresPermissions("system:record:view")
    @GetMapping()
    public String record()
    {
        return prefix + "/record";
    }

    /**
     * 消息 ---查询点我的赞记录列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpCommendRecord ppCommendRecord)
    {
        startPage();
        List<PpCommendRecord> list = ppCommendRecordService.selectAllPpCommendRecordList(ppCommendRecord);
        return getDataTable(list);
    }

    /**
     * 导出点赞记录列表
     */
    @RequiresPermissions("system:record:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PpCommendRecord ppCommendRecord)
    {
        List<PpCommendRecord> list = ppCommendRecordService.selectPpCommendRecordList(ppCommendRecord);
        ExcelUtil<PpCommendRecord> util = new ExcelUtil<PpCommendRecord>(PpCommendRecord.class);
        return util.exportExcel(list, "record");
    }

    /**
     * 新增点赞记录
     */
    @GetMapping("/add")
    @RequiresPermissions("system:record:view")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存点赞记录
     */
    @Log(title = "点赞记录", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@Validated PpCommendRecord ppCommendRecord)
    {
        return toAjax(ppCommendRecordService.insertPpCommendRecord(ppCommendRecord));
    }

    /**
     * 修改点赞记录
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        PpCommendRecord ppCommendRecord = ppCommendRecordService.selectPpCommendRecordById(id);
        mmap.put("ppCommendRecord", ppCommendRecord);
        return prefix + "/edit";
    }

    /**
     * 修改保存点赞记录
     */
    @Log(title = "点赞记录", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpCommendRecord ppCommendRecord)
    {
        return toAjax(ppCommendRecordService.updatePpCommendRecord(ppCommendRecord));
    }

    /**
     * 删除点赞记录
     */
    @Log(title = "点赞记录", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ppCommendRecordService.deletePpCommendRecordByIds(ids));
    }
}
