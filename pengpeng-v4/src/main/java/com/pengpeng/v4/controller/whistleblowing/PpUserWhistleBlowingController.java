package com.pengpeng.v4.controller.whistleblowing;

import com.pengpeng.common.annotation.Log;
import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.page.TableDataInfo;
import com.pengpeng.common.enums.BusinessType;
import com.pengpeng.v4.pojo.whistleblowing.PpUserWhistleBlowing;
import com.pengpeng.v4.service.whistleblowing.IPpUserWhistleBlowingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 用户举报Controller
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@Controller
@RequestMapping("/api/blowing")
public class PpUserWhistleBlowingController extends BaseController
{

    @Autowired
    private IPpUserWhistleBlowingService ppUserWhistleBlowingService;


    /**
     * 查询用户举报列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpUserWhistleBlowing ppUserWhistleBlowing)
    {
        startPage();
        List<PpUserWhistleBlowing> list = ppUserWhistleBlowingService.selectPpUserWhistleBlowingList(ppUserWhistleBlowing);
        return getDataTable(list);
    }


    /**
     * 新增保存用户举报
     */
    @Log(title = "用户举报", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@Validated PpUserWhistleBlowing ppUserWhistleBlowing)
    {
        return toAjax(ppUserWhistleBlowingService.insertPpUserWhistleBlowing(ppUserWhistleBlowing));
    }


    /**
     * 修改保存用户举报
     */
    @Log(title = "用户举报", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpUserWhistleBlowing ppUserWhistleBlowing)
    {
        return toAjax(ppUserWhistleBlowingService.updatePpUserWhistleBlowing(ppUserWhistleBlowing));
    }

    /**
     * 删除用户举报
     */
    @Log(title = "用户举报", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ppUserWhistleBlowingService.deletePpUserWhistleBlowingByIds(ids));
    }
}
