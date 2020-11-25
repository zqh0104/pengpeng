package com.pengpeng.v4.controller.feedback;

import java.util.List;

import com.pengpeng.common.annotation.Log;
import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.page.TableDataInfo;
import com.pengpeng.common.enums.BusinessType;
import com.pengpeng.common.utils.poi.ExcelUtil;
import com.pengpeng.v4.pojo.feedback.PpFeedback;
import com.pengpeng.v4.service.feedback.IPpFeedbackService;
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
 * 用户意见反馈Controller
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@Controller
@RequestMapping("/api/feedback")
public class PpFeedbackController extends BaseController
{
    private String prefix = "system/feedback";

    @Autowired
    private IPpFeedbackService ppFeedbackService;

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
        List<PpFeedback> list = ppFeedbackService.selectPpFeedbackList(ppFeedback);
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
    @Log(title = "用户意见反馈", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@Validated PpFeedback ppFeedback)
    {
        return toAjax(ppFeedbackService.insertPpFeedback(ppFeedback));
    }

    /**
     * 修改用户意见反馈
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
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
    public AjaxResult remove(String ids)
    {
        return toAjax(ppFeedbackService.deletePpFeedbackByIds(ids));
    }
}
