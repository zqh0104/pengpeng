package com.pengpeng.v4.mapper.privacy;

import com.pengpeng.v4.pojo.privacy.SysPrivacyClause;

import java.util.List;

/**
 * 隐私条款Mapper接口
 * 
 * @author pengpeng
 * @date 2019-12-24
 */
public interface SysPrivacyClauseMapper 
{
    /**
     * 查询隐私条款
     * 
     * @param id 隐私条款ID
     * @return 隐私条款
     */
    public SysPrivacyClause selectSysPrivacyClauseById(Long id);

    /**
     * 查询隐私条款列表
     * 
     * @param sysPrivacyClause 隐私条款
     * @return 隐私条款集合
     */
    public List<SysPrivacyClause> selectSysPrivacyClauseList(SysPrivacyClause sysPrivacyClause);

    /**
     * 新增隐私条款
     * 
     * @param sysPrivacyClause 隐私条款
     * @return 结果
     */
    public int insertSysPrivacyClause(SysPrivacyClause sysPrivacyClause);

    /**
     * 修改隐私条款
     * 
     * @param sysPrivacyClause 隐私条款
     * @return 结果
     */
    public int updateSysPrivacyClause(SysPrivacyClause sysPrivacyClause);

    /**
     * 删除隐私条款
     * 
     * @param id 隐私条款ID
     * @return 结果
     */
    public int deleteSysPrivacyClauseById(Long id);

    /**
     * 批量删除隐私条款
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysPrivacyClauseByIds(String[] ids);
}
