package com.pengpeng.pay.controller.alipay;

import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.utils.StringUtils;
import com.pengpeng.pay.service.alipay.AlipayService;
import com.pengpeng.v4.pojo.member.PpMemberSpec;
import com.pengpeng.v4.pojo.rechargespec.PpRechargeSpec;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

/**
 * @author Administrator
 */
@RestController
@RequestMapping("/api/ali")
public class AlipayController extends BaseController {

    @Autowired
    private AlipayService alipayService;

    @PostMapping("/pay")
    public AjaxResult pay(PpRechargeSpec ppRechargeSpec, PpMemberSpec ppMemberSpec, String type) {

        if (StringUtils.isBlank(type)) {
            return AjaxResult.error("充值类型不能为空");
        }
        //充值钻石
        if ("order-recharge".equals(type)) {
            return AjaxResult.success(alipayService.alipayForRechage(ppRechargeSpec)) ;
        }
        //充值vip
        if ("order-vip".equals(type)) {
            return AjaxResult.success(alipayService.alipayForVip(ppMemberSpec)) ;
        }
        return error("error");
    }

    @PostMapping("/aliPayCallback")
    public String insertRecord(HttpServletRequest request) {
        return alipayService.aliPayCallback(request);
    }

    @PostMapping("/vipAliPayCallback")
    public String vipAliPayCallback(HttpServletRequest request) {
        return alipayService.vipAliPayCallback(request);
    }

}
