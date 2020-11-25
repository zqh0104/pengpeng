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
 * @date 2019/12/30 14:28
 * 腾讯im的错误码
 */
@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class ChatError implements Serializable {

    private static final long serialVersionUID = -6617653639467791450L;

    @SerializedName("To_Account")
    private String toAccount;

    @SerializedName("ErrorCode")
    private String errorCode ;
}
