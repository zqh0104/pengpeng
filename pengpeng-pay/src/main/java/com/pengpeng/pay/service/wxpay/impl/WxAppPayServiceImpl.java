package com.pengpeng.pay.service.wxpay.impl;

import com.github.wxpay.sdk.WXPay;
import com.github.wxpay.sdk.WXPayUtil;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.exception.BusinessException;
import com.pengpeng.common.utils.DateUtils;
import com.pengpeng.common.utils.IpUtils;
import com.pengpeng.common.utils.ServletUtils;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.pay.domain.WxPayConfigImpl;
import com.pengpeng.pay.service.wxpay.WxAppPayService;
import com.pengpeng.v4.mapper.member.PpMemberMapper;
import com.pengpeng.v4.mapper.rechargerecord.PpRechargeRecordMapper;
import com.pengpeng.v4.mapper.rechargespec.PpRechargeSpecMapper;
import com.pengpeng.v4.pojo.balace.PpBalaceRecord;
import com.pengpeng.v4.pojo.member.PpMember;
import com.pengpeng.v4.pojo.member.PpMemberSpec;
import com.pengpeng.v4.pojo.rechargerecord.PpRechargeRecord;
import com.pengpeng.v4.pojo.rechargespec.PpRechargeSpec;
import com.pengpeng.v4.pojo.viporder.PpVipOrder;
import com.pengpeng.v4.service.balace.IPpBalaceRecordService;
import com.pengpeng.v4.service.member.IPpMemberService;
import com.pengpeng.v4.service.member.IPpMemberSpecService;
import com.pengpeng.v4.service.rechargerecord.impl.PpRechargeRecordServiceImpl;
import com.pengpeng.v4.service.viporder.IPpVipOrderService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.shiro.util.Assert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.util.*;

/**
 * @author Administrator
 */
@SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
@Service
@Slf4j
public class WxAppPayServiceImpl implements WxAppPayService {

    @Autowired
    private PpRechargeSpecMapper ppRechargeSpecMapper;

    @Autowired
    private PpRechargeRecordMapper ppRechargeRecordMapper;

    @Autowired
    private PpRechargeRecordServiceImpl rechargeRecordService;

    @Autowired
    private ThreadPoolTaskExecutor taskExecutor;

    @Autowired
    private PpMemberMapper ppMemberMapper;

    @Autowired
    private WxPayConfigImpl wxPayConfig;

    @Autowired
    private IPpMemberSpecService ppMemberSpecService;

    @Autowired
    private IPpMemberService ppMemberService;

    @Autowired
    private IPpVipOrderService ppVipOrderService;

    @Autowired
    private IPpBalaceRecordService iPpBalaceRecordService;

    @Override
    public Object wxTradeAppPayService(PpRechargeSpec ppRechargeSpec) {
        Assert.notNull(ppRechargeSpec.getId(), "充值规格id不能为空");
        Long userId = ShiroUtils.getAppUserId();
        //查询支付商品信息
        PpRechargeSpec rechargeSpec = ppRechargeSpecMapper.selectPpRechargeSpecById(ppRechargeSpec.getId());
        if (!Optional.ofNullable(rechargeSpec).isPresent()) {
            return AjaxResult.error("购买商品不存在");
        }
        if (!ppRechargeSpec.getSpecMoney().equals(rechargeSpec.getSpecMoney())) {
            return AjaxResult.error("充值金额错误");
        }
        String orderSn = rechargeRecordService.getOrdersn();
        try {
            //统一下单
            Map<String, String> map = new LinkedHashMap<>();
            String nonce_str = WXPayUtil.generateNonceStr();
            //单位(分)
            String total_fee = new BigDecimal(rechargeSpec.getSpecMoney()).multiply(new BigDecimal("100")).intValue() + "";
            map.put("body", "订单支付");
            map.put("nonce_str", nonce_str);
            map.put("out_trade_no", orderSn);
            map.put("total_fee", total_fee);
            map.put("spbill_create_ip", IpUtils.getIpAddr(ServletUtils.getRequest()));
            map.put("notify_url", wxPayConfig.getNOTIFY_URL());
            map.put("trade_type", "APP");
            map.put("attach", userId.toString());
            StringBuilder result2 = new StringBuilder();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                result2.append(entry.getKey()).append("=").append(entry.getValue()).append("&");
            }
            map.put("sign", DigestUtils.md5Hex(result2.toString()).toUpperCase());
            WXPay pay = new WXPay(wxPayConfig);
            Map<String, String> returnMap = pay.unifiedOrder(map);
            //调起支付接口
            Map<String, String> resultMap = new LinkedHashMap<>();
            resultMap.put("appid", wxPayConfig.getAppID());
            resultMap.put("noncestr", nonce_str);
            resultMap.put("package", "Sign=WXPay");
            resultMap.put("partnerid", wxPayConfig.getMchID());
            resultMap.put("prepayid", returnMap.get("prepay_id"));
            resultMap.put("timestamp", System.currentTimeMillis() / 1000 + "");

            StringBuilder result = new StringBuilder();
            for (Map.Entry<String, String> entry : resultMap.entrySet()) {
                result.append(entry.getKey()).append("=").append(entry.getValue()).append("&");
            }
            result.append("key=").append(wxPayConfig.getKey());
            resultMap.put("sign", DigestUtils.md5Hex(result.toString()).toUpperCase());
            log.info("调用成功");
            log.info("用户：{}下单支付，订单号：{}，生成预订单单成功。。。。。。。。", userId, orderSn);
            taskExecutor.execute(() -> {
                //添加充值记录
                PpRechargeRecord ppRechargeRecord = new PpRechargeRecord();
                ppRechargeRecord.setOrderSn(orderSn);
                ppRechargeRecord.setUserId(userId);
                ppRechargeRecord.setPayType(2);
                ppRechargeRecord.setRechargeMoney(rechargeSpec.getSpecMoney());
                ppRechargeRecord.setRechargeDiamond(rechargeSpec.getSpecVal());
                ppRechargeRecord.setRechargeTime(DateUtils.getNowDate());
                ppRechargeRecord.setRechargeType(0);
                ppRechargeRecordMapper.insertPpRechargeRecord(ppRechargeRecord);
            });
            log.info("resultMap:{}", resultMap);
            return resultMap;
        } catch (Exception e) {
            log.info("微信支付失败{}", Arrays.toString(e.getStackTrace()));
            throw new BusinessException("微信支付异常");
        }
    }

    @Override
    public Object wxpayForVip(PpMemberSpec ppMemberSpec) {

        Long userId = ShiroUtils.getAppUserId();
        //查询会员规格
        PpMemberSpec rechargeSpec = ppMemberSpecService.selectPpMemberSpecById(ppMemberSpec.getId());
        if (!Optional.ofNullable(rechargeSpec).isPresent()) {
            return AjaxResult.error("会员规格不存在");
        }
        if (!ppMemberSpec.getCurrentPrice().equals(rechargeSpec.getCurrentPrice())) {
            return AjaxResult.error("金额错误");
        }
        //订单号
        String orderSn = rechargeRecordService.getOrdersn();
        try {
            //统一下单
            Map<String, String> map = new LinkedHashMap<>();
            String nonce_str = WXPayUtil.generateNonceStr();
            String total_fee = new BigDecimal(rechargeSpec.getCurrentPrice()).multiply(new BigDecimal("100")).intValue() + "";
            map.put("body", "订单支付");
            map.put("nonce_str", nonce_str);
            //交易流水账号
            map.put("out_trade_no", orderSn);
            map.put("total_fee", total_fee);
            map.put("spbill_create_ip", IpUtils.getIpAddr(ServletUtils.getRequest()));
            map.put("notify_url", wxPayConfig.getNOTIFY_URL2());
            map.put("trade_type", "APP");
            map.put("attach", userId.toString());
            StringBuilder result2 = new StringBuilder();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                result2.append(entry.getKey()).append("=").append(entry.getValue()).append("&");
            }
            map.put("sign", DigestUtils.md5Hex(result2.toString()).toUpperCase());
            WXPay pay = new WXPay(wxPayConfig);
            Map<String, String> returnMap = pay.unifiedOrder(map);
            //调起支付接口
            Map<String, String> resultMap = new LinkedHashMap<>();
            resultMap.put("appid", wxPayConfig.getAppID());
            resultMap.put("noncestr", nonce_str);
            resultMap.put("package", "Sign=WXPay");
            resultMap.put("partnerid", wxPayConfig.getMchID());
            resultMap.put("prepayid", returnMap.get("prepay_id"));
            resultMap.put("timestamp", System.currentTimeMillis() / 1000 + "");

            StringBuilder result = new StringBuilder();
            for (Map.Entry<String, String> entry : resultMap.entrySet()) {
                result.append(entry.getKey()).append("=").append(entry.getValue()).append("&");
            }
            result.append("key=").append(wxPayConfig.getKey());
            resultMap.put("sign", DigestUtils.md5Hex(result.toString()).toUpperCase());
            log.info("用户：{}下单支付，订单号：{}，生成预订单单成功。。。。。。。。", userId, orderSn);
            taskExecutor.execute(() -> {
                //添加开通会员记录表
                PpVipOrder ppVipOrder = new PpVipOrder();
                ppVipOrder.setOrderNumber(orderSn);
                ppVipOrder.setMemberId(userId);
                ppVipOrder.setMemberSecond(ppMemberSpec.getMemberSecond());
                ppVipOrder.setCurrentPrice(rechargeSpec.getCurrentPrice());
                ppVipOrder.setMemberSecondType(ppMemberSpec.getMemberSecondType());
                ppVipOrder.setCreateTime(DateUtils.getNowDate());
                ppVipOrderService.insertPpVipOrder(ppVipOrder);
            });
            log.info("resultMap:{}", resultMap);
            return resultMap;
        } catch (Exception e) {
            log.info("微信支付失败{}", Arrays.toString(e.getStackTrace()));
            throw new BusinessException("微信支付异常");
        }

    }

    @Override
    public String wxPayCallback(HttpServletRequest request) {
        try {
            // 读取参数
            // 解析xml成map
            Map<String, String> map = WXPayUtil.xmlToMap(getParam(request));
            log.info("微信支付回调返回的信息{}", map);
            //该处读者自行校验（验证订单号，付款金额等是否正确）
            this.check(map);
            String orderNo = map.get("out_trade_no");
            String userId = map.get("attach");
            String resultCode = map.get("result_code");
            // 另起线程处理业务
            taskExecutor.execute(() -> {
                // 支付成功
                if (resultCode.equals("SUCCESS")) {
                    log.info("回调成功");
                    // TODO 自己的业务逻辑
                    //查询充值订单记录
                    PpRechargeRecord rechargeRecord = ppRechargeRecordMapper.selectPpRechargeRecordByOrderSn(orderNo);
                    //支付成功 修改订单状态为成功
                    rechargeRecord.setRechargeStatus(1);
                    ppRechargeRecordMapper.updatePpRechargeRecord(rechargeRecord);
                    //修改余额
                    PpMember ppMember = ppMemberMapper.selectPpMemberById(Long.valueOf(userId));
                    ppMember.setBalance(ppMember.getBalance() + rechargeRecord.getRechargeDiamond());
                    ppMemberMapper.updatePpMember(ppMember);
                    //添加余额变动记录
                    PpBalaceRecord balaceRecord = new PpBalaceRecord();
                    balaceRecord.setOtherId(rechargeRecord.getId());
                    balaceRecord.setUserId(Long.valueOf(userId));
                    balaceRecord.setType(1);
                    balaceRecord.setBalaceAlterationGold(rechargeRecord.getRechargeDiamond().toString());
                    balaceRecord.setBalaceAlterationTime(DateUtils.getNowDate());
                    iPpBalaceRecordService.insertPpBalaceRecord(balaceRecord);
                    log.info("用户：{}下单支付回调，订单号：{}，回调成功。。。。。。。。", userId, orderNo);
                } else {
                    log.info("支付失败");
                    // TODO 自己的业务逻辑
                }
            });
            if (resultCode.equals("SUCCESS")) {
                return setXml("SUCCESS", "OK");
            } else {
                return setXml("fail", "付款失败");
            }
        } catch (Exception e) {
            log.info("微信支付回调发生异常{}", e.getLocalizedMessage());
            return setXml("fail", "付款失败");
        }
    }

    /**
     * 开通会员回调
     *
     * @param request
     */
    @Override
    public String vipWxPayCallback(HttpServletRequest request) {
        String order="";
        try {
            // 读取参数
            // 解析xml成map
            Map<String, String> map = WXPayUtil.xmlToMap(getParam(request));
            log.info("微信支付回调返回的信息{}", map);
            //该处读者自行校验（验证订单号，付款金额等是否正确）
            this.vipCheck(map);
            String orderNo = map.get("out_trade_no");
            order=orderNo;
            String userId = map.get("attach");
            String resultCode = map.get("result_code");
            // 另起线程处理业务
            taskExecutor.execute(() -> {
                // 支付成功
                if (resultCode.equals("SUCCESS")) {
                    log.info("支付成功");
                    // TODO 自己的业务逻辑
                    //查询开通会员订单
                    PpVipOrder ppVipOrder = ppVipOrderService.selectOrderNumber(orderNo);
                    //通过订单获取信息
                    ppMemberService.dredgeMember(ppVipOrder.getMemberId(), Integer.valueOf(ppVipOrder.getMemberSecond()), ppVipOrder.getMemberSecondType(), orderNo);

                    log.info("用户：{}下单支付回调，订单号：{}，回调成功。。。。。。。。", userId, orderNo);
                } else {
                    log.info("支付失败");
                    // TODO 自己的业务逻辑
                    //删除开通会员的订单详情
                    PpVipOrder ppVipOrder = ppVipOrderService.selectOrderNumber(orderNo);
                    ppVipOrderService.deletePpVipOrderById(ppVipOrder.getId());
                }
            });
            if (resultCode.equals("SUCCESS")) {
                return setXml("SUCCESS", "OK");
            } else {
                return setXml("fail", "付款失败");
            }
        } catch (Exception e) {
            log.info("微信支付回调发生异常{}", e.getLocalizedMessage());
            //删除开通会员的订单详情
            PpVipOrder ppVipOrder = ppVipOrderService.selectOrderNumber(order);
            ppVipOrderService.deletePpVipOrderById(ppVipOrder.getId());
            return setXml("fail", "付款失败");
        }
    }

    private String getParam(HttpServletRequest request) throws IOException {
        // 读取参数
        InputStream inputStream;
        StringBuilder sb = new StringBuilder();
        inputStream = request.getInputStream();
        String s;
        BufferedReader in = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        while ((s = in.readLine()) != null) {
            sb.append(s);
        }
        in.close();
        inputStream.close();
        return sb.toString();
    }

    private void check(Map<String, String> params) throws RuntimeException {
        String outTradeNo = params.get("out_trade_no");
        // 1、商户需要验证该通知数据中的out_trade_no是否为商户系统中创建的订单号，
        PpRechargeRecord ppRechargeRecord = rechargeRecordService.selectPpRechargeRecordByOrderSn(outTradeNo);
        if (ppRechargeRecord == null) {
            throw new BusinessException("out_trade_no错误");
        }

        // 2、判断total_amount是否确实为该订单的实际金额（即商户订单创建时的金额），
        BigDecimal total_fee = new BigDecimal(params.get("total_fee")).divide(new BigDecimal("100"));
        log.info("totalAmount{}", total_fee);
        if (!total_fee.toString().equals(ppRechargeRecord.getRechargeMoney())) {
            throw new BusinessException("total_amount错误");
        }
    }

    private void vipCheck(Map<String, String> params) throws RuntimeException {
        String outTradeNo = params.get("out_trade_no");
        // 1、商户需要验证该通知数据中的out_trade_no是否为商户系统中创建的订单号，
        PpVipOrder ppVipOrder = ppVipOrderService.selectOrderNumber(outTradeNo);
        if (ppVipOrder == null) {
            throw new BusinessException("out_trade_no错误");
        }

        // 2、判断total_amount是否确实为该订单的实际金额（即商户订单创建时的金额），
        BigDecimal bigDecimal = new BigDecimal(ppVipOrder.getCurrentPrice());
        BigDecimal total_fee = new BigDecimal(params.get("total_fee")).divide(bigDecimal);
        log.info("totalAmount{}", total_fee);
        if (!total_fee.toString().equals(ppVipOrder.getCurrentPrice())) {
            throw new BusinessException("total_amount错误");
        }
    }

    // 通过xml发给微信消息
    private static String setXml(String return_code, String return_msg) {
        SortedMap<String, String> parameters = new TreeMap<>();
        parameters.put("return_code", return_code);
        parameters.put("return_msg", return_msg);
        try {
            return WXPayUtil.mapToXml(parameters);
        } catch (Exception e) {
            log.error("返回微信消息时map转xml失败");
            return "<xml><return_code><![CDATA[" + return_code + "]]>" + "</return_code><return_msg><![CDATA[" + return_msg
                    + "]]></return_msg></xml>";
        }
    }
}