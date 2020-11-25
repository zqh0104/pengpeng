package com.pengpeng.web.controller.app;

import java.util.List;

import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.pojo.balace.PpBalaceRecord;
import com.pengpeng.v4.service.balace.IPpBalaceRecordService;
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
 * 余额变动 不可提取Controller
 *
 * @author pengpeng
 * @date 2019-12-21
 */
@Controller
@RequestMapping("/app/blance")
public class AppBlanceRecordController extends BaseController {

    private String prefix = "app/blance";

    @Autowired
    private IPpBalaceRecordService ppBalaceRecordService;

    @RequiresPermissions("system:blance:view")
    @GetMapping()
    public String record()
    {
        return prefix + "/blance";
    }

    /**
     * 查询余额变动 不可提取列表
     */
    @RequiresPermissions("system:blance:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpBalaceRecord ppBalaceRecord)
    {
        startPage();
        List<PpBalaceRecord> list = ppBalaceRecordService.selectPpBalaceRecordList(ppBalaceRecord);
        return getDataTable(list);
    }

    /**
     * 导出余额变动 不可提取列表
     */
    @RequiresPermissions("system:blance:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PpBalaceRecord ppBalaceRecord)
    {
        List<PpBalaceRecord> list = ppBalaceRecordService.selectPpBalaceRecordList(ppBalaceRecord);
        ExcelUtil<PpBalaceRecord> util = new ExcelUtil<PpBalaceRecord>(PpBalaceRecord.class);
        return util.exportExcel(list, "record");
    }

    /**
     * 新增余额变动 不可提取
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存余额变动 不可提取
     */
    @RequiresPermissions("system:blance:add")
    @Log(title = "余额变动 不可提取", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PpBalaceRecord ppBalaceRecord)
    {
        return toAjax(ppBalaceRecordService.insertPpBalaceRecord(ppBalaceRecord));
    }

    /**
     * 修改余额变动 不可提取
     */
    @GetMapping("/edit/{balanceId}")
    public String edit(@PathVariable("balanceId") Long balanceId, ModelMap mmap)
    {
        PpBalaceRecord ppBalaceRecord = ppBalaceRecordService.selectPpBalaceRecordById(balanceId);
        mmap.put("ppBalaceRecord", ppBalaceRecord);
        return prefix + "/edit";
    }

    /**
     * 修改保存余额变动 不可提取
     */
    @RequiresPermissions("system:blance:edit")
    @Log(title = "余额变动 不可提取", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpBalaceRecord ppBalaceRecord)
    {
        return toAjax(ppBalaceRecordService.updatePpBalaceRecord(ppBalaceRecord));
    }

    /**
     * 删除余额变动 不可提取
     */
    @RequiresPermissions("system:blance:remove")
    @Log(title = "余额变动 不可提取", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ppBalaceRecordService.deletePpBalaceRecordByIds(ids));
    }

    /**
     * 获取用户信息 关联礼物记录表和充值记录表
     */
    @PostMapping("/selectList")
    @ResponseBody
    public TableDataInfo selectList() {
        startPage();
        List<PpBalaceRecord> list = ppBalaceRecordService.selectUser(ShiroUtils.getAppUserId());
        return getDataTable(list);
    }
}
