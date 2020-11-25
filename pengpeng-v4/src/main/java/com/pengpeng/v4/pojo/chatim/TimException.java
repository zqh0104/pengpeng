package com.pengpeng.v4.pojo.chatim;

import com.google.gson.annotations.SerializedName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2019/12/31 14:32
 *
 * 错误类型和错误信息
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class TimException extends RuntimeException implements Serializable {
    private static final long serialVersionUID = 2496313057424791387L;

    @SerializedName("ErrorCode")
    private int errorCode;

    @SerializedName("ErrorInfo")
    private String errorInfo;

}
