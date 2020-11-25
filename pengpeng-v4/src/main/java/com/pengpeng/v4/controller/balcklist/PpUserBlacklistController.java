package com.pengpeng.v4.controller.balcklist;

import com.pengpeng.common.annotation.Log;
import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.page.TableDataInfo;
import com.pengpeng.common.enums.BusinessType;
import com.pengpeng.v4.pojo.balcklist.PpUserBlacklist;
import com.pengpeng.v4.service.balcklist.IPpUserBlacklistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 用户拉黑Controller
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@Controller
@RequestMapping("/api/blacklist")
public class PpUserBlacklistController extends BaseController
{

    @Autowired
    private IPpUserBlacklistService ppUserBlacklistService;

    /**
     * 查询用户拉黑列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpUserBlacklist ppUserBlacklist)
    {
        startPage();
        List<PpUserBlacklist> list = ppUserBlacklistService.selectPpUserBlackList(ppUserBlacklist);
        return getDataTable(list);
    }

    /**
     * 新增保存用户拉黑
     */
    @Log(title = "用户拉黑", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@Validated PpUserBlacklist ppUserBlacklist)
    {
        return toAjax(ppUserBlacklistService.insertPpUserBlacklist(ppUserBlacklist));
    }


    /**
     * 修改保存用户拉黑
     */
    @Log(title = "用户拉黑", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpUserBlacklist ppUserBlacklist)
    {
        return toAjax(ppUserBlacklistService.updatePpUserBlacklist(ppUserBlacklist));
    }

    /**
     * 删除用户拉黑
     */
    @Log(title = "用户拉黑", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ppUserBlacklistService.deletePpUserBlacklistByIds(ids));
    }
}
