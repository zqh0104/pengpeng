package com.pengpeng.v4.service.privacy.impl;

import java.util.List;

import com.pengpeng.v4.mapper.privacy.SysPrivacyClauseMapper;
import com.pengpeng.v4.pojo.privacy.SysPrivacyClause;
import com.pengpeng.v4.service.privacy.ISysPrivacyClauseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.pengpeng.common.core.text.Convert;

/**
 * 隐私条款Service业务层处理
 * 
 * @author pengpeng
 * @date 2019-12-24
 */
@Service
public class SysPrivacyClauseServiceImpl implements ISysPrivacyClauseService
{
    @Autowired
    private SysPrivacyClauseMapper sysPrivacyClauseMapper;

    /**
     * 查询隐私条款
     * 
     * @param id 隐私条款ID
     * @return 隐私条款
     */
    @Override
    public SysPrivacyClause selectSysPrivacyClauseById(Long id)
    {
        return sysPrivacyClauseMapper.selectSysPrivacyClauseById(id);
    }

    /**
     * 查询隐私条款列表
     * 
     * @param sysPrivacyClause 隐私条款
     * @return 隐私条款
     */
    @Override
    public List<SysPrivacyClause> selectSysPrivacyClauseList(SysPrivacyClause sysPrivacyClause)
    {
        return sysPrivacyClauseMapper.selectSysPrivacyClauseList(sysPrivacyClause);
    }

    /**
     * 新增隐私条款
     * 
     * @param sysPrivacyClause 隐私条款
     * @return 结果
     */
    @Override
    public int insertSysPrivacyClause(SysPrivacyClause sysPrivacyClause)
    {
        return sysPrivacyClauseMapper.insertSysPrivacyClause(sysPrivacyClause);
    }

    /**
     * 修改隐私条款
     * 
     * @param sysPrivacyClause 隐私条款
     * @return 结果
     */
    @Override
    public int updateSysPrivacyClause(SysPrivacyClause sysPrivacyClause)
    {
        return sysPrivacyClauseMapper.updateSysPrivacyClause(sysPrivacyClause);
    }

    /**
     * 删除隐私条款对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSysPrivacyClauseByIds(String ids)
    {
        return sysPrivacyClauseMapper.deleteSysPrivacyClauseByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除隐私条款信息
     * 
     * @param id 隐私条款ID
     * @return 结果
     */
    @Override
    public int deleteSysPrivacyClauseById(Long id)
    {
        return sysPrivacyClauseMapper.deleteSysPrivacyClauseById(id);
    }
}
