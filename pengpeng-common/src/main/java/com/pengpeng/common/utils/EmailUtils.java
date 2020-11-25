package com.pengpeng.common.utils;
import org.springframework.mail.SimpleMailMessage;

/**
 * @author Administrator
 */
public class EmailUtils {


    /**
     * 发送Error邮件
     * @param e
     * @return
     */
    public static SimpleMailMessage sendEmail(Exception e) {
        SimpleMailMessage msg = new SimpleMailMessage();
        //发送者
        msg.setFrom("997090615@qq.com");
        //接收者
        msg.setTo("y997090615@163.com");
        //标题
        msg.setSubject(IpUtils.getHostIp().concat("--------"+e.toString()));
        //内容
        msg.setText(ExceptionUtil.getExceptionMessage(e));
        return msg;
    }


}
