package com.pengpeng.v4.service.balace;

import com.pengpeng.v4.pojo.balace.PpBalaceRecord;

import java.util.List;

/**
 * 余额变动 不可提取Service接口
 *
 * @author pengpeng
 * @date 2019-12-21
 */
public interface IPpBalaceRecordService
{
    /**
     * 查询余额变动 不可提取
     *
     * @param balanceId 余额变动 不可提取ID
     * @return 余额变动 不可提取
     */
    public PpBalaceRecord selectPpBalaceRecordById(Long balanceId);

    /**
     * 查询余额变动 不可提取列表
     *
     * @param ppBalaceRecord 余额变动 不可提取
     * @return 余额变动 不可提取集合
     */
    public List<PpBalaceRecord> selectPpBalaceRecordList(PpBalaceRecord ppBalaceRecord);

    /**
     * 新增余额变动 不可提取
     *
     * @param ppBalaceRecord 余额变动 不可提取
     * @return 结果
     */
    public int insertPpBalaceRecord(PpBalaceRecord ppBalaceRecord);

    /**
     * 修改余额变动 不可提取
     *
     * @param ppBalaceRecord 余额变动 不可提取
     * @return 结果
     */
    public int updatePpBalaceRecord(PpBalaceRecord ppBalaceRecord);

    /**
     * 批量删除余额变动 不可提取
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpBalaceRecordByIds(String ids);

    /**
     * 删除余额变动 不可提取信息
     *
     * @param balanceId 余额变动 不可提取ID
     * @return 结果
     */
    public int deletePpBalaceRecordById(Long balanceId);

    /**
     * 获取用户信息 关联礼物记录表和充值记录表
     */
    List<PpBalaceRecord> selectUser(Long userId);
}
