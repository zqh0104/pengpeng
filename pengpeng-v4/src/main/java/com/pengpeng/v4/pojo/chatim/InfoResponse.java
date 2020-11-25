package com.pengpeng.v4.pojo.chatim;

import com.google.gson.annotations.SerializedName;
import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2019/12/20 15:50
 *
 * 用户上下线的信息响应信息
 */
@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class InfoResponse implements Serializable {

    private static final long serialVersionUID = 2605294941717163166L;

    @Excel(name = "请求处理的结果，OK 表示处理成功，FAIL 表示失败")
    @SerializedName("ActionStatus")
    private String actionStatus;


    @Excel(name = "错误码，0表示 App 后台处理成功，1表示 App 后台处理失败")
    @SerializedName("ErrorCode")
    private Integer errorCode;

    @Excel(name = "错误信息")
    @SerializedName("ErrorInfo")
    private String errorInfo;
}
