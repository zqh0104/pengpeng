package com.pengpeng.pay.service.alipay.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradeAppPayRequest;
import com.alipay.api.response.AlipayTradeAppPayResponse;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.utils.DateUtils;
import com.pengpeng.common.utils.MapDataUtil;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.pay.domain.AlipayNotifyParam;
import com.pengpeng.pay.service.alipay.AlipayService;
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
import org.apache.shiro.util.Assert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.security.spec.InvalidKeySpecException;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;
import java.util.ResourceBundle;

/**
 * @author Administrator
 */
@SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
@Service
@Slf4j
public class AlipayServiceImpl implements AlipayService {

    private static ResourceBundle bundle = ResourceBundle.getBundle("alipay_openapi");

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
    private IPpMemberService ppMemberService;

    @Autowired
    private IPpMemberSpecService ppMemberSpecService;

    @Autowired
    private IPpVipOrderService ppVipOrderService;

    @Autowired
    private IPpBalaceRecordService iPpBalaceRecordService;

    @Override
    public Object alipayForRechage(PpRechargeSpec ppRechargeSpec) {
        Assert.notNull(ppRechargeSpec.getId(),"充值规格id不能为空");
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
        AlipayTradeAppPayRequest alipayRequest = new AlipayTradeAppPayRequest();
        Map<String, Object> params = new HashMap<>(10);
        params.put("timeout_express", "1h");
        params.put("total_amount", rechargeSpec.getSpecMoney()); //真实金额
        //params.put("total_amount", 0.01);
        params.put("product_code", "QUICK_MSECURITY_PAY");
        params.put("body", "充值钻石");
        //商品的标题/交易标题/订单标题
        params.put("subject", "碰碰-充值钻石");
        //订单号
        params.put("out_trade_no", orderSn);
        params.put("goods_type", "0");
        //公用回传参数，如果请求时传递了该参数，则返回给商户时会回传该参数。支付宝会在异步通知时将该参数原样返回。本参数必须进行 UrlEncode 之后才可以发送给支付宝
        params.put("passback_params", userId);
        params.put("goods_detail", "钻石");
        //设置业务参数，bizContent为发送的请求信息，开发者需要根据实际情况填充此类
        Object obj = JSONObject.toJSON(params);
        alipayRequest.setBizContent(obj.toString());
        alipayRequest.setNotifyUrl(bundle.getString("NOTIFY_URL"));
        //sdk请求客户端，已将配置信息初始化
        AlipayClient alipayClient = getAlipayClient();
        try {
            //因为是接口服务，使用exexcute方法获取到返回值
            AlipayTradeAppPayResponse alipayResponse = alipayClient.sdkExecute(alipayRequest);
            if (alipayResponse.isSuccess()) {
                //TODO 实际业务处理，开发者编写。可以通过alipayResponse.getXXX的形式获取到返回值
                log.info("调用成功");
                log.info("用户：{}下单支付，订单号：{}，生成预订单单成功。。。。。。。。", userId, orderSn);
                taskExecutor.execute(() -> {
                    //添加充值记录
                    PpRechargeRecord ppRechargeRecord = new PpRechargeRecord();
                    ppRechargeRecord.setOrderSn(orderSn);
                    ppRechargeRecord.setUserId(userId);
                    ppRechargeRecord.setPayType(1);
                    ppRechargeRecord.setRechargeMoney(rechargeSpec.getSpecMoney());
                    ppRechargeRecord.setRechargeDiamond(rechargeSpec.getSpecVal());
                    ppRechargeRecord.setRechargeTime(DateUtils.getNowDate());
                    ppRechargeRecord.setRechargeType(0);
                    ppRechargeRecordMapper.insertPpRechargeRecord(ppRechargeRecord);
                });
                return alipayResponse.getBody();
            } else {
                log.info("调用失败");
            }
            return null;
        } catch (AlipayApiException e) {
            if (e.getCause() instanceof InvalidKeySpecException) {
                return "商户私钥格式不正确，请确认配置文件alipay_openapi.properties中是否配置正确";
            }
        }
        return null;
    }


    /**
     * 充值vip
     * @param ppMemberSpec
     * @return
     */
    @Override
    public Object alipayForVip(PpMemberSpec ppMemberSpec) {
        Long userId = ShiroUtils.getAppUserId();
        //查询会员规格
        PpMemberSpec rechargeSpec = ppMemberSpecService.selectPpMemberSpecById(ppMemberSpec.getId());
        if (!Optional.ofNullable(rechargeSpec).isPresent()) {
            return AjaxResult.error("会员规格不存在");
        }
        if (!ppMemberSpec.getCurrentPrice().equals(rechargeSpec.getCurrentPrice())){
            return AjaxResult.error("金额错误");
        }
        //订单号
        String orderSn = rechargeRecordService.getOrdersn();
        AlipayTradeAppPayRequest alipayRequest = new AlipayTradeAppPayRequest();
        Map<String, Object> params = new HashMap<>(10);
        params.put("timeout_express", "1h");
        //真实金额
        params.put("total_amount", rechargeSpec.getCurrentPrice());
        //  params.put("total_amount", 0.01);
        params.put("product_code", "QUICK_MSECURITY_PAY");
        params.put("body", "开通会员");
        //商品的标题/交易标题/订单标题
        params.put("subject", "碰碰-开通会员");
        //订单号
        params.put("out_trade_no", orderSn);
        params.put("goods_type", "0");
        //公用回传参数，如果请求时传递了该参数，则返回给商户时会回传该参数。支付宝会在异步通知时将该参数原样返回。本参数必须进行 UrlEncode 之后才可以发送给支付宝
        params.put("passback_params", userId);
        params.put("goods_detail", "会员");
        //设置业务参数，bizContent为发送的请求信息，开发者需要根据实际情况填充此类
        Object obj = JSONObject.toJSON(params);
        alipayRequest.setBizContent(obj.toString());
        alipayRequest.setNotifyUrl(bundle.getString("NOTIFY_URL2"));
        //sdk请求客户端，已将配置信息初始化
        AlipayClient alipayClient = getAlipayClient();
        try {
            //因为是接口服务，使用exexcute方法获取到返回值
            AlipayTradeAppPayResponse alipayResponse = alipayClient.sdkExecute(alipayRequest);
            if (alipayResponse.isSuccess()) {
                //TODO 实际业务处理，开发者编写。可以通过alipayResponse.getXXX的形式获取到返回值
                log.info("调用成功");
                log.info("用户{}下单，订单号{}", userId, orderSn);
                log.info("alipayResponse.getBody(),----,{}", alipayResponse.getBody());
                taskExecutor.execute(() -> {

                    //添加开通会员记录表
                    PpVipOrder ppVipOrder = new PpVipOrder();
                    ppVipOrder.setOrderNumber(orderSn);
                    ppVipOrder.setMemberId(userId);
                    ppVipOrder.setMemberSecond(rechargeSpec.getMemberSecond());
                    ppVipOrder.setMemberSecondType(rechargeSpec.getMemberSecondType());
                    ppVipOrder.setCurrentPrice(rechargeSpec.getCurrentPrice());
                    ppVipOrder.setCreateTime(DateUtils.getNowDate());
                    ppVipOrderService.insertPpVipOrder(ppVipOrder);
                });
                return alipayResponse.getBody();
            } else {
                log.info("调用失败");
            }
            return null;
        } catch (AlipayApiException e) {
            if (e.getCause() instanceof InvalidKeySpecException) {
                return "商户私钥格式不正确，请确认配置文件alipay_openapi.properties中是否配置正确";
            }
        }
        return null;
    }

    /**
     * 支付宝支付回调
     *
     * @param request
     */
    @Override
    public String aliPayCallback(HttpServletRequest request) {
        // 将异步通知中收到的待验证所有参数都存放到map中
        Map<String, String> params = MapDataUtil.convertRequestParamsToMap(request);
        log.info("支付宝回调，{}", JSON.toJSONString(params));
        try {
            // 调用SDK验证签名
            boolean signVerified = AlipaySignature.rsaCheckV1(params, bundle.getString("ALIPAY_RSA2_PUBLIC_KEY"), "UTF-8", "RSA2");
            if (signVerified) {
                log.info("支付宝回调签名认证成功");
                // 按照支付结果异步通知中的描述，对支付结果中的业务内容进行1\2\3\4二次校验，校验成功后在response中返回success，校验失败返回failure
                this.check(params);
                // 另起线程处理业务
                taskExecutor.execute(() -> {
                    AlipayNotifyParam param = buildAlipayNotifyParam(params);
                    String trade_status = param.getTradeStatus();
                    log.info("支付宝支付回调下单状态{}", trade_status);
                    /**
                     * 交易状态说明
                     * 枚举名称	枚举说明
                     * WAIT_BUYER_PAY	交易创建，等待买家付款
                     * TRADE_CLOSED	未付款交易超时关闭，或支付完成后全额退款
                     * TRADE_SUCCESS	交易支付成功
                     * TRADE_FINISHED	交易结束，不可退款
                     */
                    // 支付成功
                    if ("TRADE_SUCCESS".equals(trade_status) || "TRADE_FINISHED".equals(trade_status)) {
                        // 处理支付成功逻辑
                        try {
                            //查询充值订单记录
                            PpRechargeRecord rechargeRecord = ppRechargeRecordMapper.selectPpRechargeRecordByOrderSn(params.get("out_trade_no"));
                            //支付成功 修改订单状态为成功
                            rechargeRecord.setRechargeStatus(1);
                            ppRechargeRecordMapper.updatePpRechargeRecord(rechargeRecord);
                            //修改余额
                            PpMember ppMember = ppMemberMapper.selectPpMemberById(Long.valueOf(param.getPassbackParams()));
                            ppMember.setBalance(ppMember.getBalance() + rechargeRecord.getRechargeDiamond());
                            ppMemberMapper.updatePpMember(ppMember);
                            //添加余额变动记录
                            PpBalaceRecord balaceRecord = new PpBalaceRecord();
                            balaceRecord.setOtherId(rechargeRecord.getId());
                            balaceRecord.setUserId(Long.valueOf(param.getPassbackParams()));
                            balaceRecord.setType(1);
                            balaceRecord.setBalaceAlterationGold(rechargeRecord.getRechargeDiamond().toString());
                            balaceRecord.setBalaceAlterationTime(DateUtils.getNowDate());
                            iPpBalaceRecordService.insertPpBalaceRecord(balaceRecord);
                        } catch (Exception e) {
                            log.error("支付宝回调业务处理报错,params:" + params, e);
                        }
                    } else {
                        log.error("没有处理支付宝回调业务，支付宝交易状态：{},params:{}", trade_status, params);
                    }

                });
                // 如果签名验证正确，立即返回success，后续业务另起线程单独处理
                // 业务处理失败，可查看日志进行补偿，跟支付宝已经没多大关系。
                return "success";
            } else {
                log.info("支付宝回调签名认证失败，signVerified=false, paramsJson:{}", params);
                return "failure";
            }
        } catch (AlipayApiException e) {
            log.error("支付宝回调签名认证失败,paramsJson:{},errorMsg:{}", params, e.getMessage());
            return "failure";
        }

    }

    /**
     * 开通会员支付回调
     *
     * @param request
     */
    @Override
    public String vipAliPayCallback(HttpServletRequest request) {
        // 将异步通知中收到的待验证所有参数都存放到map中
        Map<String, String> params = MapDataUtil.convertRequestParamsToMap(request);
        log.info("支付宝回调，{}", JSON.toJSONString(params));
        try {
            // 调用SDK验证签名
            boolean signVerified = AlipaySignature.rsaCheckV1(params, bundle.getString("ALIPAY_RSA2_PUBLIC_KEY"), "UTF-8", "RSA2");
            if (signVerified) {
                log.info("支付宝回调签名认证成功");
                // 按照支付结果异步通知中的描述，对支付结果中的业务内容进行1\2\3\4二次校验，校验成功后在response中返回success，校验失败返回failure
                this.vipCheck(params);
                // 另起线程处理业务
                taskExecutor.execute(() -> {
                    AlipayNotifyParam param = buildAlipayNotifyParam(params);
                    String trade_status = param.getTradeStatus();
                    log.info("支付宝支付回调下单状态{}", trade_status);
                    /**
                     * 交易状态说明
                     * 枚举名称	枚举说明
                     * WAIT_BUYER_PAY	交易创建，等待买家付款
                     * TRADE_CLOSED	未付款交易超时关闭，或支付完成后全额退款
                     * TRADE_SUCCESS	交易支付成功
                     * TRADE_FINISHED	交易结束，不可退款
                     */
                    // 支付成功
                    if ("TRADE_SUCCESS".equals(trade_status) || "TRADE_FINISHED".equals(trade_status)) {
                        // 处理支付成功逻辑
                        try {
                            //查询开通会员订单
                            PpVipOrder ppVipOrder = ppVipOrderService.selectOrderNumber(params.get("out_trade_no"));
                            //通过订单获取信息
                            ppMemberService.dredgeMember(ppVipOrder.getMemberId(), Integer.valueOf(ppVipOrder.getMemberSecond()),ppVipOrder.getMemberSecondType(),params.get("out_trade_no"));

                        } catch (Exception e) {
                            PpVipOrder ppVipOrder = ppVipOrderService.selectOrderNumber(params.get("out_trade_no"));
                            ppVipOrderService.deletePpVipOrderById(ppVipOrder.getId());
                            log.error("支付宝回调业务处理报错,params:" + params, e);
                        }
                    } else {
                        //删除开通会员的订单详情
                        PpVipOrder ppVipOrder = ppVipOrderService.selectOrderNumber(params.get("out_trade_no"));
                        ppVipOrderService.deletePpVipOrderById(ppVipOrder.getId());
                        log.error("没有处理支付宝回调业务，支付宝交易状态：{},params:{}", trade_status, params);
                    }

                });
                // 如果签名验证正确，立即返回success，后续业务另起线程单独处理
                // 业务处理失败，可查看日志进行补偿，跟支付宝已经没多大关系。
                return "success";
            } else {
                log.info("支付宝回调签名认证失败，signVerified=false, paramsJson:{}", params);
                //删除开通会员的订单详情
                PpVipOrder ppVipOrder = ppVipOrderService.selectOrderNumber(params.get("out_trade_no"));
                ppVipOrderService.deletePpVipOrderById(ppVipOrder.getId());
                return "failure";
            }
        } catch (AlipayApiException e) {
            log.error("支付宝回调签名认证失败,paramsJson:{},errorMsg:{}", params, e.getMessage());
            //删除开通会员的订单详情
            PpVipOrder ppVipOrder = ppVipOrderService.selectOrderNumber(params.get("out_trade_no"));
            ppVipOrderService.deletePpVipOrderById(ppVipOrder.getId());
            return "failure";
        }
    }

    /**
     * 1、商户需要验证该通知数据中的out_trade_no是否为商户系统中创建的订单号，
     * 2、判断total_amount是否确实为该订单的实际金额（即商户订单创建时的金额），
     * 3、校验通知中的seller_id（或者seller_email)是否为out_trade_no这笔单据的对应的操作方（有的时候，一个商户可能有多个seller_id/seller_email），
     * 4、验证app_id是否为该商户本身。上述1、2、3、4有任何一个验证不通过，则表明本次通知是异常通知，务必忽略。
     * 在上述验证通过后商户必须根据支付宝不同类型的业务通知，正确的进行不同的业务处理，并且过滤重复的通知结果数据。
     * 在支付宝的业务通知中，只有交易通知状态为TRADE_SUCCESS或TRADE_FINISHED时，支付宝才会认定为买家付款成功。
     *
     * @param params
     * @throws AlipayApiException
     */
    private void check(Map<String, String> params) throws AlipayApiException {
        String outTradeNo = params.get("out_trade_no");

        // 1、商户需要验证该通知数据中的out_trade_no是否为商户系统中创建的订单号，
        PpRechargeRecord ppRechargeRecord = ppRechargeRecordMapper.selectPpRechargeRecordByOrderSn(outTradeNo);
        if (ppRechargeRecord == null) {
            throw new AlipayApiException("out_trade_no错误");
        }

        // 2、判断total_amount是否确实为该订单的实际金额（即商户订单创建时的金额），
        String total_amount = params.get("total_amount");
        if (!total_amount.equals(ppRechargeRecord.getRechargeMoney())) {
            throw new AlipayApiException("error total_amount");
        }

        // 3、校验通知中的seller_id（或者seller_email)是否为out_trade_no这笔单据的对应的操作方（有的时候，一个商户可能有多个seller_id/seller_email），
        // 第三步可根据实际情况省略
        // 4、验证app_id是否为该商户本身。
        if (!params.get("app_id").equals(bundle.getString("APP_ID"))) {
            throw new AlipayApiException("app_id不一致");
        }
    }

    private void vipCheck(Map<String, String> params) throws AlipayApiException {
        String outTradeNo = params.get("out_trade_no");

        // 1、商户需要验证该通知数据中的out_trade_no是否为商户系统中创建的订单号，
        PpVipOrder ppVipOrder = ppVipOrderService.selectOrderNumber(outTradeNo);
        if (ppVipOrder == null) {
            throw new AlipayApiException("out_trade_no错误");
        }

        // 2、判断total_amount是否确实为该订单的实际金额（即商户订单创建时的金额），
        String total_amount = params.get("total_amount");
        if (!total_amount.equals(ppVipOrder.getCurrentPrice())) {
            throw new AlipayApiException("error total_amount");
        }

        // 3、校验通知中的seller_id（或者seller_email)是否为out_trade_no这笔单据的对应的操作方（有的时候，一个商户可能有多个seller_id/seller_email），
        // 第三步可根据实际情况省略
        // 4、验证app_id是否为该商户本身。
        if (!params.get("app_id").equals(bundle.getString("APP_ID"))) {
            throw new AlipayApiException("app_id不一致");
        }
    }

    private AlipayNotifyParam buildAlipayNotifyParam(Map<String, String> params) {
        String json = JSON.toJSONString(params);
        return JSON.parseObject(json, AlipayNotifyParam.class);
    }

    public static AlipayClient getAlipayClient() {
        // 网关
        String URL = bundle.getString("ALIPAY_GATEWAY_URL");
        // 商户APP_ID
        String APP_ID = bundle.getString("APP_ID");
        // 商户RSA 私钥
        String APP_PRIVATE_KEY = bundle.getString("RSA2_PRIVATE_KEY");
        // 请求方式 json
        String FORMAT = bundle.getString("FORMAT");
        // 编码格式，目前只支持UTF-8
        String CHARSET = bundle.getString("CHARSET");
        // 支付宝公钥
        String ALIPAY_PUBLIC_KEY = bundle.getString("ALIPAY_RSA2_PUBLIC_KEY");
        // 签名方式
        String SIGN_TYPE = bundle.getString("SIGN_TYPE");
        return new DefaultAlipayClient(URL, APP_ID, APP_PRIVATE_KEY, FORMAT, CHARSET, ALIPAY_PUBLIC_KEY, SIGN_TYPE);
    }

}
