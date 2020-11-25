package com.pengpeng.v4.utils;

import com.pengpeng.common.config.Global;
import com.pengpeng.common.utils.TLSSigAPIv2;
import com.pengpeng.v4.pojo.chatim.InfoResponse;
import com.pengpeng.v4.pojo.chatim.TimException;
import com.pengpeng.v4.pojo.sysset.SysSet;
import com.pengpeng.v4.service.sysset.SysSetService;
import com.pengpeng.v4.service.sysset.impl.SysSetServiceImpl;
import okhttp3.*;
import org.apache.commons.pool2.impl.GenericObjectPoolConfig;
import org.springframework.beans.factory.annotation.Autowired;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import java.net.SocketTimeoutException;
import java.util.Iterator;
import java.util.Map;


/**
 * @author 微笑的你
 * @version 1.0
 * @date 2019/12/31 19:52
 */

public class HttpClientToInterface {

    private static final Jedis jedis = new JedisPool(new GenericObjectPoolConfig(), Global.getConfig("spring.redis.host")).getResource();
    private static final String jedisKey = "pp:dict:tencent_im";
    private static final String key = jedis.hget(jedisKey, "key").replace("\"", "");
    private static final long sdkappid = Long.parseLong(jedis.hget(jedisKey, "sdkappid").replace("\"", ""));
    private static final OkHttpClient HTTP_CLIENT = new OkHttpClient();
    private static final MediaType JSON = MediaType.get("application/json; charset=utf-8");
    /**
     * 请求重试次数
     */
    private static final int reqReTryCount = 3;

    /**
     * 获取UserSig信息
     *
     * @param identifier 用户id
     */
    public static String getUserSig(String identifier) throws TimException {
        // 默认时间 30 天
        int time = 60 * 60 * 24 * 30;
        return getUserSig(identifier, time);
    }

    /**
     * 获取UserSig信息
     *
     * @param identifier 用户id
     * @param time       超时时间 秒
     */
    public static String getUserSig(String identifier, Integer time) throws TimException {
        TLSSigAPIv2 tlsSigAPIv2 = new TLSSigAPIv2();
        String sig = tlsSigAPIv2.genSig(identifier, time);
        return sig;
    }

    /**
     * 通用GET方法
     */
    public static String get(String api, Map<String, String> queryParams) throws TimException {

        String url = buildFullUrl(api, queryParams);

        Request request = new Request.Builder()
                .url(url)
                .get()
                .build();
        return execute(request);
    }

    /**
     * 通用POST方法
     */
    public static String post(String api, Object body) throws TimException {

        String url = buildFullUrl(api, null);
        String json = JsonUtils.toJson(body);
        System.out.println(json + "=================================");

        Request request = new Request.Builder()
                .url(url)
                .post(RequestBody.create(JSON, json))
                .build();

        return execute(request);
    }

    private static String buildFullUrl(String api, Map<String, String> queryParams) throws TimException {
        //获取tim的appid;
        Long appid = sdkappid;
        //获取管理员标识
        String adminIdentifier ="administrator";
        String userSig = HttpClientToInterface.getUserSig(adminIdentifier);
        String randomText = (Math.random() * 10000000 + "").substring(0, 8);
        String contentType = "json";
        String server = "https://console.tim.qq.com";
        String urlTemplate = server + "/" + api + "?sdkappid=%s&identifier=%s&usersig=%s&random=%s&contenttype=%s";
        String url = String.format(urlTemplate, appid, adminIdentifier, userSig, randomText, contentType);
        if (queryParams != null) {
            Iterator<Map.Entry<String, String>> iterator = queryParams.entrySet().iterator();
            Map.Entry<String, String> entry;
            while (iterator.hasNext()) {
                entry = iterator.next();
                url += "&" + entry.getKey() + "=" + entry.getValue();
            }
        }
        return url;
    }


    private static String execute(Request request) throws TimException {
        return execute(request, 1);
    }

    private static String execute(Request request, int reqCount) throws TimException {
        try {
            return executeInternal(request);
        } catch (SocketTimeoutException e) {
            if (reqCount >= reqReTryCount) {
                throw new TimException(0, "请求失效,请检查你的网络状态");
            }
            // 执行重试
            return execute(request, reqCount++);
        } catch (TimException e) {
            e.printStackTrace();
            throw new TimException(e.getErrorCode(), e.getErrorInfo());
        } catch (Exception e) {
            e.printStackTrace();
            throw new TimException(0, e.getMessage());
        }
    }

    private static String executeInternal(Request request) throws Exception {
        Response response = HTTP_CLIENT.newCall(request).execute();
        String jsonResult = response.body().string();
        InfoResponse infoResponse = JsonUtils.fromJson(jsonResult, InfoResponse.class);
        if (infoResponse.getErrorCode() != 0) {
            throw new TimException(infoResponse.getErrorCode(), infoResponse.getErrorInfo());
        }
        return jsonResult;
    }
}
