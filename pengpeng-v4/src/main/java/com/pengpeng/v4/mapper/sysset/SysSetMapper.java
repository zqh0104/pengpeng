package com.pengpeng.v4.mapper.sysset;

import com.pengpeng.v4.pojo.sysset.SysSet;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 系统设置表
 * 
 * @author 
 * @email 
 * @date 2019-12-12 09:38:27
 */
@Mapper
public interface SysSetMapper{

    /**获取设置信息*/
    SysSet selectId(Integer id);

    SysSet selectSet();

    /**
     * 查询系统设置
     *
     * @param id 系统设置ID
     * @return 系统设置
     */
    public SysSet selectSysSetById(Long id);

    /**
     * 查询系统设置列表
     *
     * @param sysSet 系统设置
     * @return 系统设置集合
     */
    public List<SysSet> selectSysSetList(SysSet sysSet);

    /**
     * 新增系统设置
     *
     * @param sysSet 系统设置
     * @return 结果
     */
    public int insertSysSet(SysSet sysSet);

    /**
     * 修改系统设置
     *
     * @param sysSet 系统设置
     * @return 结果
     */
    public int updateSysSet(SysSet sysSet);

    /**
     * 删除系统设置
     *
     * @param id 系统设置ID
     * @return 结果
     */
    public int deleteSysSetById(Long id);

    /**
     * 批量删除系统设置
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysSetByIds(String[] ids);
}
