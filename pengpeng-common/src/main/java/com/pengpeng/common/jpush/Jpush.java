package com.pengpeng.common.jpush;

import cn.jiguang.common.resp.APIConnectionException;
import cn.jiguang.common.resp.APIRequestException;
import cn.jpush.api.JPushClient;
import cn.jpush.api.push.PushResult;
import cn.jpush.api.push.model.Message;
import cn.jpush.api.push.model.Options;
import cn.jpush.api.push.model.Platform;
import cn.jpush.api.push.model.PushPayload;
import cn.jpush.api.push.model.audience.Audience;
import cn.jpush.api.push.model.notification.Notification;
import com.sun.media.jfxmedia.logging.Logger;
import lombok.extern.slf4j.Slf4j;

import java.util.HashMap;
import java.util.Map;

@Slf4j
public class Jpush {

    // 设置好账号的app_key和masterSecret是必须的
    private static String APP_KEY = "037233e6aecd8e0e4ac79578";
    private static String MASTER_SECRET = "9131594a71580e5067ca98ed";

    //极光推送>>all
    public static void jpushAll(Map<String, String> parm) {
        //创建JPushClient(极光推送的实例)
        JPushClient jpushClient = new JPushClient(MASTER_SECRET, APP_KEY);
        //推送的关键,构造一个payload
        PushPayload payload = PushPayload.newBuilder()
                .setPlatform(Platform.android())//指定android平台的用户
                .setAudience(Audience.all())//你项目中的所有用户
                //.setAudience(Audience.registrationId(parm.get("id")))//registrationId指定用户
                .setNotification(Notification.android(parm.get("msg"), parm.get("title"), parm))
                //这里是指定开发环境,不用设置也没关系
                .setOptions(Options.newBuilder().setApnsProduction(false).build())
                //发送内容
                .setMessage(Message.content(parm.get("msg")))//自定义信息
                .build();
        try {
            PushResult pu = jpushClient.sendPush(payload);
            System.out.println(pu);
        } catch (APIConnectionException e) {
            log.error("消息推送异常：{}", e.getStackTrace());
        } catch (APIRequestException e) {
            log.error("消息推送异常：{}", e.getStackTrace());
        }
    }

    public static void jpushByRegId(Map<String, String> parm) {
        JPushClient jpushClient = new JPushClient(MASTER_SECRET, APP_KEY);
        //推送的关键,构造一个payload
        PushPayload payload = PushPayload.newBuilder()
                .setPlatform(Platform.android())//指定android平台的用户
//                .setAudience(Audience.all())//你项目中的所有用户
                .setAudience(Audience.registrationId(parm.get("id")))//registrationId指定用户
                .setNotification(Notification.android(parm.get("msg"), parm.get("title"), parm))
                //这里是指定开发环境,不用设置也没关系
                .setOptions(Options.newBuilder().setApnsProduction(false).build())
                //发送内容
                .setMessage(Message.content(parm.get("msg")))//自定义信息
                .build();
        try {
            PushResult pu = jpushClient.sendPush(payload);
            System.out.println(pu);
        } catch (APIConnectionException e) {
            log.error("消息推送异常：{}", e.getStackTrace());
        } catch (APIRequestException e) {
            log.error("消息推送异常：{}", e.getStackTrace());
        }
    }

    public static void main(String[] args) {

        //设置推送参数
        //这里同学们就可以自定义推送参数了
        Map<String, String> parm = new HashMap<String, String>();
        //这里的id是,移动端集成极光并登陆后,极光用户的rid
        parm.put("id", "1104a8979239ca6bb56");
        parm.put("title", "43434");
        parm.put("url", "/pages/msg/msg");
        //设置提示信息,内容是文章标题
        parm.put("msg", "l路文雅shizhu   ");
//        Jpush.jpushAll(parm);
        Jpush.jpushByRegId(parm);
    }
}
