package com.pengpeng.v4.pojo.chatim;

import com.google.gson.annotations.SerializedName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2019/12/31 18:54
 * 返回信息
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReturnInformation implements Serializable {
    private static final long serialVersionUID = 7277619769271606191L;

    /**
     * 	请求处理的结果，“OK”表示处理成功，“FAIL”表示失败
     */
    @SerializedName("ActionStatus")
    private String actionStatus;

    /**
     * 	错误码
     */
    @SerializedName("ErrorCode")
    private Long errorCode;

    /**
     * 详细错误信息
     */
    @SerializedName("ErrorInfo")
    private String errorInfo;

    /**
     * 	详细的客户端展示信息
     */
    @SerializedName("ErrorDisplay")
    private String errorDisplay;
}
