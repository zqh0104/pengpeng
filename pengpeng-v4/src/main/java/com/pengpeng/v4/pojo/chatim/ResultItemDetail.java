package com.pengpeng.v4.pojo.chatim;

import com.google.gson.annotations.SerializedName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2020/1/2 16:43
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ResultItemDetail implements Serializable {

    private static final long serialVersionUID = 7434811230308107226L;
    /**
     * 账户
     */
    @SerializedName("To_Account")
    private String toAccount ;

    /**
     * 结果编号
     */
    @SerializedName("ResultCode")
    private Integer resultCode ;

    /**
     * 结果信息
     */
    @SerializedName("ResultInfo")
    private String resultInfo ;
}
