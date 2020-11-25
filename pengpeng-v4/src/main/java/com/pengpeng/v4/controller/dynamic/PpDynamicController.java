package com.pengpeng.v4.controller.dynamic;

import com.pengpeng.common.annotation.Log;
import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.page.TableDataInfo;
import com.pengpeng.common.enums.BusinessType;
import com.pengpeng.common.json.JSONObject;
import com.pengpeng.common.utils.poi.ExcelUtil;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.pojo.dynamic.PpDynamic;
import com.pengpeng.v4.service.dynamic.IPpDynamicService;
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
 * 发布动态Controller
 *
 * @author ruoyi
 * @date 2019-12-10
 */
@Controller
@RequestMapping("/api/dynamic")
public class PpDynamicController extends BaseController {

    @Autowired
    private IPpDynamicService ppDynamicService;

    /**
     * 查询发布动态列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpDynamic ppDynamic) {
        startPage();
        ppDynamic.setUserId(ShiroUtils.getAppUserId());
        List<PpDynamic> list = ppDynamicService.selectPpDynamicList(ppDynamic);
        return getDataTable(list);
    }

    /**
     * 查询好友动态列表
     */
    @PostMapping("/friendsList")
    @ResponseBody
    public TableDataInfo friendsList(PpDynamic ppDynamic) {
//        startPage();
        List<PpDynamic> list = ppDynamicService.selectPpDynamicFriendsList(ppDynamic);
        return getDataTable(list);
    }

    /**
     * 新增保存发布动态
     */
    @Log(title = "发布动态", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave( PpDynamic ppDynamic) {
        return toAjax(ppDynamicService.insertPpDynamic(ppDynamic));
    }

    /**
     * 查询动态详情
     */
    @PostMapping("/details")
    @ResponseBody
    public AjaxResult details(PpDynamic ppDynamic) {
        return AjaxResult.success(ppDynamicService.selectPpDynamicById(ppDynamic.getId()));
    }

    /**
     * 修改保存发布动态
     */
    @RequiresPermissions("system:dynamic:edit")
    @Log(title = "发布动态", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpDynamic ppDynamic) {
        return toAjax(ppDynamicService.updatePpDynamic(ppDynamic));
    }

    /**
     * 删除发布动态
     */
    @RequiresPermissions("system:dynamic:remove")
    @Log(title = "发布动态", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(ppDynamicService.deletePpDynamicByIds(ids));
    }

    @PostMapping("/unreadMessage")
    @ResponseBody
    public AjaxResult unreadMessage() {

        JSONObject result = ppDynamicService.unreadMessage();
        return AjaxResult.success(result);
    }

    /**
     * 查询发布动态列表
     */
    @PostMapping("/otherlist")
    @ResponseBody
    public TableDataInfo otherlist(Long otherId) {
        startPage();
        PpDynamic ppDynamic =new PpDynamic();
        ppDynamic.setUserId(otherId);
        List<PpDynamic> list = ppDynamicService.selectPpDynamicList(ppDynamic);
        return getDataTable(list);
    }
}
