package com.pengpeng.framework.util;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTDecodeException;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.pengpeng.common.exception.user.UserTokenException;
import com.pengpeng.common.utils.StringUtils;
import com.pengpeng.framework.util.common.Base64ConvertUtil;
import com.pengpeng.framework.util.common.Constant;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.io.UnsupportedEncodingException;
import java.util.Date;

/**
 * JAVA-JWT工具类
 *
 * @author Wang926454
 * @date 2018/8/30 11:45
 */
@Component
public class JwtUtil {

    /**
     * logger
     */
    private static final Logger logger = LoggerFactory.getLogger(JwtUtil.class);

    /**
     * 过期时间改为从配置文件获取
     */
    @Value("${pengpeng.accessTokenExpireTime}")
    private static Long accessTokenExpireTime;

    /**
     * 过期刷新时间改为从配置文件获取
     */
    @Value("${pengpeng.refreshTokenExpireTime}")
    private static Long refreshTokenExpireTime;

    /**
     * JWT认证加密私钥(Base64加密)
     */
    @Value("${pengpeng.encryptJWTKey}")
    private static String encryptJWTKey;

    @Value("${pengpeng.accessTokenExpireTime}")
    public void setAccessTokenExpireTime(Long accessTokenExpireTime) {
        JwtUtil.accessTokenExpireTime = accessTokenExpireTime;
    }

    @Value("${pengpeng.encryptJWTKey}")
    public void setEncryptJWTKey(String encryptJWTKey) {
        JwtUtil.encryptJWTKey = encryptJWTKey;
    }


    public static Long getRefreshTokenExpireTime() {
        return refreshTokenExpireTime;
    }

    @Value("${pengpeng.refreshTokenExpireTime}")
    public void setRefreshTokenExpireTime(Long refreshTokenExpireTime) {
        JwtUtil.refreshTokenExpireTime = refreshTokenExpireTime;
    }

    /**
     * 校验token是否正确
     *
     * @param token Token
     * @return boolean 是否正确
     * @author Wang926454
     * @date 2018/8/31 9:05
     */
    public static boolean verify(String token) {
        try {
            // 帐号加JWT私钥解密
            String secret = getClaim(token, Constant.ACCOUNT) + Base64ConvertUtil.decode(encryptJWTKey);
            Algorithm algorithm = Algorithm.HMAC256(secret);
            JWTVerifier verifier = JWT.require(algorithm).build();
            DecodedJWT jwt = verifier.verify(token);
            return true;
        } catch (UnsupportedEncodingException e) {
            logger.error("JWTToken认证解密出现UnsupportedEncodingException异常:" + e.getMessage());
            throw new UserTokenException("JWTToken认证解密出现UnsupportedEncodingException异常:" + e.getMessage());
        }
    }

    /**
     * 获得Token中的信息无需secret解密也能获得
     *
     * @param token
     * @param claim
     * @return java.lang.String
     * @author Wang926454
     * @date 2018/9/7 16:54
     */
    public static String getClaim(String token, String claim) {
        try {
            if (StringUtils.isBlank(token)) {
                throw new UserTokenException("token为空");
            }
            DecodedJWT jwt = JWT.decode(token);
            // 只能输出String类型，如果是其他类型返回null
            return jwt.getClaim(claim).asString();
        } catch (JWTDecodeException e) {
            logger.error("解密Token中的公共信息出现JWTDecodeException异常:" + e.getMessage());
            throw new UserTokenException("解密Token中的公共信息出现JWTDecodeException异常:" + e.getMessage());
        }
    }

    /**
     * 生成签名
     *
     * @param account 帐号
     * @return java.lang.String 返回加密的Token
     * @author Wang926454
     * @date 2018/8/31 9:07
     */
    public static String sign(String account, String currentTimeMillis,String type,String id) {
        try {
            // 帐号加JWT私钥加密
            String secret = account + Base64ConvertUtil.decode(encryptJWTKey);
            // 此处过期时间是以毫秒为单位，所以乘以1000
            Date date = new Date(System.currentTimeMillis() + accessTokenExpireTime * 1000);
            Algorithm algorithm = Algorithm.HMAC256(secret);
            // 附带account帐号信息
            return JWT.create()
                    .withClaim(Constant.ACCOUNT, account)
                    .withClaim(Constant.LOGIN_TYPE,type)
                    .withClaim("id",id)
                    .withClaim("currentTimeMillis", currentTimeMillis)
                    .withExpiresAt(date)
                    .sign(algorithm);
        } catch (UnsupportedEncodingException e) {
            logger.error("JWTToken加密出现UnsupportedEncodingException异常:" + e.getMessage());
            throw new UserTokenException("JWTToken加密出现UnsupportedEncodingException异常:" + e.getMessage());
        }
    }
}
