package com.pengpeng.v4.pojo.chatim;

import lombok.Getter;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2020/1/2 16:30
 */
@Getter
public enum  AddFriendSourceEnum {

    /** ios */
    IOS("AddSource_Type_ios"),

    /** android */
    ANDROID("AddSource_Type_Android"),

    /** web */
    WEB("AddSource_Type_web"),

    /** 微信小程序 */
    APPLET("AddSource_Type_APPLET");


    private String info;

    AddFriendSourceEnum(String info) {
        this.info = info;
    }
}
