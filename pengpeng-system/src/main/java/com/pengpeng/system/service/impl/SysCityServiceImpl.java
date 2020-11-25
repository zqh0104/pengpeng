package com.pengpeng.system.service.impl;

import java.util.List;

import com.pengpeng.common.core.text.Convert;
import com.pengpeng.system.domain.SysCity;
import com.pengpeng.system.mapper.SysCityMapper;
import com.pengpeng.system.mapper.SysDistrictMapper;
import com.pengpeng.system.service.ISysCityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

/**
 * 【请填写功能名称】Service业务层处理
 *
 * @author ruoyi
 * @date 2019-12-16
 */
@Service
public class SysCityServiceImpl implements ISysCityService {
    @Autowired
    private SysCityMapper sysCityMapper;

    @Autowired
    private SysDistrictMapper sysDistrictMapper;

    @Autowired
    private RedisTemplate redisTemplate;

    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public SysCity selectSysCityById(Long id) {
        return sysCityMapper.selectSysCityById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param sysCity 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<SysCity> selectSysCityList(SysCity sysCity) {
        String key = "city:list";
        if (redisTemplate.hasKey(key)) {
            return redisTemplate.opsForList().range(key, 0, -1);
        }
        List<SysCity> cityList = sysCityMapper.selectSysCityList(sysCity);
        redisTemplate.opsForList().rightPushAll(key, cityList);
        return cityList;
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param sysCity 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertSysCity(SysCity sysCity) {
        return sysCityMapper.insertSysCity(sysCity);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param sysCity 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateSysCity(SysCity sysCity) {
        return sysCityMapper.updateSysCity(sysCity);
    }

    /**
     * 删除【请填写功能名称】对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSysCityByIds(String ids) {
        return sysCityMapper.deleteSysCityByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteSysCityById(Long id) {
        return sysCityMapper.deleteSysCityById(id);
    }
}
