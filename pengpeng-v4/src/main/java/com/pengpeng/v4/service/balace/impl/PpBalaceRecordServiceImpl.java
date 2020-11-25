package com.pengpeng.v4.service.balace.impl;

import java.util.List;

import com.pengpeng.common.core.text.Convert;
import com.pengpeng.v4.mapper.balace.PpBalaceRecordMapper;
import com.pengpeng.v4.pojo.balace.PpBalaceRecord;
import com.pengpeng.v4.service.balace.IPpBalaceRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 余额变动 不可提取Service业务层处理
 *
 * @author pengpeng
 * @date 2019-12-21
 */
@SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
@Service
public class PpBalaceRecordServiceImpl implements IPpBalaceRecordService
{
    @Autowired
    private PpBalaceRecordMapper ppBalaceRecordMapper;

    /**
     * 查询余额变动 不可提取
     *
     * @param balanceId 余额变动 不可提取ID
     * @return 余额变动 不可提取
     */
    @Override
    public PpBalaceRecord selectPpBalaceRecordById(Long balanceId) {

        return ppBalaceRecordMapper.selectPpBalaceRecordById(balanceId);
    }

    /**
     * 查询余额变动 不可提取列表
     *
     * @param ppBalaceRecord 余额变动 不可提取
     * @return 余额变动 不可提取
     */
    @Override
    public List<PpBalaceRecord> selectPpBalaceRecordList(PpBalaceRecord ppBalaceRecord)
    {
        return ppBalaceRecordMapper.selectPpBalaceRecordList(ppBalaceRecord);
    }

    /**
     * 新增余额变动 不可提取
     *
     * @param ppBalaceRecord 余额变动 不可提取
     * @return 结果
     */
    @Override
    public int insertPpBalaceRecord(PpBalaceRecord ppBalaceRecord)
    {
        return ppBalaceRecordMapper.insertPpBalaceRecord(ppBalaceRecord);
    }

    /**
     * 修改余额变动 不可提取
     *
     * @param ppBalaceRecord 余额变动 不可提取
     * @return 结果
     */
    @Override
    public int updatePpBalaceRecord(PpBalaceRecord ppBalaceRecord)
    {
        return ppBalaceRecordMapper.updatePpBalaceRecord(ppBalaceRecord);
    }

    /**
     * 删除余额变动 不可提取对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePpBalaceRecordByIds(String ids)
    {
        return ppBalaceRecordMapper.deletePpBalaceRecordByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除余额变动 不可提取信息
     *
     * @param balanceId 余额变动 不可提取ID
     * @return 结果
     */
    @Override
    public int deletePpBalaceRecordById(Long balanceId)
    {
        return ppBalaceRecordMapper.deletePpBalaceRecordById(balanceId);
    }

    /**
     * 获取用户信息 关联礼物记录表和充值记录表
     *
     * @param userId
     */
    @Override
    public List<PpBalaceRecord> selectUser(Long userId) {
        return ppBalaceRecordMapper.selectUser(userId);
    }
}