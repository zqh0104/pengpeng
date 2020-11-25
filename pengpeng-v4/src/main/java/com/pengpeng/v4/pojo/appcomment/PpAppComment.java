package com.pengpeng.v4.pojo.appcomment;

import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * 【请填写功能名称】对象 pp_app_comment
 * 
 * @author pengpeng
 * @date 2020-01-07
 */

@AllArgsConstructor
@Data
@NoArgsConstructor
@ToString
public class PpAppComment extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** app评论信息 */
    private Long id;

    /** 评论人id */
    @Excel(name = "评论人id")
    private Long commentId;

    /** 星级 */
    @Excel(name = "星级")
    private Long starLevel;

    /** 标题 */
    @Excel(name = "标题")
    private String headline;

    /** 内容 */
    @Excel(name = "内容")
    private String content;
}
