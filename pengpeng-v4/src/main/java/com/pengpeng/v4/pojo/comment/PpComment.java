package com.pengpeng.v4.pojo.comment;

import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import com.pengpeng.v4.pojo.files.PpFiles;
import lombok.Data;
import lombok.ToString;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.List;
import java.util.Map;

/**
 * 评论对象 pp_comment
 *
 * @author ruoyi
 * @date 2019-12-10
 */
@Data
@ToString
public class PpComment extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    @NotNull(message = "动态id不能为空")
    private Long dynamicId;

    /** 评论/回复人id */
    @Excel(name = "评论/回复人id")
    private Long fromUid;

    /** 源用户id */
    @Excel(name = "源用户id")
    private Long toUid;

    /** 评论内容 */
    @Excel(name = "评论内容")
    @NotBlank(message = "评论内容不能为空")
    private String comment;

    /** 父Id */
    @Excel(name = "父Id")
    private Long parentId;

    /** 评论类型(0:评论 1:回复) */
    @Excel(name = "评论类型(1:评论 2:回复)")
    @NotNull(message = "类型不能为空")
    private Integer type;

    /** 楼层值 */
    @Excel(name = "楼层值")
    private Long treeCode;

    /** $column.columnComment */
    @Excel(name = "楼层值")
    private String tree;

    /** $column.是否被看过 */
    private Boolean looked;

    private String headImage;

    /** 文件地址*/
    private String fileUrl;

    /** 文件类型（1:图片 2:视频）*/
    private Integer fileType;

    /**回复数量*/
    private Integer commentNum;

    private List<PpFiles> ppFilesList;

    private List<Map> commentList;

    private String fromName;
    private String toName;

    private Integer isLooked;

    /**
     * 别人评论的信息
     */
    private String dynamicContent;
    private String nickname;
    private String headUrl;
    private Integer violation;
    private String commentFileUrl;
    private Integer commentViolation;
}
