package com.pengpeng.v4.service.privacy;

import com.pengpeng.v4.pojo.privacy.SysPrivacyAgreement;

import java.util.List;

/**
 * 隐私协议Service接口
 * 
 * @author pengpeng
 * @date 2019-12-24
 */
public interface ISysPrivacyAgreementService 
{
    /**
     * 查询隐私协议
     * 
     * @param id 隐私协议ID
     * @return 隐私协议
     */
    public SysPrivacyAgreement selectSysPrivacyAgreementById(Long id);

    /**
     * 查询隐私协议列表
     * 
     * @param sysPrivacyAgreement 隐私协议
     * @return 隐私协议集合
     */
    public List<SysPrivacyAgreement> selectSysPrivacyAgreementList(SysPrivacyAgreement sysPrivacyAgreement);

    /**
     * 新增隐私协议
     * 
     * @param sysPrivacyAgreement 隐私协议
     * @return 结果
     */
    public int insertSysPrivacyAgreement(SysPrivacyAgreement sysPrivacyAgreement);

    /**
     * 修改隐私协议
     * 
     * @param sysPrivacyAgreement 隐私协议
     * @return 结果
     */
    public int updateSysPrivacyAgreement(SysPrivacyAgreement sysPrivacyAgreement);

    /**
     * 批量删除隐私协议
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysPrivacyAgreementByIds(String ids);

    /**
     * 删除隐私协议信息
     * 
     * @param id 隐私协议ID
     * @return 结果
     */
    public int deleteSysPrivacyAgreementById(Long id);
}
