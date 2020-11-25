package com.pengpeng.v4.controller.note;

import java.util.List;

import com.pengpeng.v4.pojo.note.PpNote;
import com.pengpeng.v4.service.note.IPpNoteService;
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
 * 短信发送列Controller
 * 
 * @author pengpeng
 * @date 2019-12-26
 */
@Controller
@RequestMapping("/system/note")
public class PpNoteController extends BaseController
{
    private String prefix = "system/note";

    @Autowired
    private IPpNoteService ppNoteService;

    @RequiresPermissions("system:note:view")
    @GetMapping()
    public String note()
    {
        return prefix + "/note";
    }

    /**
     * 查询短信发送列列表
     */
    @RequiresPermissions("system:note:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpNote ppNote)
    {
        startPage();
        List<PpNote> list = ppNoteService.selectPpNoteList(ppNote);
        return getDataTable(list);
    }

    /**
     * 导出短信发送列列表
     */
    @RequiresPermissions("system:note:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PpNote ppNote)
    {
        List<PpNote> list = ppNoteService.selectPpNoteList(ppNote);
        ExcelUtil<PpNote> util = new ExcelUtil<PpNote>(PpNote.class);
        return util.exportExcel(list, "note");
    }

    /**
     * 新增短信发送列
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存短信发送列
     */
    @RequiresPermissions("system:note:add")
    @Log(title = "短信发送列", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PpNote ppNote)
    {
        return toAjax(ppNoteService.insertPpNote(ppNote));
    }

    /**
     * 修改短信发送列
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        PpNote ppNote = ppNoteService.selectPpNoteById(id);
        mmap.put("ppNote", ppNote);
        return prefix + "/edit";
    }

    /**
     * 修改保存短信发送列
     */
    @RequiresPermissions("system:note:edit")
    @Log(title = "短信发送列", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpNote ppNote)
    {
        return toAjax(ppNoteService.updatePpNote(ppNote));
    }

    /**
     * 删除短信发送列
     */
    @RequiresPermissions("system:note:remove")
    @Log(title = "短信发送列", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ppNoteService.deletePpNoteByIds(ids));
    }
}
