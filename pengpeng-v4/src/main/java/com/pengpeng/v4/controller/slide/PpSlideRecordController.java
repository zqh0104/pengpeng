package com.pengpeng.v4.controller.slide;

import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.v4.pojo.slide.PpSlideRecord;
import com.pengpeng.v4.service.slide.IPpSlideRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Administrator
 */
@RestController
@RequestMapping("/api/slide/record")
public class PpSlideRecordController extends BaseController {

    @Autowired
    private IPpSlideRecordService ppSlideRecordService;

    @RequestMapping("/add")
    public AjaxResult add(@Validated PpSlideRecord ppSlideRecord){

        return ppSlideRecordService.insertSlideRecord(ppSlideRecord);
    }


    @RequestMapping("/getNUm")
    public AjaxResult getNUm(){

        return ppSlideRecordService.getNUm();
    }
}
