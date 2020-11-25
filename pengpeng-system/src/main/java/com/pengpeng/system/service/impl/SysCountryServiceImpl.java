package com.pengpeng.system.service.impl;

import com.pengpeng.common.core.text.Convert;
import com.pengpeng.system.domain.SysCountry;
import com.pengpeng.system.mapper.SysCountryMapper;
import com.pengpeng.system.service.ISysCountryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 国家 代码Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-12-12
 */
@Service
public class SysCountryServiceImpl implements ISysCountryService
{
    @Autowired
    private SysCountryMapper sysCountryMapper;

    @Autowired
    private RedisTemplate redisTemplate;

    /**
     * 查询国家 代码
     * 
     * @param id 国家 代码ID
     * @return 国家 代码
     */
    @Override
    public SysCountry selectSysCountryById(Long id)
    {
        return sysCountryMapper.selectSysCountryById(id);
    }

    /**
     * 查询国家 代码列表
     * 
     * @param sysCountry 国家 代码
     * @return 国家 代码
     */
    @Override
    public List<SysCountry> selectSysCountryList(SysCountry sysCountry)
    {
        String key = "country:list";
        if (redisTemplate.hasKey(key)){
            return redisTemplate.opsForList().range(key,0,-1);
        }
        List<SysCountry> countryList = sysCountryMapper.selectSysCountryList(sysCountry);
        redisTemplate.opsForList().rightPushAll(key,countryList);
        return countryList;
    }

    /**
     * 新增国家 代码
     * 
     * @param sysCountry 国家 代码
     * @return 结果
     */
    @Override
    public int insertSysCountry(SysCountry sysCountry)
    {
        return sysCountryMapper.insertSysCountry(sysCountry);
    }

    /**
     * 修改国家 代码
     * 
     * @param sysCountry 国家 代码
     * @return 结果
     */
    @Override
    public int updateSysCountry(SysCountry sysCountry)
    {
        return sysCountryMapper.updateSysCountry(sysCountry);
    }

    /**
     * 删除国家 代码对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSysCountryByIds(String ids)
    {
        return sysCountryMapper.deleteSysCountryByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除国家 代码信息
     * 
     * @param id 国家 代码ID
     * @return 结果
     */
    @Override
    public int deleteSysCountryById(Long id)
    {
        return sysCountryMapper.deleteSysCountryById(id);
    }
}
