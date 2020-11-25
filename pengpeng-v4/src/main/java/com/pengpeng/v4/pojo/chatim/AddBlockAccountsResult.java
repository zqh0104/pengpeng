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
 * @date 2020/1/4 13:43
 *
 * 添加拉黑用户返回的结果集
 */

@NoArgsConstructor
@AllArgsConstructor
@Data
@ToString
public class AddBlockAccountsResult extends ReturnInformation implements Serializable {

    private static final long serialVersionUID = 2309361223721132684L;
    /**
     * 拉黑后返回的是否成功拉黑的结果信息
     */
    @SerializedName("ResultItem")
    private List<ResultItem> resultItems;

    /**
     * 没有拉黑的用户信息
     */
    @SerializedName("Fail_Account")
    private List failAccount;

}
