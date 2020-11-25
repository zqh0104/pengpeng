package com.pengpeng.pay.controller.iospay;

import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.pay.service.iospay.IosPayService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


/**
 * @author Administrator
 */
@RestController
@RequestMapping("/ios/ali")
@Slf4j
public class IosPayController extends BaseController {

    @Autowired
    private IosPayService iosPayService;
    /**
     * 苹果内购校验
     *
     * @param priceId       会员价格ID
     * @param transactionId 苹果内购交易ID
     * @param payload       校验体（base64字符串）
     * @return
     */
    @PostMapping("/iospay")
    public AjaxResult iosPay(Long priceId, String transactionId, String payload) {
        log.info("苹果内购校验开始，交易ID：" + transactionId + " base64校验体：" + payload);

        return iosPayService.iosPay(priceId, transactionId, payload);
    }
}
