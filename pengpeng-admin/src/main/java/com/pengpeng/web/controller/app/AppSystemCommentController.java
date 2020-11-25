package com.pengpeng.web.controller.app;

import java.util.List;

import com.pengpeng.v4.pojo.appcomment.PpAppComment;
import com.pengpeng.v4.service.appcomment.IPpAppCommentService;
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
 * App用户对系统的评论Controller
 * 
 * @author pengpeng
 * @date 2020-01-08
 */
@Controller
@RequestMapping("/app/systemcomment")
public class AppSystemCommentController extends BaseController
{
    private String prefix = "app/systemcomment";

    @Autowired
    private IPpAppCommentService ppAppCommentService;

    @RequiresPermissions("system:comment:view")
    @GetMapping()
    public String comment()
    {
        return prefix + "/comment";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("system:comment:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpAppComment ppAppComment)
    {
        startPage();
        List<PpAppComment> list = ppAppCommentService.selectPpAppCommentList(ppAppComment);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("system:comment:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PpAppComment ppAppComment)
    {
        List<PpAppComment> list = ppAppCommentService.selectPpAppCommentList(ppAppComment);
        ExcelUtil<PpAppComment> util = new ExcelUtil<PpAppComment>(PpAppComment.class);
        return util.exportExcel(list, "comment");
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
    @RequiresPermissions("system:comment:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PpAppComment ppAppComment)
    {
        return toAjax(ppAppCommentService.insertPpAppComment(ppAppComment));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        PpAppComment ppAppComment = ppAppCommentService.selectPpAppCommentById(id);
        mmap.put("ppAppComment", ppAppComment);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("system:comment:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpAppComment ppAppComment)
    {
        return toAjax(ppAppCommentService.updatePpAppComment(ppAppComment));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("system:comment:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ppAppCommentService.deletePpAppCommentByIds(ids));
    }
}
