package com.pengpeng.v4.controller.gift;

import java.util.List;

import com.pengpeng.common.annotation.Log;
import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.page.TableDataInfo;
import com.pengpeng.common.enums.BusinessType;
import com.pengpeng.common.utils.poi.ExcelUtil;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.pojo.gift.PpGift;
import com.pengpeng.v4.pojo.gift.PpGiftRecord;
import com.pengpeng.v4.service.gift.IPpGiftRecordService;
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

/**
 * 礼物记录Controller
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@Controller
@RequestMapping("/api/gift/record")
public class
PpGiftRecordController extends BaseController
{
    private String prefix = "system/record";

    @Autowired
    private IPpGiftRecordService ppGiftRecordService;

    @RequiresPermissions("system:record:view")
    @GetMapping()
    public String record()
    {
        return prefix + "/record";
    }

    /**
     * 查询礼物记录列表
     */
    @RequiresPermissions("system:record:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpGiftRecord ppGiftRecord)
    {
        startPage();
        List<PpGiftRecord> list = ppGiftRecordService.selectPpGiftRecordList(ppGiftRecord);
        return getDataTable(list);
    }

    /**
     * 导出礼物记录列表
     */
    @RequiresPermissions("system:record:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PpGiftRecord ppGiftRecord)
    {
        List<PpGiftRecord> list = ppGiftRecordService.selectPpGiftRecordList(ppGiftRecord);
        ExcelUtil<PpGiftRecord> util = new ExcelUtil<PpGiftRecord>(PpGiftRecord.class);
        return util.exportExcel(list, "record");
    }


    /**
     * 赠送礼物记录
     */
    @Log(title = "礼物记录", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@Validated PpGiftRecord ppGiftRecord)
    {
        return ppGiftRecordService.insertPpGiftRecord(ppGiftRecord);
    }

    /**
     * 修改礼物记录
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        PpGiftRecord ppGiftRecord = ppGiftRecordService.selectPpGiftRecordById(id);
        mmap.put("ppGiftRecord", ppGiftRecord);
        return prefix + "/edit";
    }

    /**
     * 修改保存礼物记录
     */
    @RequiresPermissions("system:record:edit")
    @Log(title = "礼物记录", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpGiftRecord ppGiftRecord)
    {
        return toAjax(ppGiftRecordService.updatePpGiftRecord(ppGiftRecord));
    }

    /**
     * 删除礼物记录
     */
    @RequiresPermissions("system:record:remove")
    @Log(title = "礼物记录", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ppGiftRecordService.deletePpGiftRecordByIds(ids));
    }


    /**
     * 收到礼物列表
     */
    @Log(title = "收到礼物列表")
    @GetMapping("/receiveGift")
    @ResponseBody
    public TableDataInfo receiveGift() {
        startPage();
        List<PpGiftRecord> ppGifts = ppGiftRecordService.receiveGift(ShiroUtils.getAppUserId());
        return getDataTable(ppGifts);
    }


    /**
     * 他人收到礼物列表
     */
    @Log(title = "他人收到礼物列表")
    @GetMapping("/othersGift")
    @ResponseBody
    public TableDataInfo othersGift(Long otherId) {
        startPage();
        List<PpGiftRecord> ppGifts = ppGiftRecordService.receiveGift(otherId);
        return getDataTable(ppGifts);
    }
}
