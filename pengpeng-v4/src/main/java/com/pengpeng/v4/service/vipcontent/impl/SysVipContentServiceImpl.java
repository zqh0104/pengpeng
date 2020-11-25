package com.pengpeng.v4.service.vipcontent.impl;

import java.util.List;

import com.pengpeng.v4.mapper.vipcontent.SysVipContentMapper;
import com.pengpeng.v4.pojo.vipcontent.SysVipContent;
import com.pengpeng.v4.service.vipcontent.ISysVipContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.pengpeng.common.core.text.Convert;

/**
 * 会员特权页面内容Service业务层处理
 * 
 * @author pengpeng
 * @date 2019-12-30
 */
@Service
public class SysVipContentServiceImpl implements ISysVipContentService
{
    @Autowired
    private SysVipContentMapper sysVipContentMapper;

    /**
     * 查询会员特权页面内容
     * 
     * @param id 会员特权页面内容ID
     * @return 会员特权页面内容
     */
    @Override
    public SysVipContent selectSysVipContentById(Long id)
    {
        return sysVipContentMapper.selectSysVipContentById(id);
    }

    /**
     * 查询会员特权页面内容列表
     * 
     * @param sysVipContent 会员特权页面内容
     * @return 会员特权页面内容
     */
    @Override
    public List<SysVipContent> selectSysVipContentList(SysVipContent sysVipContent)
    {
        return sysVipContentMapper.selectSysVipContentList(sysVipContent);
    }

    /**
     * 新增会员特权页面内容
     * 
     * @param sysVipContent 会员特权页面内容
     * @return 结果
     */
    @Override
    public int insertSysVipContent(SysVipContent sysVipContent)
    {
        return sysVipContentMapper.insertSysVipContent(sysVipContent);
    }

    /**
     * 修改会员特权页面内容
     * 
     * @param sysVipContent 会员特权页面内容
     * @return 结果
     */
    @Override
    public int updateSysVipContent(SysVipContent sysVipContent)
    {
        return sysVipContentMapper.updateSysVipContent(sysVipContent);
    }

    /**
     * 删除会员特权页面内容对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSysVipContentByIds(String ids)
    {
        return sysVipContentMapper.deleteSysVipContentByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除会员特权页面内容信息
     * 
     * @param id 会员特权页面内容ID
     * @return 结果
     */
    @Override
    public int deleteSysVipContentById(Long id)
    {
        return sysVipContentMapper.deleteSysVipContentById(id);
    }

    /**
     * 查看特权
     */
    @Override
    public List<SysVipContent> selectSysVipContent() {
        return sysVipContentMapper.selectSysVipContent();
    }

}
