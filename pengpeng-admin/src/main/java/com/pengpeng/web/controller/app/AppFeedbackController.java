package com.pengpeng.web.controller.app;

import java.util.List;

import com.pengpeng.v4.pojo.feedback.PpFeedback;
import com.pengpeng.v4.service.feedback.IPpFeedbackService;
import com.pengpeng.v4.service.files.IPpFilesService;
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
 * 用户意见反馈Controller
 * 
 * @author pengpeng
 * @date 2019-12-23
 */
@Controller
@RequestMapping("/app/feedback")
public class AppFeedbackController extends BaseController
{
    private String prefix = "app/feedback";

    @Autowired
    private IPpFeedbackService ppFeedbackService;
    @Autowired
    private IPpFilesService ppFilesService;

    @RequiresPermissions("system:feedback:view")
    @GetMapping()
    public String feedback()
    {
        return prefix + "/feedback";
    }

    /**
     * 查询用户意见反馈列表
     */
    @RequiresPermissions("system:feedback:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpFeedback ppFeedback)
    {
        startPage();
        List<PpFeedback> list = ppFeedbackService.backgroundList(ppFeedback);
        return getDataTable(list);
    }

    /**
     * 导出用户意见反馈列表
     */
    @RequiresPermissions("system:feedback:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PpFeedback ppFeedback)
    {
        List<PpFeedback> list = ppFeedbackService.selectPpFeedbackList(ppFeedback);
        ExcelUtil<PpFeedback> util = new ExcelUtil<PpFeedback>(PpFeedback.class);
        return util.exportExcel(list, "feedback");
    }

    /**
     * 新增用户意见反馈
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存用户意见反馈
     */
    @RequiresPermissions("system:feedback:add")
    @Log(title = "用户意见反馈", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PpFeedback ppFeedback)
    {
        return toAjax(ppFeedbackService.insertPpFeedback(ppFeedback));
    }

    /**
     * 修改用户意见反馈
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        System.out.println(id);
        PpFeedback ppFeedback = ppFeedbackService.selectPpFeedbackById(id);
        mmap.put("ppFeedback", ppFeedback);
        return prefix + "/edit";
    }

    /**
     * 修改保存用户意见反馈
     */
    @RequiresPermissions("system:feedback:edit")
    @Log(title = "用户意见反馈", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpFeedback ppFeedback)
    {
        return toAjax(ppFeedbackService.updatePpFeedback(ppFeedback));
    }

    /**
     * 删除用户意见反馈
     */
    @RequiresPermissions("system:feedback:remove")
    @Log(title = "用户意见反馈", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(ppFeedbackService.backgroundDeleteByIds(ids));
    }
}
