package com.pengpeng.v4.mapper.level;

import com.pengpeng.v4.pojo.level.PpLevel;

import java.util.List;

/**
 * 财富等级Mapper接口
 * 
 * @author ruoyi
 * @date 2019-12-19
 */
public interface PpLevelMapper 
{
    /**
     * 查询财富等级
     * 
     * @param id 财富等级ID
     * @return 财富等级
     */
    public PpLevel selectPpLevelById(Long id);

    /**
     * 查询财富等级列表
     * 
     * @param ppLevel 财富等级
     * @return 财富等级集合
     */
    public List<PpLevel> selectPpLevelList(PpLevel ppLevel);

    /**
     * 新增财富等级
     * 
     * @param ppLevel 财富等级
     * @return 结果
     */
    public int insertPpLevel(PpLevel ppLevel);

    /**
     * 修改财富等级
     * 
     * @param ppLevel 财富等级
     * @return 结果
     */
    public int updatePpLevel(PpLevel ppLevel);

    /**
     * 删除财富等级
     * 
     * @param id 财富等级ID
     * @return 结果
     */
    public int deletePpLevelById(Long id);

    /**
     * 批量删除财富等级
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpLevelByIds(String[] ids);

    /**
     * 查询当前财富等级
     * @param gradeTreasure
     * @return
     */
    public String selectCurrentLevel(Long gradeTreasure);
}
