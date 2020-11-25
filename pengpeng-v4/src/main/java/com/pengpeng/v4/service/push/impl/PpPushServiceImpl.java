package com.pengpeng.v4.service.push.impl;

import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.text.Convert;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.mapper.push.PpPushMapper;
import com.pengpeng.v4.pojo.push.PpPush;
import com.pengpeng.v4.service.push.IPpPushService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

import static com.pengpeng.common.core.domain.AjaxResult.error;
import static com.pengpeng.common.core.domain.AjaxResult.success;

/**
 * 推送记录列Service业务层处理
 *
 * @author pengpeng
 * @date 2019-12-24
 */
@Service
public class PpPushServiceImpl implements IPpPushService {
    @Autowired
    private PpPushMapper ppPushMapper;

    @Autowired
    private RedisTemplate redisTemplate;

    /**
     * 查询推送记录列
     *
     * @param id 推送记录列ID
     * @return 推送记录列
     */
    @Override
    public PpPush selectPpPushById(Long id) {
        return ppPushMapper.selectPpPushById(id);
    }

    /**
     * 查询推送记录列列表
     *
     * @param ppPush 推送记录列
     * @return 推送记录列
     */
    @Override
    public List<PpPush> selectPpPushList(PpPush ppPush) {
        return ppPushMapper.selectPpPushList(ppPush);
    }

    /**
     * 新增推送记录列
     *
     * @param ppPush 推送记录列
     * @return 结果
     */
    @Override
    public int insertPpPush(PpPush ppPush) {
        return ppPushMapper.insertPpPush(ppPush);
    }

    /**
     * 修改推送记录列
     *
     * @param ppPush 推送记录列
     * @return 结果
     */
    @Override
    public int updatePpPush(PpPush ppPush) {
        return ppPushMapper.updatePpPush(ppPush);
    }

    /**
     * 删除推送记录列对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePpPushByIds(String ids) {
        return ppPushMapper.deletePpPushByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除推送记录列信息
     *
     * @param id 推送记录列ID
     * @return 结果
     */
    @Override
    public int deletePpPushById(Long id) {
        return ppPushMapper.deletePpPushById(id);
    }

    /**
     * 添加个推 addRRegisterID
     *
     * @return
     */
    @Override
    public AjaxResult addRRegisterId(String registerId) {
        if (StringUtils.isEmpty(registerId)) {
            return error("registerId不能为空");
        }
        String key = "pp:member:push:";
        redisTemplate.opsForHash().put(key, ShiroUtils.getAppUserId().toString(), registerId);
        return success();
    }
}
