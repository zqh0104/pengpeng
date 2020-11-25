package com.pengpeng.v4.pojo.feedback;
import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import com.pengpeng.v4.pojo.files.PpFiles;
import lombok.Data;
import lombok.ToString;

import javax.validation.constraints.NotBlank;
import java.util.Date;

/**
 * 用户意见反馈对象 pp_feedback
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@Data
@ToString
public class PpFeedback extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 意见反馈列表主键 */
    private Long id;

    /** 用户id */
    @Excel(name = "用户id")
    private Long userId;

    /** 反馈内容 */
    @Excel(name = "反馈内容")
    @NotBlank(message = "反馈内容不能为空")
    private String feedbackContent;

    /** 反馈时间 */
    @Excel(name = "反馈时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date feedbackTime;

    private String files;

    /**
     * 后台页面需要的数据
     */
    private String fileUrl;
    private String nickname;
    private PpFiles ppFiles;

}
