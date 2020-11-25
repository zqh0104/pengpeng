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
 * @date 2020/1/2 16:49
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class AddRelationVo extends InfoResponse implements Serializable {

    private static final long serialVersionUID = 45936117821562477L;
    /**
     * 无结果的信息 失败的用户
     */
    @SerializedName("ResultItem")
    private List<ResultItemDetail> resultItems ;

    /***
     * 失败的用户信息
     */
    @SerializedName("Fail_Account")
    private List<String> failAccount ;

    /**
     * 无效的账户信息
     */
    @SerializedName("Invalid_Account")
    private List<String> invalidAccount;

    /**
     *错误显示
     */
    @SerializedName("ErrorDisplay")
    private String errorDisplay ;
}
