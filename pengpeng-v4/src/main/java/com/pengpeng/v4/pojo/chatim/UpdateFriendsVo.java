package com.pengpeng.v4.pojo.chatim;

import com.google.gson.annotations.SerializedName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2020/1/2 17:06
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UpdateFriendsVo extends InfoResponse implements Serializable {

    private static final long serialVersionUID = 3832294483344686260L;
    @SerializedName("ResultItem")
    private List<ResultItem> resultItems = new ArrayList<>();

    @SerializedName("Fail_Account")
    private List<String> failAccounts = new ArrayList<>();

    @SerializedName("Invalid_Account")
    private List<String> invalidAccounts = new ArrayList<>();
}
