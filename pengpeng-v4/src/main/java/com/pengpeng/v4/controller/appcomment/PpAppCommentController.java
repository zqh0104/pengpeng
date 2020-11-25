package com.pengpeng.v4.controller.appcomment;

import com.pengpeng.common.annotation.Log;
import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.enums.BusinessType;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.pojo.appcomment.PpAppComment;
import com.pengpeng.v4.service.appcomment.IPpAppCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 【请填写功能名称】Controller
 * 
 * @author pengpeng
 * @date 2020-01-07
 */
@Controller
@RequestMapping("/api/app/comment")
public class PpAppCommentController extends BaseController
{
    private String prefix = "system/comment";

    @Autowired
    private IPpAppCommentService ppAppCommentService;

    /**
     * 新增保存app编辑评论
     */
    @Log(title = "编辑评论")
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PpAppComment ppAppComment) {
        //判断用户是否评论过
        List<PpAppComment> ppAppComments = ppAppCommentService.selectUser(ShiroUtils.getAppUserId());
        if (ppAppComments.size()==0){
            ppAppCommentService.insertPpAppComment(ppAppComment);
            return AjaxResult.success(0);
        }else {
            return AjaxResult.success(1);
        }
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
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpAppComment ppAppComment)
    {
        return toAjax(ppAppCommentService.updatePpAppComment(ppAppComment));
    }

}
