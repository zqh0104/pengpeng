package com.pengpeng.v4.controller.comment;

import java.util.List;

import com.pengpeng.common.annotation.Log;
import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.page.TableDataInfo;
import com.pengpeng.common.enums.BusinessType;
import com.pengpeng.common.utils.poi.ExcelUtil;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.pojo.comment.PpComment;
import com.pengpeng.v4.service.comment.IPpCommentService;
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
 * 评论Controller
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@Controller
@RequestMapping("/api/comment")
public class PpCommentController extends BaseController {
    private String prefix = "system/comment";

    @Autowired
    private IPpCommentService ppCommentService;

    @RequiresPermissions("system:comment:view")
    @GetMapping()
    public String comment() {
        return prefix + "/comment";
    }

    /**
     * 消息 ---查询评论列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpComment ppComment) {
        startPage();
        List<PpComment> list = ppCommentService.selectPpCommentList(ppComment);
        return getDataTable(list);
    }

    /**
     * 查询动态下面所有评论
     */
    @PostMapping("/pllist")
    @ResponseBody
    public TableDataInfo pllist(PpComment ppComment) {
        startPage();
        List<PpComment> list = ppCommentService.selectPpCommentPllist(ppComment);
        return getDataTable(list);
    }

    /**
     * 新增评论
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存评论
     */
    @Log(title = "评论", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@Validated PpComment ppComment) {
        return ppCommentService.insertPpComment(ppComment);
    }

    /**
     * 修改评论
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        PpComment ppComment = ppCommentService.selectPpCommentById(id);
        mmap.put("ppComment", ppComment);
        return prefix + "/edit";
    }

    /**
     * 修改保存评论
     */
    @Log(title = "评论", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpComment ppComment) {
        return toAjax(ppCommentService.updatePpComment(ppComment));
    }

    /**
     * 删除评论
     */
    @Log(title = "评论", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(ppCommentService.deletePpCommentByIds(ids));
    }


    /**
     * 别人评论我的
     */
    @Log(title = "别人评论我的")
    @GetMapping("/otherComment")
    @ResponseBody
    public TableDataInfo otherComment() {
        startPage();
        List<PpComment> list = ppCommentService.otherComment(ShiroUtils.getAppUserId());
        return getDataTable(list);
    }
}
