package com.pengpeng.v4.pojo.chatim;

import com.google.gson.annotations.SerializedName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2020/1/4 19:15
 * 自定义消息元素
 */

@AllArgsConstructor
@NoArgsConstructor
@Data
@ToString
public class MsgContent implements Serializable {


    private static final long serialVersionUID = 3769103840102582775L;

    /**
     * 自定义消息数据。 不作为 APNs 的 payload 字段下发，故从 payload 中无法获取 Data 字段。
     * 自定义的消息数据
     */
    @SerializedName("Data")
    private String timData;

    /**
     * 自定义消息描述信息；当接收方为 iOS 或 Android 后台在线时，做离线推送文本展示。
     */
    @SerializedName("Desc")
    private String desc;

    /**
     * 扩展字段；当接收方为 iOS 系统且应用处在后台时，此字段作为 APNs 请求包 Payloads 中的 Ext 键值下发，Ext 的协议格式由业务方确定，APNs 只做透传。
     */
    @SerializedName("Ext")
    private String ext;

    /**
     * 自定义 APNs 推送铃音
     */
    @SerializedName("Sound")
    private String sound;


}
