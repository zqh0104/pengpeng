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
 * @date 2020/1/4 18:46
 */

@AllArgsConstructor
@NoArgsConstructor
@Data
@ToString
public class CustomMessageResult extends InfoResponse implements Serializable {


    private static final long serialVersionUID = 6849921949737690794L;

    /**
     * 时间戳
     */
    @SerializedName("MsgTime")
    private Integer msgTime;

    /**
     * 消息唯一标示用于撤回消息
     */
    @SerializedName("MsgKey")
    private String msgKey;


}
