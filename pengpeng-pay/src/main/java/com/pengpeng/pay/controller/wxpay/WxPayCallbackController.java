package com.pengpeng.pay.controller.wxpay;

import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.utils.StringUtils;
import com.pengpeng.pay.service.wxpay.WxAppPayService;
import com.pengpeng.v4.pojo.member.PpMemberSpec;
import com.pengpeng.v4.pojo.rechargespec.PpRechargeSpec;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;


/**
 * 微信App支付
 * @author Administrator
 */
@RestController
@RequestMapping("/api/wx")
@Slf4j
public class WxPayCallbackController extends BaseController {

    @Autowired
    private WxAppPayService wxAppPayService;

    @PostMapping("/pay")
    public AjaxResult pay(PpRechargeSpec ppRechargeSpec, PpMemberSpec ppMemberSpec, String type) {

        if (StringUtils.isBlank(type)) {
            return AjaxResult.error("充值类型不能为空");
        }
        //充值钻石
        if ("order-recharge".equals(type)) {
            return AjaxResult.success(wxAppPayService.wxTradeAppPayService(ppRechargeSpec));
        }
        //充值vip
        if ("order-vip".equals(type)) {
            return AjaxResult.success(wxAppPayService.wxpayForVip(ppMemberSpec)) ;
        }
        return error("error");

    }

    @RequestMapping(value = "/wxPayCallback", method = RequestMethod.POST)
    public String wxPayCallback(HttpServletRequest request) {
        log.info("微信支付回调");
        return wxAppPayService.wxPayCallback(request);
    }

    @RequestMapping(value = "/vipWxPayCallback", method = RequestMethod.POST)
    public String vipWxPayCallback(HttpServletRequest request) {
        log.info("微信支付回调");
        return wxAppPayService.vipWxPayCallback(request);
    }

}