package com.pengpeng.v4.service.level.impl;

import java.util.List;

import com.pengpeng.common.core.text.Convert;
import com.pengpeng.common.utils.DateUtils;
import com.pengpeng.v4.mapper.level.PpLevelMapper;
import com.pengpeng.v4.pojo.level.PpLevel;
import com.pengpeng.v4.service.level.IPpLevelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 财富等级Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-12-19
 */
@Service
public class PpLevelServiceImpl implements IPpLevelService
{
    @Autowired
    private PpLevelMapper ppLevelMapper;

    /**
     * 查询财富等级
     * 
     * @param id 财富等级ID
     * @return 财富等级
     */
    @Override
    public PpLevel selectPpLevelById(Long id)
    {
        return ppLevelMapper.selectPpLevelById(id);
    }

    /**
     * 查询财富等级列表
     * 
     * @param ppLevel 财富等级
     * @return 财富等级
     */
    @Override
    public List<PpLevel> selectPpLevelList(PpLevel ppLevel)
    {
        return ppLevelMapper.selectPpLevelList(ppLevel);
    }

    /**
     * 新增财富等级
     * 
     * @param ppLevel 财富等级
     * @return 结果
     */
    @Override
    public int insertPpLevel(PpLevel ppLevel)
    {
        ppLevel.setCreateTime(DateUtils.getNowDate());
        return ppLevelMapper.insertPpLevel(ppLevel);
    }

    /**
     * 修改财富等级
     * 
     * @param ppLevel 财富等级
     * @return 结果
     */
    @Override
    public int updatePpLevel(PpLevel ppLevel)
    {
        ppLevel.setUpdateTime(DateUtils.getNowDate());
        return ppLevelMapper.updatePpLevel(ppLevel);
    }

    /**
     * 删除财富等级对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePpLevelByIds(String ids)
    {
        return ppLevelMapper.deletePpLevelByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除财富等级信息
     * 
     * @param id 财富等级ID
     * @return 结果
     */
    @Override
    public int deletePpLevelById(Long id)
    {
        return ppLevelMapper.deletePpLevelById(id);
    }
}
