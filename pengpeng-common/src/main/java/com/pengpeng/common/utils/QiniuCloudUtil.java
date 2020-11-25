package com.pengpeng.common.utils;

import com.alibaba.fastjson.JSON;
import com.pengpeng.common.config.Global;
import com.pengpeng.common.config.thread.ThreadPoolConfig;
import com.pengpeng.common.json.JSONObject;
import com.qiniu.common.QiniuException;
import com.qiniu.http.Client;
import com.qiniu.http.Response;
import com.qiniu.sms.Configuration;
import com.qiniu.util.Auth;
import com.qiniu.util.Base64;
import com.qiniu.util.StringMap;
import com.qiniu.util.UrlSafeBase64;
import lombok.extern.slf4j.Slf4j;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import org.apache.commons.pool2.impl.GenericObjectPoolConfig;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import java.util.List;


/**
 * 七牛云上传文件工具类
 *
 * @author Administrator
 */
@Slf4j
public class QiniuCloudUtil {

    private static final Jedis jedis = new JedisPool(new GenericObjectPoolConfig(),Global.getConfig("spring.redis.host")).getResource();

    private static final String jedisKey = "pp:dict:qiniu_storage";
    // 设置需要操作的账号的AK和SK
    private static final String ACCESS_KEY = jedis.hget(jedisKey, "ACCESS_KEY").replace("\"", "");
    private static final String SECRET_KEY = jedis.hget(jedisKey, "SECRET_KEY").replace("\"", "");

    // 要上传的空间
    private static final String bucketname = jedis.hget(jedisKey, "bucketname").replace("\"", "");

    // 密钥
    private static final Auth auth = Auth.create(ACCESS_KEY, SECRET_KEY);

    private static final String DOMAIN = jedis.hget(jedisKey, "DOMAIN").replace("\"", "");

    public static String getUpToken() {
        return auth.uploadToken(bucketname, null, 3600, new StringMap().put("insertOnly", 1));
    }

    //base64方式上传
    public static com.pengpeng.common.json.JSONObject put64image(byte[] base64, String key, String fileType) throws Exception {
        String file64 = Base64.encodeToString(base64, 0);
        Integer len = base64.length;
        //华北空间使用 upload-z1.qiniu.com，华南空间使用 upload-z2.qiniu.com，北美空间使用 upload-na0.qiniu.com
        String url = "http://upload-z2.qiniu.com/putb64/" + len + "/key/" + UrlSafeBase64.encodeToString(key);

        RequestBody rb = RequestBody.create(null, file64);
        Request request = new Request.Builder()
                .url(url)
                .addHeader("Content-Type", "application/octet-stream")
                .addHeader("Authorization", "UpToken " + getUpToken())
                .post(rb).build();
        OkHttpClient client = new OkHttpClient();
        okhttp3.Response response = client.newCall(request).execute();
        String fileUrl = DOMAIN + key;
        log.info("response:{}", response);
        log.info("url:{}", fileUrl);
        JSONObject result = new JSONObject();
        result.put("url", fileUrl);
        ThreadPoolConfig.getExecutor().execute(() -> {
            //视频图片鉴黄
            if ("image".equals(fileType)) {
                authImgPulp(fileUrl);
            } else {
                authVideoPulP(fileUrl);
            }
        });
        response.close();
        return result;
    }

    /**
     * 图片鉴黄
     *
     * @param imageUrl
     * @return
     */
    private static void authImgPulp(String imageUrl) {
        String url = "http://ai.qiniuapi.com/v3/image/censor";
        String host = "ai.qiniuapi.com";
        String body = "{\n" +
                "\t\"data\": {\n" +
                "\t\t\"uri\": \"" + imageUrl + "\"\n" +
                "\t},\n" +
                "\t\"params\": {\n" +
                "\t\t\"scenes\": [\n" +
                "\t\t\t\"pulp\"\n" +
                "\t\t]\n" +
                "\t}\n" +
                "}";
        String contentType = "application/json";
        //生成token
        String accessToken = "Qiniu " + auth.signRequestV2(url, "POST", body.getBytes(), contentType);
        //构造header
        StringMap header = new StringMap();
        header.put("Host", host);
        header.put("Authorization", accessToken);
        header.put("Content-Type", contentType);
        //创建请求
        try {
            Client client = new Client();
            Response response = client.post(url, body.getBytes(), header, contentType);
            String result = response.bodyString();
            com.alibaba.fastjson.JSONObject resultJSON = JSON.parseObject(result).getJSONObject("result").getJSONObject("scenes").getJSONObject("pulp");
            List<com.alibaba.fastjson.JSONObject> list = (List) resultJSON.get("details");
            log.info("七牛云鉴黄结果：{}", response.bodyString());
            boolean b = "pulp".equals(list.get(0).getString("label")) ? true : false;
            //此处使用redis消息队列实现文件鉴黄结果的修改
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("url", imageUrl);
            jsonObject.put("pulp", b);
            jsonObject.put("file_type", 1);
            jedis.publish("filesIdentificationMessage", jsonObject.toString());
        } catch (QiniuException e) {
            e.printStackTrace();
        }
    }

    /**
     * 视频鉴黄
     *
     * @param videoUrl
     * @return
     */
    public static void authVideoPulP(String videoUrl) {
        String url = "http://ai.qiniuapi.com/v3/video/censor";
        String host = "ai.qiniuapi.com";

        String body = "{\n" +
                "\t\"data\": {\n" +
                "\t\t\"uri\": \"" + videoUrl + "\"\n" +
                "\t},\n" +
                "\t\"params\": {\n" +
                "\t\t\"scenes\": [\n" +
                "\t\t\t\"pulp\"\n" +
                "\t\t]\n" +
                "\t}\n" +
                "}";
        String contentType = "application/json";

        String method = "POST";
        String accessToken = "Qiniu " + auth.signRequestV2(url, method, body.getBytes(), contentType);
        StringMap header = new StringMap();
        header.put("Host", host);
        header.put("Authorization", accessToken);
        header.put("Content-Type", contentType);

        try {
            Configuration c = new Configuration();
            Client client = new Client(c);
            Response response = client.post(url, body.getBytes(), header, contentType);
            String result = response.bodyString();
            com.alibaba.fastjson.JSONObject resultJSON = JSON.parseObject(result);
            String jobId = resultJSON.getString("job");
            String requstUrl = "http://ai.qiniuapi.com/v3/jobs/video/" + jobId;
            String token = "Qiniu " + auth.signRequestV2(requstUrl, "GET", null, null);
            StringMap header2 = new StringMap();
            header2.put("Host", host);
            header2.put("Authorization", token);
            //不能同步得到鉴黄结果 需要异步获取结果 此处暂时用轮询获取结果
            boolean flag = true;
            String suggestion = null;
            while (flag) {
                Response response1 = client.get(requstUrl, header2);
                String status = JSON.parseObject(response1.bodyString()).getString("status");
                if ("FINISHED".equals(status)) {
                    flag = false;
                    suggestion = JSON.parseObject(response1.bodyString()).getJSONObject("result").getJSONObject("result").getString("suggestion");
                } else {
                    Threads.sleep(1500);
                }
            }
            boolean b = "pass".equals(suggestion) ? false : true;
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("url", videoUrl);
            jsonObject.put("pulp", b);
            jsonObject.put("file_type", 2);
            jedis.publish("filesIdentificationMessage", jsonObject.toString());
            //获取所有鉴别完成的数据
//            String getresultUrl = "http://ai.qiniuapi.com/v3/jobs/video?status=" + "FINISHED";
//            String token2 = "Qiniu " + auth.signRequestV2(getresultUrl, "GET", null, null);
//            StringMap header3 = new StringMap();
//            header3.put("Host", host);
//            header3.put("Authorization", token2);
//            Response response3 = client.get(getresultUrl, header3);
//            System.out.println(response3.bodyString());
        } catch (QiniuException e) {
            e.printStackTrace();
        }
    }
}