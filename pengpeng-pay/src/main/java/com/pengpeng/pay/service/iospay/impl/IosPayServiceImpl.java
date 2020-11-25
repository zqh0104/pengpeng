package com.pengpeng.pay.service.iospay.impl;

import com.alibaba.fastjson.JSONObject;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.exception.BusinessException;
import com.pengpeng.pay.service.iospay.IosPayService;
import com.pengpeng.pay.utils.IosVerifyUtil;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import static com.pengpeng.common.core.domain.AjaxResult.error;
import static com.pengpeng.common.core.domain.AjaxResult.success;

/**
 * @author Administrator
 */
@Service
@Slf4j
public class IosPayServiceImpl implements IosPayService {

    /**
     * ios 支付
     *
     * @param priceId
     * @param transactionId
     * @param payload
     * @return
     */
    @Override
    public AjaxResult iosPay(Long priceId, String transactionId, String payload) {
        //线上环境验证
        String verifyResult = IosVerifyUtil.buyAppVerify(payload, 1);
        if (verifyResult == null) {
            throw new BusinessException("苹果验证失败，返回数据为空");
        } else {
            log.info("线上，苹果平台返回JSON:" + verifyResult);
            JSONObject appleReturn = JSONObject.parseObject(verifyResult);
            String states = appleReturn.getString("status");
            //无数据则沙箱环境验证
            if ("21007".equals(states)) {
                verifyResult = IosVerifyUtil.buyAppVerify(payload, 0);
                log.info("沙盒环境，苹果平台返回JSON:" + verifyResult);
                appleReturn = JSONObject.parseObject(verifyResult);
                states = appleReturn.getString("status");
            }
            log.info("苹果平台返回值：appleReturn" + appleReturn);
            // 前端所提供的收据是有效的    验证成功
            if (states.equals("0")) {
                String receipt = appleReturn.getString("receipt");
                JSONObject returnJson = JSONObject.parseObject(receipt);
                String inApp = returnJson.getString("in_app");
                List<HashMap> inApps = JSONObject.parseArray(inApp, HashMap.class);
                if (!CollectionUtils.isEmpty(inApps)) {
                    ArrayList<String> transactionIds = new ArrayList<String>();
                    for (HashMap app : inApps) {
                        transactionIds.add((String) app.get("transaction_id"));
                    }
                    //交易列表包含当前交易，则认为交易成功
                    if (transactionIds.contains(transactionId)) {
                        //处理业务逻辑

//                        log.info("交易成功，新增并处理订单：{}", );
                        return success("充值成功");
                    }
                    return error("当前交易不在交易列表中");
                }
                return error("未能获取获取到交易列表");
            } else {
                return error("支付失败，错误码：" + states);
            }
        }

    }
}
