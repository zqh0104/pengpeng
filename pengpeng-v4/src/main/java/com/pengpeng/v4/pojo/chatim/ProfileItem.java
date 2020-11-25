package com.pengpeng.v4.pojo.chatim;

import com.google.gson.annotations.SerializedName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2020/1/3 10:17
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProfileItem implements Serializable {

    private static final long serialVersionUID = -1508451206552059834L;
    @SerializedName("Tag")
    private String tag;

    @SerializedName("Value")
    private String value;
}
