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
 * @date 2020/1/2 16:55
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class TimFriend implements Serializable {
    private static final long serialVersionUID = 7475013438746721898L;

    @SerializedName("To_Account")
    private String account;

    @SerializedName("Remark")
    private String remark;

    @SerializedName("RemarkTime")
    private Long remarkTime;

    @SerializedName("GroupName")
    private List<String> groupNames ;

    @SerializedName("AddSource")
    private String addSource;

    @SerializedName("AddWording")
    private String addWoring;

    @SerializedName("AddTime")
    private Long addTime;

    @SerializedName("CustomItem")
    private List<SnsItem> customItems;
}
