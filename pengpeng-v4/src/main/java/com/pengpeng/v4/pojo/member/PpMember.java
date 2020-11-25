package com.pengpeng.v4.pojo.member;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import com.pengpeng.v4.pojo.files.PpFiles;
import lombok.Data;
import lombok.ToString;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * 用户扩展对象 pp_member
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@Data
@ToString
public class PpMember extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 昵称 */
    @Excel(name = "昵称")
    private String nickname;

    /** 昵称 */
    @Excel(name = "性别")
    private Character sex;

    /** 图像地址 */
    @Excel(name = "图像地址")
    private String headUrl;

    /** 生日 */
    @Excel(name = "生日", width = 30, dateFormat = "yyyy-MM-dd")
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date birthday;

    /** 身高 */
    @Excel(name = "身高")
    private String stature;

    /** 体重 */
    @Excel(name = "体重")
    private String weight;

    /** 签名 */
    @Excel(name = "签名")
    private String signature;

    /** 星座 */
    @Excel(name = "星座")
    private String constellation;

    /** 爱好 */
    @Excel(name = "爱好")
    private String hobby;

    /** 职业 */
    @Excel(name = "职业")
    private String profession;

    /** 照片 */
    @Excel(name = "照片")
    private String picture;

    /** 邀请码 */
    @Excel(name = "邀请码")
    private String invitationCode;

    /** 情感状态 （） */
    @Excel(name = "情感状态 ", readConverterExp = "情感状态 （）")
    private String emotionStatus;

    /** 交友目的 */
    @Excel(name = "交友目的")
    private String makeFriendsPurpose;

    /** 城市 */
    @Excel(name = "城市")
    private String city;

    /** 国家 */
    @Excel(name = "国家")
    private String country;

    /** 居住地 */
    @Excel(name = "居住地")
    private String address;

    /** 经度 */
    @Excel(name = "经度")
    private Double longitude;

    /** 纬度 */
    @Excel(name = "纬度")
    private Double latitude;

    /** 是否是vip(0:否 1:是) */
    @Excel(name = "是否是vip(0:否 1:是)")
    private Integer isvip;

    /** vip开通时间 */
    @Excel(name = "vip开通时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date vipOpenTime;

    /** vip失效时间 */
    @Excel(name = "vip失效时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date vipCloseTime;

    /** 余额 */
    @Excel(name = "余额")
    private Integer balance;

    /** 收益 */
    @Excel(name = "收益")
    private BigDecimal earnings;

    /** 财富值 */
    @Excel(name = "财富值")
    private Long treasure;

    /** 财富等级 */
    @Excel(name = "财富等级")
    private String treasureLevel;

    /** 手机号 */
    private String phone;

    /** 上级用户*/
    private Long parentId;

    /** 头像，图片存储地址*/
    private List<PpFiles> ppFiles;

    /** 属性*/
    private String attribute;

    /** 区号 */
    private String code;

    private String password;

    private String distance;

    /**
     * 总数
     */
    private Integer filenumber;
    /**
     * 年龄
     */
    private Integer age;

    private Integer status;

    /**活跃多少分钟前*/
    private String activeTime;

    /**
     * 活跃开关
     */
    private Boolean isactive;

    /**
     * 是否开会到期
     */
    private Integer maturity;

}
