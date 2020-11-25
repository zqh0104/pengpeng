package com.pengpeng.v4.pojo.chatim;

import com.google.gson.annotations.SerializedName;

import java.io.Serializable;
import java.util.List;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2020/1/3 9:57
 *
 * 好友资料的应答包的数据
 */
public class UserProfileItem implements Serializable {

    private static final long serialVersionUID = 5394082386052698386L;

    @SerializedName("To_Account")
    private String toAccount;

    @SerializedName("ProfileItem")
    private List<ProfileItem> profileItems;

    @SerializedName("ResultCode")
    private String resultCode;

    @SerializedName("ResultInfo")
    private String resultInfo;


}
