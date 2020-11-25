package com.pengpeng.common.utils;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2019/12/25 17:23
 */
// 使用旧版本 base64 编解码实现增强兼容性

import com.pengpeng.common.config.Global;
import org.apache.commons.pool2.impl.GenericObjectPoolConfig;
import org.json.JSONException;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import sun.misc.BASE64Encoder;

import java.io.UnsupportedEncodingException;
import java.security.*;
import java.nio.charset.Charset;

import java.util.Arrays;
import java.util.zip.Deflater;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

import org.json.JSONObject;

public class TLSSigAPIv2 {

    private static final Jedis jedis = new JedisPool(new GenericObjectPoolConfig(), Global.getConfig("spring.redis.host")).getResource();
    private static String jedisKey = "pp:dict:tencent_im";
    private static String key = jedis.hget(jedisKey, "key").replace("\"", "");
    private static long sdkappid = Long.parseLong(jedis.hget(jedisKey, "sdkappid").replace("\"", ""));

    /*public TLSSigAPIv2(long sdkappid, String key) {
        this.sdkappid = sdkappid;
        this.key = key;
    }*/

    public TLSSigAPIv2() {

    }

    private String hmacsha256(String identifier, long currTime, long expire, String base64Userbuf) {
        String contentToBeSigned = "TLS.identifier:" + identifier + "\n"
                + "TLS.sdkappid:" + sdkappid + "\n"
                + "TLS.time:" + currTime + "\n"
                + "TLS.expire:" + expire + "\n";
        if (null != base64Userbuf) {
            contentToBeSigned += "TLS.userbuf:" + base64Userbuf + "\n";
        }
        try {
            byte[] byteKey = key.getBytes("UTF-8");
            Mac hmac = Mac.getInstance("HmacSHA256");
            SecretKeySpec keySpec = new SecretKeySpec(byteKey, "HmacSHA256");
            hmac.init(keySpec);
            byte[] byteSig = hmac.doFinal(contentToBeSigned.getBytes("UTF-8"));
            return (new BASE64Encoder().encode(byteSig)).replaceAll("\\s*", "");
        } catch (UnsupportedEncodingException e) {
            return "";
        } catch (NoSuchAlgorithmException e) {
            return "";
        } catch (InvalidKeyException e) {
            return "";
        }
    }

    private String genSig(String identifier, long expire, byte[] userbuf) throws JSONException {

        long currTime = System.currentTimeMillis() / 1000;

        JSONObject sigDoc = new JSONObject();
        sigDoc.put("TLS.ver", "2.0");
        sigDoc.put("TLS.identifier", identifier);
        sigDoc.put("TLS.sdkappid", sdkappid);
        sigDoc.put("TLS.expire", expire);
        sigDoc.put("TLS.time", currTime);

        String base64UserBuf = null;
        if (null != userbuf) {
            base64UserBuf = new BASE64Encoder().encode(userbuf);
            sigDoc.put("TLS.userbuf", base64UserBuf);
        }
        String sig = hmacsha256(identifier, currTime, expire, base64UserBuf);
        if (sig.length() == 0) {
            return "";
        }
        sigDoc.put("TLS.sig", sig);
        Deflater compressor = new Deflater();
        compressor.setInput(sigDoc.toString().getBytes(Charset.forName("UTF-8")));
        compressor.finish();
        byte[] compressedBytes = new byte[2048];
        int compressedBytesLength = compressor.deflate(compressedBytes);
        compressor.end();
        return (new String(Base64URL.base64EncodeUrl(Arrays.copyOfRange(compressedBytes,
                0, compressedBytesLength)))).replaceAll("\\s*", "");
    }

    public String genSig(String identifier, long expire) throws JSONException {
        return genSig(identifier, expire, null);
    }

    public String genSigWithUserBuf(String identifier, long expire, byte[] userbuf) throws JSONException {
        return genSig(identifier, expire, userbuf);
    }
}

