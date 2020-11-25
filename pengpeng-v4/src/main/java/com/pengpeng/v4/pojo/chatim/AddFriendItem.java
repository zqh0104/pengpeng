package com.pengpeng.v4.pojo.chatim;

import com.google.gson.annotations.SerializedName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2020/1/2 17:51
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AddFriendItem implements Serializable {
    private static final long serialVersionUID = -7189381120991177935L;

    @SerializedName("To_Account")
    private String toAccount ;

    @SerializedName("AddSource")
    private String addSource ;

}
