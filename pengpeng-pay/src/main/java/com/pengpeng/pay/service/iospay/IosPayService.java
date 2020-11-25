package com.pengpeng.pay.service.iospay;

import com.pengpeng.common.core.domain.AjaxResult;

/**
 * @author Administrator
 */
public interface IosPayService {

    /**
     * ios 支付
     * @param priceId
     * @param transactionId
     * @param payload
     * @return
     */
    AjaxResult iosPay(Long priceId, String transactionId, String payload);
}
