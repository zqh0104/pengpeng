package com.pengpeng.v4.service.dynamic;


import com.pengpeng.v4.pojo.dynamic.PpCommendRecord;

import java.util.List;

/**
 * 点赞记录Service接口
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
public interface IPpCommendRecordService 
{
    /**
     * 查询点赞记录
     * 
     * @param id 点赞记录ID
     * @return 点赞记录
     */
    public PpCommendRecord selectPpCommendRecordById(Long id);

    /**
     * 查询点赞记录列表
     * 
     * @param ppCommendRecord 点赞记录
     * @return 点赞记录集合
     */
    public List<PpCommendRecord> selectPpCommendRecordList(PpCommendRecord ppCommendRecord);

    /**
     * pc查询所有记录列表
     *
     * @param ppCommendRecord 点赞记录
     * @return 点赞记录集合
     */
    public List<PpCommendRecord> selectAllPpCommendRecordList(PpCommendRecord ppCommendRecord);

    /**
     * 新增点赞记录
     * 
     * @param ppCommendRecord 点赞记录
     * @return 结果
     */
    public int insertPpCommendRecord(PpCommendRecord ppCommendRecord);

    /**
     * 修改点赞记录
     * 
     * @param ppCommendRecord 点赞记录
     * @return 结果
     */
    public int updatePpCommendRecord(PpCommendRecord ppCommendRecord);

    /**
     * 批量删除点赞记录
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpCommendRecordByIds(String ids);

    /**
     * 删除点赞记录信息
     * 
     * @param id 点赞记录ID
     * @return 结果
     */
    public int deletePpCommendRecordById(Long id);
}
