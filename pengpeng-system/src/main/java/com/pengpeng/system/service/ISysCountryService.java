package com.pengpeng.system.service;

import com.pengpeng.system.domain.SysCountry;

import java.util.List;

/**
 * 国家 代码Service接口
 * 
 * @author ruoyi
 * @date 2019-12-12
 */
public interface ISysCountryService 
{
    /**
     * 查询国家 代码
     * 
     * @param id 国家 代码ID
     * @return 国家 代码
     */
    public SysCountry selectSysCountryById(Long id);

    /**
     * 查询国家 代码列表
     * 
     * @param sysCountry 国家 代码
     * @return 国家 代码集合
     */
    public List<SysCountry> selectSysCountryList(SysCountry sysCountry);

    /**
     * 新增国家 代码
     * 
     * @param sysCountry 国家 代码
     * @return 结果
     */
    public int insertSysCountry(SysCountry sysCountry);

    /**
     * 修改国家 代码
     * 
     * @param sysCountry 国家 代码
     * @return 结果
     */
    public int updateSysCountry(SysCountry sysCountry);

    /**
     * 批量删除国家 代码
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysCountryByIds(String ids);

    /**
     * 删除国家 代码信息
     * 
     * @param id 国家 代码ID
     * @return 结果
     */
    public int deleteSysCountryById(Long id);
}
