package com.pengpeng.v4.pojo.chatim;

import lombok.Getter;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2020/1/2 17:11
 */
@Getter
public enum DeleteFriendTypeEnum {

    // 单向添加好友
    Delete_Type_Single("Delete_Type_Single"),
    // 双向添加好友
    Delete_Type_Both("Delete_Type_Both");


    private String info;

    DeleteFriendTypeEnum(String info) {
        this.info = info;
    }

}
