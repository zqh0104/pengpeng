package com.pengpeng.v4.controller.sysnotice;

import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.page.TableDataInfo;
import com.pengpeng.system.domain.SysNotice;
import com.pengpeng.system.service.ISysNoticeService;
import com.pengpeng.v4.service.sysnotice.ApiNoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 公告 信息操作处理
 * 
 * @author pengpeng
 */
@Controller
@RequestMapping("/api/notice")
public class ApiSysNoticeController extends BaseController
{
    private String prefix = "system/notice";

    @Autowired
    private ApiNoticeService noticeService;

    /**
     * 系统通知
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list()
    {
        startPage();
        List<SysNotice> list = noticeService.selectAnnouncement();
        return getDataTable(list);
    }

    /**
     * 看过
     */
    @PostMapping("/look")
    @ResponseBody
    public AjaxResult look(Long id) {
        noticeService.look(id);
        return AjaxResult.success(true);
    }
}
