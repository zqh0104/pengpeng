package com.pengpeng.v4.mapper.vipcontent;

import com.pengpeng.v4.pojo.vipcontent.SysVipContent;

import java.util.List;

/**
 * 会员特权页面内容Mapper接口
 * 
 * @author pengpeng
 * @date 2019-12-30
 */
public interface SysVipContentMapper 
{
    /**
     * 查询会员特权页面内容
     * 
     * @param id 会员特权页面内容ID
     * @return 会员特权页面内容
     */
    public SysVipContent selectSysVipContentById(Long id);

    /**
     * 查询会员特权页面内容列表
     * 
     * @param sysVipContent 会员特权页面内容
     * @return 会员特权页面内容集合
     */
    public List<SysVipContent> selectSysVipContentList(SysVipContent sysVipContent);

    /**
     * 新增会员特权页面内容
     * 
     * @param sysVipContent 会员特权页面内容
     * @return 结果
     */
    public int insertSysVipContent(SysVipContent sysVipContent);

    /**
     * 修改会员特权页面内容
     * 
     * @param sysVipContent 会员特权页面内容
     * @return 结果
     */
    public int updateSysVipContent(SysVipContent sysVipContent);

    /**
     * 删除会员特权页面内容
     * 
     * @param id 会员特权页面内容ID
     * @return 结果
     */
    public int deleteSysVipContentById(Long id);

    /**
     * 批量删除会员特权页面内容
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysVipContentByIds(String[] ids);

    /**
     * 查看特权
     */
    List<SysVipContent> selectSysVipContent();
}
