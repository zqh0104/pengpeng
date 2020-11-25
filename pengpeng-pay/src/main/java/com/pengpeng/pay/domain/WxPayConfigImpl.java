package com.pengpeng.pay.domain;

import com.github.wxpay.sdk.WXPayConfig;
import org.springframework.stereotype.Component;

import java.io.InputStream;
import java.util.ResourceBundle;

/**
 * @author Administrator
 */
@Component
public class WxPayConfigImpl implements WXPayConfig {
    private static ResourceBundle bundle = ResourceBundle.getBundle("wxpay_openapi");

    private String APP_ID = bundle.getString("APP_ID");

    private String API_KEY = bundle.getString("API_KEY");

    private String MACH_ID = bundle.getString("MCH_ID");

    private String NOTIFY_URL = bundle.getString("NOTIFY_URL");

    private String NOTIFY_URL2 = bundle.getString("NOTIFY_URL2");

    private String UNIFIEDORDER_URL = bundle.getString("UNIFIEDORDER_URL");

    public String getNOTIFY_URL() {
        return this.NOTIFY_URL;
    }

    public String getUNIFIEDORDER_URL() {
        return UNIFIEDORDER_URL;
    }

    public String getNOTIFY_URL2() {
        return NOTIFY_URL2;
    }
    @Override
    public String getAppID() {
        return this.APP_ID;
    }

    @Override
    public String getMchID() {
        return this.MACH_ID;
    }

    @Override
    public String getKey() {
        return this.API_KEY;
    }

    @Override
    public InputStream getCertStream() {
        return null;
    }

    @Override
    public int getHttpConnectTimeoutMs() {
        return 0;
    }

    @Override
    public int getHttpReadTimeoutMs() {
        return 0;
    }
}
