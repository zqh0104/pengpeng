package com.pengpeng.v4.pojo.files;
import com.google.gson.annotations.SerializedName;
import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import com.pengpeng.v4.pojo.comment.PpComment;
import com.pengpeng.v4.pojo.dynamic.PpDynamic;
import lombok.Data;
import lombok.ToString;
import java.util.Date;
import java.util.List;

/**
 * 文件表
 *
 * @author
 * @email
 * @date 2019-12-14 11:32:34
 */
@Data
@ToString
public class PpFiles extends BaseEntity {
	private static final long serialVersionUID = 1L;

	/**
	 *
	 */
	@Excel(name ="主键")
	private Long id;
	/**
	 * 对应表的id主键
	 */
	@Excel(name ="对应表的id主键")
	private Long fileId;
	/**
	 * 文件地址
	 */
	@Excel(name ="文件地址")
	@SerializedName("url")
	private String fileUrl;
	/**
	 * 文件类型(1:图片 2:视频)
	 */
	@Excel(name ="文件类型(1:图片 2:视频)")
	private Integer fileType;
	/**
	 * 文件来源(1:动态 2:评论 3:照片)
	 */
	@Excel(name ="文件来源(1:动态 2:评论 3:照片)")
	private Integer fileSource;
	/**
	 *
	 */
	@Excel(name ="时间")
	private Date createTime;

	@Excel(name = "动态表集合")
	private List<PpDynamic> ppDynamicsList;

	@Excel(name = "评论记录表")
	private List<PpComment> ppCommentList;

	/**是否违规*/
	private Integer violation;


}
