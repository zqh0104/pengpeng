package com.pengpeng.web.controller.app;

import java.util.List;

import com.pengpeng.v4.pojo.gift.PpGift;
import com.pengpeng.v4.service.gift.IPpGiftService;
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
 * 礼物Controller
 * 
 * @author pengpeng
 * @date 2019-12-21
 */
@Controller
@RequestMapping("/app/gift")
public class AppGiftController extends BaseController
{
    private String prefix = "app/gift";

    @Autowired
    private IPpGiftService ppGiftService;

    @RequiresPermissions("system:gift:view")
    @GetMapping()
    public String gift()
    {
        return prefix + "/gift";
    }

    /**
     * 查询礼物列表
     */
    @RequiresPermissions("system:gift:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpGift ppGift)
    {
        startPage();
        List<PpGift> list = ppGiftService.selectPpGiftList(ppGift);
        return getDataTable(list);
    }

    /**
     * 导出礼物列表
     */
    @RequiresPermissions("system:gift:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PpGift ppGift)
    {
        List<PpGift> list = ppGiftService.selectPpGiftList(ppGift);
        ExcelUtil<PpGift> util = new ExcelUtil<PpGift>(PpGift.class);
        return util.exportExcel(list, "gift");
    }

    /**
     * 新增礼物
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存礼物
     */
    @RequiresPermissions("system:gift:add")
    @Log(title = "礼物", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PpGift ppGift)
    {
        return toAjax(ppGiftService.insertPpGift(ppGift));
    }

    /**
     * 修改礼物
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        PpGift ppGift = ppGiftService.selectPpGiftById(id);
        mmap.put("ppGift", ppGift);
        return prefix + "/edit";
    }

    /**
     * 修改保存礼物
     */
    @RequiresPermissions("system:gift:edit")
    @Log(title = "礼物", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpGift ppGift)
    {
        return toAjax(ppGiftService.updatePpGift(ppGift));
    }

    /**
     * 删除礼物
     */
    @RequiresPermissions("system:gift:remove")
    @Log(title = "礼物", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ppGiftService.deletePpGiftByIds(ids));
    }

    /**
     * 礼物图片上传
     */

}
