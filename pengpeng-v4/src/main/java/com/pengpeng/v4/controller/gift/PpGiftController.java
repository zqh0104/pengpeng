package com.pengpeng.v4.controller.gift;

import java.util.List;

import com.pengpeng.common.annotation.Log;
import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.page.TableDataInfo;
import com.pengpeng.common.enums.BusinessType;
import com.pengpeng.v4.pojo.gift.PpGift;
import com.pengpeng.v4.service.gift.IPpGiftService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 礼物Controller
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@Controller
@RequestMapping("/api/gift")
public class PpGiftController extends BaseController
{


    @Autowired
    private IPpGiftService ppGiftService;


    /**
     * 查询礼物列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpGift ppGift) {
        startPage();
        List<PpGift> list = ppGiftService.selectPpGiftList(ppGift);
        return getDataTable(list);
    }



    /**
     * 新增保存礼物
     */
    @Log(title = "礼物", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PpGift ppGift)
    {
        return toAjax(ppGiftService.insertPpGift(ppGift));
    }


    /**
     * 修改保存礼物
     */
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
    @Log(title = "礼物", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ppGiftService.deletePpGiftByIds(ids));
    }

    /**
     * 礼物列表
     */
    @Log(title = "礼物列表")
    @GetMapping("/giftList")
    @ResponseBody
    public TableDataInfo giftList() {
        startPage();
        List<PpGift> ppGifts = ppGiftService.giftList();
        return getDataTable(ppGifts);
    }


}
