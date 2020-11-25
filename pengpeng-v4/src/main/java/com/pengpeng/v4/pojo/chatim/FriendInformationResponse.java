package com.pengpeng.v4.pojo.chatim;

import com.google.gson.annotations.SerializedName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2020/1/3 9:53
 * 拉取好友资料的应答消息
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class FriendInformationResponse extends ReturnInformation implements Serializable {
    private static final long serialVersionUID = -600287498508316957L;

    @SerializedName("UserProfileItem")
    private List<UserProfileItem> userProfileItems;

}
