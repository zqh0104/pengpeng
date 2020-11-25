package com.pengpeng.v4.pojo.balcklist;

import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import lombok.Data;
import lombok.ToString;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
 * 用户拉黑对象 pp_user_blacklist
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@Data
@ToString
public class PpUserBlacklist extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 用户id */
    @Excel(name = "用户id")
    private Long userId;

    /** 被拉黑用户id */
    @Excel(name = "被拉黑用户id")
    @NotNull(message = "拉黑用户id不能为空")
    private Long defriendUserId;

    private String defriendHeadImage;

    private String defriendNickName;
}
