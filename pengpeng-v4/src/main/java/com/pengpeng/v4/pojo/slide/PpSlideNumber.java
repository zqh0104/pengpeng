package com.pengpeng.v4.pojo.slide;

import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import java.util.Date;

/**
 * 用户滑动记录对象 pp_slide_number
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
public class PpSlideNumber extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 用户滑动记录主键 */
    private Long id;

    /** 用户id */
    @Excel(name = "用户id")
    private Long userId;

    /** 滑动次数 */
    @Excel(name = "滑动次数")
    private Long slideNumber;

    /** 最大滑动次数 */
    @Excel(name = "最大滑动次数")
    private Long maximumSlideNumber;

    /** 添加时间 */
    @Excel(name = "添加时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date slideInsertTime;

    /** 修改时间 */
    @Excel(name = "修改时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date slideUpdateTime;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }
    public void setSlideNumber(Long slideNumber) 
    {
        this.slideNumber = slideNumber;
    }

    public Long getSlideNumber() 
    {
        return slideNumber;
    }
    public void setMaximumSlideNumber(Long maximumSlideNumber) 
    {
        this.maximumSlideNumber = maximumSlideNumber;
    }

    public Long getMaximumSlideNumber() 
    {
        return maximumSlideNumber;
    }
    public void setSlideInsertTime(Date slideInsertTime) {
        this.slideInsertTime = slideInsertTime; }

    public Date getSlideInsertTime() 
    {
        return slideInsertTime;
    }

    public void setSlideUpdateTime(Date slideUpdateTime) 
    {
        this.slideUpdateTime = slideUpdateTime;
    }

    public Date getSlideUpdateTime() 
    {
        return slideUpdateTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("userId", getUserId())
            .append("slideNumber", getSlideNumber())
            .append("maximumSlideNumber", getMaximumSlideNumber())
            .append("slideInsertTime", getSlideInsertTime())
            .append("slideUpdateTime", getSlideUpdateTime())
            .toString();
    }
}
