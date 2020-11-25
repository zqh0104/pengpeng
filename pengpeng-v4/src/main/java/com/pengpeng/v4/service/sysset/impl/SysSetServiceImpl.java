package com.pengpeng.v4.service.sysset.impl;

import com.pengpeng.common.core.text.Convert;
import com.pengpeng.common.utils.DateUtils;
import com.pengpeng.v4.mapper.sysset.SysSetMapper;
import com.pengpeng.v4.pojo.sysset.SysSet;
import com.pengpeng.v4.service.sysset.SysSetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysSetServiceImpl implements SysSetService {

    @Autowired
    private SysSetMapper sysSetMapper;

    @Autowired
    private RedisTemplate redisTemplate;

    /**
     * 查询设置信息
     *
     * @param id
     */
    @Override
    public SysSet selectId(Integer id) {
        SysSet sysSet = sysSetMapper.selectId(id);
        return sysSet;
    }

    /**
     * 查询系统设置
     *
     * @param id 系统设置ID
     * @return 系统设置
     */
    @Override
    public SysSet selectSysSetById(Long id)
    {
        return sysSetMapper.selectSysSetById(id);
    }

    /**
     * 查询系统设置列表
     *
     * @param sysSet 系统设置
     * @return 系统设置
     */
    @Override
    public List<SysSet> selectSysSetList(SysSet sysSet)
    {
        return sysSetMapper.selectSysSetList(sysSet);
    }

    /**
     * 新增系统设置
     *
     * @param sysSet 系统设置
     * @return 结果
     */
    @Override
    public int insertSysSet(SysSet sysSet)
    {
        sysSet.setCreateTime(DateUtils.getNowDate());
        return sysSetMapper.insertSysSet(sysSet);
    }

    /**
     * 修改系统设置
     *
     * @param sysSet 系统设置
     * @return 结果
     */
    @Override
    public int updateSysSet(SysSet sysSet)
    {
        sysSet.setUpdateTime(DateUtils.getNowDate());
        redisTemplate.opsForValue().set("sysSet",sysSet);
        return sysSetMapper.updateSysSet(sysSet);
    }

    /**
     * 删除系统设置对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSysSetByIds(String ids)
    {
        return sysSetMapper.deleteSysSetByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除系统设置信息
     *
     * @param id 系统设置ID
     * @return 结果
     */
    @Override
    public int deleteSysSetById(Long id)
    {
        return sysSetMapper.deleteSysSetById(id);
    }
}
