package com.pengpeng.v4.pojo.chatim;

import com.google.gson.annotations.SerializedName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;
import java.util.List;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2020/1/3 9:52
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class FriendInformation implements Serializable {
    private static final long serialVersionUID = -1147509751141628202L;

    @SerializedName("To_Account")
    private List<String> toAccount;

    @SerializedName("TagList")
    private List<TagList> tagLists;

}
