package com.pengpeng.v4.mapper.push;

import com.pengpeng.v4.pojo.push.PpPush;

import java.util.List;

/**
 * 推送记录列Mapper接口
 * 
 * @author pengpeng
 * @date 2019-12-24
 */
public interface PpPushMapper 
{
    /**
     * 查询推送记录列
     * 
     * @param id 推送记录列ID
     * @return 推送记录列
     */
    public PpPush selectPpPushById(Long id);

    /**
     * 查询推送记录列列表
     * 
     * @param ppPush 推送记录列
     * @return 推送记录列集合
     */
    public List<PpPush> selectPpPushList(PpPush ppPush);

    /**
     * 新增推送记录列
     * 
     * @param ppPush 推送记录列
     * @return 结果
     */
    public int insertPpPush(PpPush ppPush);

    /**
     * 修改推送记录列
     * 
     * @param ppPush 推送记录列
     * @return 结果
     */
    public int updatePpPush(PpPush ppPush);

    /**
     * 删除推送记录列
     * 
     * @param id 推送记录列ID
     * @return 结果
     */
    public int deletePpPushById(Long id);

    /**
     * 批量删除推送记录列
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpPushByIds(String[] ids);
}
