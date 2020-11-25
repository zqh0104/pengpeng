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
 * @date 2020/1/2 17:12
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class DeleteFriendsVo extends InfoResponse implements Serializable {

    private static final long serialVersionUID = 3009200045526240366L;

    @SerializedName("ResultItem")
    private List<ResultItem> resultItems;
}
