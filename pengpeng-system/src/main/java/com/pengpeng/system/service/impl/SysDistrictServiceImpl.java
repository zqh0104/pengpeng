package com.pengpeng.system.service.impl;

import java.util.List;

import com.pengpeng.common.core.text.Convert;
import com.pengpeng.system.domain.SysDistrict;
import com.pengpeng.system.mapper.SysDistrictMapper;
import com.pengpeng.system.service.ISysDistrictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-12-16
 */
@Service
public class SysDistrictServiceImpl implements ISysDistrictService
{
    @Autowired
    private SysDistrictMapper sysDistrictMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public SysDistrict selectSysDistrictById(Long id)
    {
        return sysDistrictMapper.selectSysDistrictById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param sysDistrict 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<SysDistrict> selectSysDistrictList(SysDistrict sysDistrict)
    {
        return sysDistrictMapper.selectSysDistrictList(sysDistrict);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param sysDistrict 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertSysDistrict(SysDistrict sysDistrict)
    {
        return sysDistrictMapper.insertSysDistrict(sysDistrict);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param sysDistrict 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateSysDistrict(SysDistrict sysDistrict)
    {
        return sysDistrictMapper.updateSysDistrict(sysDistrict);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSysDistrictByIds(String ids)
    {
        return sysDistrictMapper.deleteSysDistrictByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteSysDistrictById(Long id)
    {
        return sysDistrictMapper.deleteSysDistrictById(id);
    }
}
