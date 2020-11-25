package com.pengpeng.v4.controller.sysset;


import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.v4.pojo.sysset.SysSet;
import com.pengpeng.v4.service.sysset.SysSetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 系统设置表
 *
 * @author
 * @email
 * @date 2019-12-12 09:38:27
 */

@RestController
@RequestMapping("/api/sysset")
public class SysSetController {

    @Autowired
    private SysSetService sysSetService;

    /**
     * 获取系统设置
     *
     * @return
     */
    @RequestMapping("/getSet")
    public AjaxResult getSet() {

        return AjaxResult.success(sysSetService.selectId(1));
    }

    /**
     * 获取系统设置
     *
     * @return
     */
    @GetMapping("/getMemberSlide")
    public AjaxResult getMemberSlide() {
        SysSet sysSet = sysSetService.selectId(1);
        Integer vipFreeNum = sysSet.getVipFreeNum();
        return AjaxResult.success(vipFreeNum);
    }

}
