package com.pengpeng.v4.pojo.chatim;

import com.google.gson.annotations.SerializedName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2020/1/2 16:58
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SnsItem implements Serializable {

    private static final long serialVersionUID = -6731505280877330758L;

    @SerializedName("Tag")
    private String tag;

    @SerializedName("Value")
    private String value;

}
