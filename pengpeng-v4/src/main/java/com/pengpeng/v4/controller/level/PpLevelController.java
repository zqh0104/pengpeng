package com.pengpeng.v4.controller.level;

import java.util.List;

import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.page.TableDataInfo;
import com.pengpeng.v4.pojo.level.PpLevel;
import com.pengpeng.v4.service.level.IPpLevelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 财富等级Controller
 * 
 * @author ruoyi
 * @date 2019-12-19
 */
@Controller
@RequestMapping("/api/level")
public class PpLevelController extends BaseController
{

    @Autowired
    private IPpLevelService ppLevelService;


    /**
     * 查询财富等级列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpLevel ppLevel)
    {
        startPage();
        List<PpLevel> list = ppLevelService.selectPpLevelList(ppLevel);
        return getDataTable(list);
    }

}
