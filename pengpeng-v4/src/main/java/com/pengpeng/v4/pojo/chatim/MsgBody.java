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
 * @date 2020/1/4 19:04
 *
 * 消息元素实体类
 */

@ToString
@Data
@NoArgsConstructor
@AllArgsConstructor
public class MsgBody implements Serializable {
    private static final long serialVersionUID = -5348885688924173572L;

    @SerializedName("MsgType")
    private String msgType;

    @SerializedName("MsgContent")
    private MsgContent msgContent;

}
