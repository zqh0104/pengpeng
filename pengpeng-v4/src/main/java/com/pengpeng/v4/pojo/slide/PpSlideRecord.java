package com.pengpeng.v4.pojo.slide;

import lombok.Data;
import lombok.ToString;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Data
@ToString
public class PpSlideRecord {
    private Long id;

    private Long fromUid;

    @NotNull(message = "被喜欢人id不能为空")
    private Long toUid;

    private Date createTime;

    private Date updateTime;

    private String fromUname;

    private String toUname;

    @NotNull(message = "是否喜欢不能为空")
    private Boolean isLike;
}
