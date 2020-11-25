package com.pengpeng.system.service.impl;

import com.pengpeng.common.constant.UserConstants;
import com.pengpeng.common.core.domain.Ztree;
import com.pengpeng.common.core.text.Convert;
import com.pengpeng.common.exception.BusinessException;
import com.pengpeng.common.utils.StringUtils;
import com.pengpeng.system.domain.SysDictData;
import com.pengpeng.system.domain.SysDictType;
import com.pengpeng.system.mapper.SysDictDataMapper;
import com.pengpeng.system.mapper.SysDictTypeMapper;
import com.pengpeng.system.service.ISysDictTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;
import java.util.stream.Collectors;

/**
 * 字典 业务层处理
 *
 * @author pengpeng
 */
@Service
public class SysDictTypeServiceImpl implements ISysDictTypeService {
    @Autowired
    private SysDictTypeMapper dictTypeMapper;

    @Autowired
    private SysDictDataMapper dictDataMapper;

    @Autowired
    private RedisTemplate redisTemplate;

    /**
     * 根据条件分页查询字典类型
     *
     * @param dictType 字典类型信息
     * @return 字典类型集合信息
     */
    @Override
    public List<SysDictType> selectDictTypeList(SysDictType dictType) {
        return dictTypeMapper.selectDictTypeList(dictType);
    }

    /**
     * 根据条件分页查询字典类型
     *
     * @param dictType 字典类型信息
     * @return 字典类型集合信息
     */
    @Override
    public Map<String, Object> selectDictTypePpList(SysDictType dictType) {
        String hobbyKey = "pp:dict:hobby";
        String attributeKey = "pp:dict:attribute";
        String occupationKey = "pp:dict:occupation";
        String affectiveStateKey = "pp:dict:affective";
        String purposeKey = "pp:dict:purpose";
        String findRangeKey = "pp:dict:findrange";
        String findAgeKey = "pp:dict:findage";
        Map<String, Object> resultMap = new HashMap<>();
        SysDictData sysDictData = new SysDictData();
        //爱好
        if (!redisTemplate.hasKey(hobbyKey)) {
            dictType.setDictType("sys_hobby");
            List<SysDictType> hobbyList = dictTypeMapper.selectDictTypePpList(dictType);
            hobbyList.stream().map(d -> d.getDictName().split("-")).collect(Collectors.toList());
            resultMap.put("hobby", hobbyList);
            redisTemplate.opsForList().rightPushAll(hobbyKey, hobbyList);
        } else {
            resultMap.put("hobby", redisTemplate.opsForList().range(hobbyKey, 0, -1));
        }

        //属性
        if (!redisTemplate.hasKey(attributeKey)) {
            sysDictData.setDictType("sys_attribute");
            List<SysDictData> attributeList = dictDataMapper.selectDictDataByType("sys_attribute");
            resultMap.put("attributeList", attributeList);
            redisTemplate.opsForList().rightPushAll(attributeKey, attributeList);
        } else {
            resultMap.put("attributeList", redisTemplate.opsForList().range(attributeKey, 0, -1));
        }

        //职业
        if (!redisTemplate.hasKey(occupationKey)) {
            List<SysDictData> occupationList = dictDataMapper.selectDictDataByType("sys_occupation");
            resultMap.put("occupationList", occupationList);
            redisTemplate.opsForList().rightPushAll(occupationKey, occupationList);
        } else {
            resultMap.put("occupationList", redisTemplate.opsForList().range(occupationKey, 0, -1));
        }

        //情感状态
        if (!redisTemplate.hasKey(affectiveStateKey)) {
            List<SysDictData> affectiveStateList = dictDataMapper.selectDictDataByType("sys_affective_state");
            resultMap.put("affectiveStateList", affectiveStateList);
            redisTemplate.opsForList().rightPushAll(affectiveStateKey, affectiveStateList);
        } else {
            resultMap.put("affectiveStateList", redisTemplate.opsForList().range(affectiveStateKey, 0, -1));
        }

        //交友目的
        if (!redisTemplate.hasKey(purposeKey)) {
            List<SysDictData> purposeList = dictDataMapper.selectDictDataByType("sys_make_friends_purpose");
            resultMap.put("purposeList", purposeList);
            redisTemplate.opsForList().rightPushAll(purposeKey, purposeList);
        } else {
            resultMap.put("purposeList", redisTemplate.opsForList().range(purposeKey, 0, -1));
        }

        //发现范围
        if (!redisTemplate.hasKey(findRangeKey)) {
            List<SysDictData> findRangeList = dictDataMapper.selectDictDataByType("sys_find_range");
            resultMap.put("findRangeList", findRangeList);
            redisTemplate.opsForList().rightPushAll(findRangeKey, findRangeList);
        } else {
            resultMap.put("findRangeList", redisTemplate.opsForList().range(findRangeKey, 0, -1));
        }

        //发现年龄
        Map ageMap = new HashMap();
        List<SysDictData> findAgeList = dictDataMapper.selectDictDataByType("sys_find_age");
        findAgeList.stream().forEach(dictType1 -> {
            if ("max".equals(dictType1.getDictLabel())) {
                ageMap.put("max", dictType1.getDictValue());
            }
            if ("min".equals(dictType1.getDictLabel())) {
                ageMap.put("min", dictType1.getDictValue());
            }
        });
        resultMap.put("ageMap", ageMap);

        return resultMap;
    }

    /**
     * 根据所有字典类型
     *
     * @return 字典类型集合信息
     */
    @Override
    public List<SysDictType> selectDictTypeAll() {
        return dictTypeMapper.selectDictTypeAll();
    }

    /**
     * 根据字典类型ID查询信息
     *
     * @param dictId 字典类型ID
     * @return 字典类型
     */
    @Override
    public SysDictType selectDictTypeById(Long dictId) {
        return dictTypeMapper.selectDictTypeById(dictId);
    }

    /**
     * 根据字典类型查询信息
     *
     * @param dictType 字典类型
     * @return 字典类型
     */
    @Override
    public SysDictType selectDictTypeByType(String dictType) {
        return dictTypeMapper.selectDictTypeByType(dictType);
    }

    /**
     * 通过字典ID删除字典信息
     *
     * @param dictId 字典ID
     * @return 结果
     */
    @Override
    public int deleteDictTypeById(Long dictId) {
        return dictTypeMapper.deleteDictTypeById(dictId);
    }

    /**
     * 批量删除字典类型
     *
     * @param ids 需要删除的数据
     * @return 结果
     */
    @Override
    public int deleteDictTypeByIds(String ids) throws BusinessException {
        Long[] dictIds = Convert.toLongArray(ids);
        for (Long dictId : dictIds) {
            SysDictType dictType = selectDictTypeById(dictId);
            if (dictDataMapper.countDictDataByType(dictType.getDictType()) > 0) {
                throw new BusinessException(String.format("%1$s已分配,不能删除", dictType.getDictName()));
            }
        }

        return dictTypeMapper.deleteDictTypeByIds(dictIds);
    }

    /**
     * 新增保存字典类型信息
     *
     * @param dictType 字典类型信息
     * @return 结果
     */
    @Override
    public int insertDictType(SysDictType dictType) {
        Set<String> keys = redisTemplate.keys("pp:dict:" + "*");
        redisTemplate.delete(keys);
        return dictTypeMapper.insertDictType(dictType);
    }

    /**
     * 修改保存字典类型信息
     *
     * @param dictType 字典类型信息
     * @return 结果
     */
    @Override
    @Transactional
    public int updateDictType(SysDictType dictType) {
        SysDictType oldDict = dictTypeMapper.selectDictTypeById(dictType.getDictId());
        dictDataMapper.updateDictDataType(oldDict.getDictType(), dictType.getDictType());
        return dictTypeMapper.updateDictType(dictType);
    }

    /**
     * 校验字典类型称是否唯一
     *
     * @param dict 字典类型
     * @return 结果
     */
    @Override
    public String checkDictTypeUnique(SysDictType dict) {
        Long dictId = StringUtils.isNull(dict.getDictId()) ? -1L : dict.getDictId();
        SysDictType dictType = dictTypeMapper.checkDictTypeUnique(dict.getDictType());
        if (StringUtils.isNotNull(dictType) && dictType.getDictId().longValue() != dictId.longValue()) {
            return UserConstants.DICT_TYPE_NOT_UNIQUE;
        }
        return UserConstants.DICT_TYPE_UNIQUE;
    }

    /**
     * 查询字典类型树
     *
     * @param dictType 字典类型
     * @return 所有字典类型
     */
    @Override
    public List<Ztree> selectDictTree(SysDictType dictType) {
        List<Ztree> ztrees = new ArrayList<Ztree>();
        List<SysDictType> dictList = dictTypeMapper.selectDictTypeList(dictType);
        for (SysDictType dict : dictList) {
            if (UserConstants.DICT_NORMAL.equals(dict.getStatus())) {
                Ztree ztree = new Ztree();
                ztree.setId(dict.getDictId());
                ztree.setName(transDictName(dict));
                ztree.setTitle(dict.getDictType());
                ztrees.add(ztree);
            }
        }
        return ztrees;
    }

    public String transDictName(SysDictType dictType) {
        StringBuffer sb = new StringBuffer();
        sb.append("(" + dictType.getDictName() + ")");
        sb.append("&nbsp;&nbsp;&nbsp;" + dictType.getDictType());
        return sb.toString();
    }
}
