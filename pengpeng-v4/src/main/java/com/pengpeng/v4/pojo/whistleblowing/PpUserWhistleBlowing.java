package com.pengpeng.v4.pojo.whistleblowing;

import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import com.pengpeng.v4.pojo.files.PpFiles;
import lombok.Data;
import lombok.ToString;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.List;

/**
 * 用户举报对象 pp_user_whistle_blowing
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@Data
@ToString
public class PpUserWhistleBlowing extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 用户id */
    @Excel(name = "用户id")
    private Long userId;

    /** 被举报用户id */
    @Excel(name = "被举报用户id")
    @NotNull(message = "被举报用户id不能为空")
    private Long reportUserId;

    /** 举报内容 */
    @Excel(name = "举报内容")
    @NotBlank(message = "举报内容不能为空")
    private String reportContent;

    /** 举报图片 */
    @Excel(name = "举报图片")
    private String reportImage;

    private List<PpFiles> reportImages;

    private String reportType;

    private String nickname;

    private String reportUserName;

}
