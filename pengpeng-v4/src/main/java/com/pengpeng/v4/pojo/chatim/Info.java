package com.pengpeng.v4.pojo.chatim;

import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2019/12/20 15:40
 *
 * 用户im的状态 用户上下线的信息
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Info implements Serializable {


    private static final long serialVersionUID = -7099613843957823193L;
    @Excel(name = "用户上线或者下线的动作，Login上线,Logout下线，Disconnect网络断开")
    private String action;

    @Excel(name = "用户标识")
    private String toAccount;

    @Excel(name = "用户上下线触发的原因")
    private String reason;


}
