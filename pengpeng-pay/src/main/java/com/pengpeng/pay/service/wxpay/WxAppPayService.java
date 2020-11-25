package com.pengpeng.pay.service.wxpay;

import com.pengpeng.v4.pojo.member.PpMemberSpec;
import com.pengpeng.v4.pojo.rechargespec.PpRechargeSpec;

import javax.servlet.http.HttpServletRequest;

/**
 * @author Administrator
 */
public interface WxAppPayService {

    /**
     * 微信App支付
     * @param ppRechargeSpec
     * @return
     */
    Object wxTradeAppPayService(PpRechargeSpec ppRechargeSpec);

    /**
     * 充值Vip
     * @param ppMemberSpec
     * @return
     */
    Object wxpayForVip(PpMemberSpec ppMemberSpec);

    /**
     * 支付回调
     * @param request
     */
    String wxPayCallback(HttpServletRequest request);

    /**
     * 开通会员回调
     */
    String vipWxPayCallback(HttpServletRequest request);
}
