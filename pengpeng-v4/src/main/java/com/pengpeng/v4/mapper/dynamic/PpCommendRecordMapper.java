package com.pengpeng.v4.mapper.dynamic;

import com.pengpeng.v4.pojo.dynamic.PpCommendRecord;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 点赞记录Mapper接口
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
public interface PpCommendRecordMapper 
{
    /**
     * 查询点赞记录
     *
     * @param id 点赞记录ID
     * @return 点赞记录
     */
    public PpCommendRecord selectPpCommendRecordById(Long id);

    /**
     * 根据动态和用户id查询点赞记录
     *
     * @param id 点赞记录ID
     * @return 点赞记录
     */
    public PpCommendRecord selectPpCommendRecordByDynamicIdAUserId(@Param("dyId") Long dyId, @Param("uid")Long uid);

    /**
     * 查询点赞记录列表
     * 
     * @param ppCommendRecord 点赞记录
     * @return 点赞记录集合
     */
    public List<PpCommendRecord> selectPpCommendRecordList(PpCommendRecord ppCommendRecord);

    /**
     * 查询所有点赞记录列表
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
     * 删除点赞记录
     * 
     * @param id 点赞记录ID
     * @return 结果
     */
    public int deletePpCommendRecordById(Long id);

    /**
     * 批量删除点赞记录
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpCommendRecordByIds(String[] ids);

    /**
     * 批量修改点赞记录为已读
     *
     * @param ids 需要修改的数据ID
     * @return 结果
     */
    public int updatePpCommendRecordByIds(List ids);
}
