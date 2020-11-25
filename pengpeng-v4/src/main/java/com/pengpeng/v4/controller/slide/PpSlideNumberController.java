package com.pengpeng.v4.controller.slide;

import java.util.List;

import com.pengpeng.common.annotation.Log;
import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.page.TableDataInfo;
import com.pengpeng.common.enums.BusinessType;
import com.pengpeng.common.utils.poi.ExcelUtil;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.pojo.slide.PpSlideNumber;
import com.pengpeng.v4.service.slide.IPpSlideNumberService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 用户滑动记录Controller
 *
 * @author ruoyi
 * @date 2019-12-10
 */
@Controller
@RequestMapping("/api/number")
public class PpSlideNumberController extends BaseController {
    private String prefix = "system/number";

    @Autowired
    private IPpSlideNumberService ppSlideNumberService;

    @RequiresPermissions("system:number:view")
    @GetMapping()
    public String number() {
        return prefix + "/number";
    }

    /**
     * 查询用户滑动记录列表
     */
    @RequiresPermissions("system:number:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpSlideNumber ppSlideNumber) {
        startPage();
        List<PpSlideNumber> list = ppSlideNumberService.selectPpSlideNumberList(ppSlideNumber);
        return getDataTable(list);
    }

    /**
     * 导出用户滑动记录列表
     */
    @RequiresPermissions("system:number:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PpSlideNumber ppSlideNumber) {
        List<PpSlideNumber> list = ppSlideNumberService.selectPpSlideNumberList(ppSlideNumber);
        ExcelUtil<PpSlideNumber> util = new ExcelUtil<PpSlideNumber>(PpSlideNumber.class);
        return util.exportExcel(list, "number");
    }

    /**
     * 新增用户滑动记录
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存用户滑动记录
     */
    @RequiresPermissions("system:number:add")
    @Log(title = "用户滑动记录", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PpSlideNumber ppSlideNumber) {
        return toAjax(ppSlideNumberService.insertPpSlideNumber(ppSlideNumber));
    }

    /**
     * 修改用户滑动记录
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        PpSlideNumber ppSlideNumber = ppSlideNumberService.selectPpSlideNumberById(id);
        mmap.put("ppSlideNumber", ppSlideNumber);
        return prefix + "/edit";
    }

    /**
     * 修改保存用户滑动记录
     */
    @RequiresPermissions("system:number:edit")
    @Log(title = "用户滑动记录", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpSlideNumber ppSlideNumber) {
        return toAjax(ppSlideNumberService.updatePpSlideNumber(ppSlideNumber));
    }

    /**
     * 删除用户滑动记录
     */
    @RequiresPermissions("system:number:remove")
    @Log(title = "用户滑动记录", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(ppSlideNumberService.deletePpSlideNumberByIds(ids));
    }

    /**
     * 获取用户的当前滑动次数和最大滑动次数
     */
    @Log(title = "获取用户的当前滑动次数和最大滑动次数")
    @GetMapping("/selectUserById")
    @ResponseBody
    public AjaxResult selectUserById() {
        PpSlideNumber ppSlideNumber = ppSlideNumberService.selectUserById(ShiroUtils.getAppUserId());
        return AjaxResult.success(ppSlideNumber);
    }

    /**
     * 分享赠送滑动次数
     * @return
     */
    @PostMapping("/shareAddNum")
    @ResponseBody
    public AjaxResult shareAddNum() {
        return AjaxResult.success(ppSlideNumberService.shareAddNum());
    }


}
