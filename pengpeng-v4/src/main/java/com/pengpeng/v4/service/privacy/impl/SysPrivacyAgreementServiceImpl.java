package com.pengpeng.v4.service.privacy.impl;

import java.util.List;

import com.pengpeng.v4.mapper.privacy.SysPrivacyAgreementMapper;
import com.pengpeng.v4.pojo.privacy.SysPrivacyAgreement;
import com.pengpeng.v4.service.privacy.ISysPrivacyAgreementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.pengpeng.common.core.text.Convert;

/**
 * 隐私协议Service业务层处理
 * 
 * @author pengpeng
 * @date 2019-12-24
 */
@Service
public class SysPrivacyAgreementServiceImpl implements ISysPrivacyAgreementService
{
    @Autowired
    private SysPrivacyAgreementMapper sysPrivacyAgreementMapper;

    /**
     * 查询隐私协议
     * 
     * @param id 隐私协议ID
     * @return 隐私协议
     */
    @Override
    public SysPrivacyAgreement selectSysPrivacyAgreementById(Long id)
    {
        return sysPrivacyAgreementMapper.selectSysPrivacyAgreementById(id);
    }

    /**
     * 查询隐私协议列表
     * 
     * @param sysPrivacyAgreement 隐私协议
     * @return 隐私协议
     */
    @Override
    public List<SysPrivacyAgreement> selectSysPrivacyAgreementList(SysPrivacyAgreement sysPrivacyAgreement)
    {
        return sysPrivacyAgreementMapper.selectSysPrivacyAgreementList(sysPrivacyAgreement);
    }

    /**
     * 新增隐私协议
     * 
     * @param sysPrivacyAgreement 隐私协议
     * @return 结果
     */
    @Override
    public int insertSysPrivacyAgreement(SysPrivacyAgreement sysPrivacyAgreement)
    {
        return sysPrivacyAgreementMapper.insertSysPrivacyAgreement(sysPrivacyAgreement);
    }

    /**
     * 修改隐私协议
     * 
     * @param sysPrivacyAgreement 隐私协议
     * @return 结果
     */
    @Override
    public int updateSysPrivacyAgreement(SysPrivacyAgreement sysPrivacyAgreement)
    {
        return sysPrivacyAgreementMapper.updateSysPrivacyAgreement(sysPrivacyAgreement);
    }

    /**
     * 删除隐私协议对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSysPrivacyAgreementByIds(String ids)
    {
        return sysPrivacyAgreementMapper.deleteSysPrivacyAgreementByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除隐私协议信息
     * 
     * @param id 隐私协议ID
     * @return 结果
     */
    @Override
    public int deleteSysPrivacyAgreementById(Long id)
    {
        return sysPrivacyAgreementMapper.deleteSysPrivacyAgreementById(id);
    }
}
