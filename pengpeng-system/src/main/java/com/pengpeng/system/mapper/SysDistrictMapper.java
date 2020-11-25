package com.pengpeng.system.mapper;

import com.pengpeng.system.domain.SysDistrict;

import java.util.List;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2019-12-16
 */
public interface SysDistrictMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public SysDistrict selectSysDistrictById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param sysDistrict 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<SysDistrict> selectSysDistrictList(SysDistrict sysDistrict);

    /**
     * 新增【请填写功能名称】
     * 
     * @param sysDistrict 【请填写功能名称】
     * @return 结果
     */
    public int insertSysDistrict(SysDistrict sysDistrict);

    /**
     * 修改【请填写功能名称】
     * 
     * @param sysDistrict 【请填写功能名称】
     * @return 结果
     */
    public int updateSysDistrict(SysDistrict sysDistrict);

    /**
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteSysDistrictById(Long id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysDistrictByIds(String[] ids);
}
