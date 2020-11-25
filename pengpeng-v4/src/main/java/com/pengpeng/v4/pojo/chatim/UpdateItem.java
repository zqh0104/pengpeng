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
 * @date 2020/1/2 17:04
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UpdateItem implements Serializable {
    private static final long serialVersionUID = -4591920855667470810L;

    @SerializedName("To_Account")
    private String toAccount ;

    @SerializedName("SnsItem")
    private List<SnsItem> snsItems ;
}
