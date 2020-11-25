package com.pengpeng.pay.service.alipay;

import com.pengpeng.v4.pojo.member.PpMemberSpec;
import com.pengpeng.v4.pojo.rechargespec.PpRechargeSpec;

import javax.servlet.http.HttpServletRequest;

/**
 * @author Administrator
 */
public interface AlipayService {

    /**
     * 充值钻石
     * @param ppRechargeSpec
     * @return
     */
    Object alipayForRechage(PpRechargeSpec ppRechargeSpec);

    /**
     * 充值Vip
     * @param ppMemberSpec
     * @return
     */
    Object alipayForVip(PpMemberSpec ppMemberSpec);

    /**
     * 支付回调
     * @param request
     */
    String aliPayCallback(HttpServletRequest request);

    /**
     * 开通会员支付回调
     */
    String vipAliPayCallback(HttpServletRequest request);
}
