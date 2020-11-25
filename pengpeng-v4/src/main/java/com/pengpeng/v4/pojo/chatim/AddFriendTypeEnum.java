package com.pengpeng.v4.pojo.chatim;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2020/1/2 16:25
 */
@Getter
public enum AddFriendTypeEnum {

    // 单向添加好友
    Add_Type_Single("Add_Type_Single"),
    // 双向添加好友
    Add_Type_Both("Add_Type_Both");

    private String info;

    AddFriendTypeEnum(String info) {
        this.info = info;
    }
}
