package com.pengpeng.v4.pojo.dynamic;

import com.alibaba.druid.sql.visitor.functions.Char;
import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import com.pengpeng.v4.pojo.comment.PpComment;
import com.pengpeng.v4.pojo.files.PpFiles;
import lombok.Data;
import lombok.ToString;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.Date;
import java.util.List;

/**
 * 发布动态对象 pp_dynamic
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@Data
@ToString
public class PpDynamic extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long userId;

    /** 内容 */
    @Excel(name = "内容")
    private String dynamicContent;

    /** 文件地址 */
    @Excel(name = "文件地址")
    private String fileUrl;

    /** 点赞数 */
    @Excel(name = "点赞数")
    private Long commendNum;

    /**发布位置*/
    private String position;

    /**经度*/
    private String longitude;

    /**纬度*/
    private String latitude;

    /**文件类型(1:图片 2:视频)*/
    private Integer fileType;

    /**状态*/
    private Integer status;

    /**发布时间*/
    private Date create_time;

    /**是否可见*/
    private Integer isVisible;

    private Boolean isLike;

    /**
     * 点赞表表连接
     */
    private PpCommendRecord ppCommendRecord;

    private String nickName;

    private String userHeader;

    private List<PpComment> commentList;

    private List<PpCommendRecord> commendRecordList;

    private List<PpFiles> filesList;
}
