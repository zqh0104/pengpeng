package com.pengpeng.v4.pojo.chatim;

import com.google.gson.annotations.SerializedName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2020/1/2 17:07
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ResultItem implements Serializable {
    private static final long serialVersionUID = 832621008096339206L;

    @SerializedName("ResultCode")
    private int resultCode;

    @SerializedName("ResultInfo")
    private String resultInfo;

    @SerializedName("To_Account")
    private String account;
}
