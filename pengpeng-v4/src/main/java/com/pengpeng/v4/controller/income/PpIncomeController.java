package com.pengpeng.v4.controller.income;

import java.util.List;

import com.pengpeng.common.annotation.Log;
import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.page.TableDataInfo;
import com.pengpeng.common.enums.BusinessType;
import com.pengpeng.common.utils.poi.ExcelUtil;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.pojo.income.PpIncome;
import com.pengpeng.v4.service.income.IPpIncomeService;
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
 * 用户收入Controller
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@Controller
@RequestMapping("/api/income")
public class PpIncomeController extends BaseController
{
    private String prefix = "system/income";

    @Autowired
    private IPpIncomeService ppIncomeService;

    @RequiresPermissions("system:income:view")
    @GetMapping()
    public String income()
    {
        return prefix + "/income";
    }

    /**
     * 查询用户收入列表
     */
    @RequiresPermissions("system:income:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpIncome ppIncome)
    {
        startPage();
        List<PpIncome> list = ppIncomeService.selectPpIncomeList(ppIncome);
        return getDataTable(list);
    }

    /**
     * 导出用户收入列表
     */
    @RequiresPermissions("system:income:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PpIncome ppIncome)
    {
        List<PpIncome> list = ppIncomeService.selectPpIncomeList(ppIncome);
        ExcelUtil<PpIncome> util = new ExcelUtil<PpIncome>(PpIncome.class);
        return util.exportExcel(list, "income");
    }

    /**
     * 新增用户收入
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存用户收入
     */
    @Log(title = "用户收入", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PpIncome ppIncome)
    {
        return toAjax(ppIncomeService.insertPpIncome(ppIncome));
    }

    /**
     * 修改用户收入
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        PpIncome ppIncome = ppIncomeService.selectPpIncomeById(id);
        mmap.put("ppIncome", ppIncome);
        return prefix + "/edit";
    }

    /**
     * 修改保存用户收入
     */
    @RequiresPermissions("system:income:edit")
    @Log(title = "用户收入", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpIncome ppIncome)
    {
        return toAjax(ppIncomeService.updatePpIncome(ppIncome));
    }

    /**
     * 删除用户收入
     */
    @RequiresPermissions("system:income:remove")
    @Log(title = "用户收入", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ppIncomeService.deletePpIncomeByIds(ids));
    }

    /**
     * 收益记录展示
     */
    @Log(title = "收益记录展示")
    @GetMapping( "/incomeList")
    @ResponseBody
    public TableDataInfo incomeList() {
        startPage();
        List<PpIncome> ppIncomes = ppIncomeService.selectIncomeUser(ShiroUtils.getAppUserId());
        return getDataTable(ppIncomes);
    }
}
