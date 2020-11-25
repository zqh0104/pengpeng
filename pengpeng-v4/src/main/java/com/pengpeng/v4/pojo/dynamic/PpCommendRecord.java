package com.pengpeng.v4.pojo.dynamic;

import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import lombok.Data;
import lombok.ToString;

import javax.validation.constraints.NotNull;

/**
 * 点赞记录对象 pp_commend_record
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@Data
@ToString
public class PpCommendRecord extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 动态id */
    @Excel(name = "动态id")
    @NotNull(message = "动态Id不能为空")
    private Long dynamicId;

    private String dynamicContent;
    private String nickname;
    /** 用户id */
    @Excel(name = "用户id")
    private Long userId;

    /** 发布人id */
    private Long toUid;

    /** 是否已读 */
    private Boolean isRead;

    /** 状态(0:取消  1:正常) */
    @Excel(name = "状态(0:取消  1:正常)")
    private Integer status;

    private String headImage;

    private String fileUrl;

    private Integer fileType;
}
