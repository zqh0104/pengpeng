package com.pengpeng.system.service;

import com.pengpeng.system.domain.SysCity;

import java.util.List;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2019-12-16
 */
public interface ISysCityService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public SysCity selectSysCityById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param sysCity 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<SysCity> selectSysCityList(SysCity sysCity);

    /**
     * 新增【请填写功能名称】
     * 
     * @param sysCity 【请填写功能名称】
     * @return 结果
     */
    public int insertSysCity(SysCity sysCity);

    /**
     * 修改【请填写功能名称】
     * 
     * @param sysCity 【请填写功能名称】
     * @return 结果
     */
    public int updateSysCity(SysCity sysCity);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysCityByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteSysCityById(Long id);
}
