package com.pengpeng.v4.pojo.chatim;

import com.google.gson.annotations.SerializedName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2020/1/2 10:21
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class TimAccount implements Serializable {

    private static final long serialVersionUID = 2409140845659921265L;

    /** 用户名，长度不超过32字节 */
    @SerializedName("Identifier")
    private String identifier;

    /** 用户昵称 */
    @SerializedName("Nick")
    private String nick;

    /** 用户头像 URL */
    @SerializedName("FaceUrl")
    private String faceUrl;

    /** 帐号类型，开发者默认无需填写，值0表示普通帐号，1表示机器人帐号 */
    @SerializedName("Type")
    private Integer type = 0;


}
