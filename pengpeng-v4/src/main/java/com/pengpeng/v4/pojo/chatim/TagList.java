package com.pengpeng.v4.pojo.chatim;

import com.google.gson.annotations.SerializedName;
import com.pengpeng.common.annotation.Excel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2020/1/3 13:28
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class TagList implements Serializable {
    private static final long serialVersionUID = 6548622715254027882L;

    @SerializedName("Tag_Profile_IM_Nick")
    private String nick;

    /**
     * 头像
     */
    @SerializedName("Tag_Profile_IM_Image")
    private String image;

    /**
     * 等级
     */
    @SerializedName("Tag_Profile_IM_Level")
    private String lecel;




}
