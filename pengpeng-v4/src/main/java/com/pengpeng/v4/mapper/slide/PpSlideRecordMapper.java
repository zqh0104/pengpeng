package com.pengpeng.v4.mapper.slide;

import com.pengpeng.v4.pojo.slide.PpSlideRecord;

import java.util.List;

/**
 * @author Administrator
 */
public interface PpSlideRecordMapper {

    int ppSlideRecordAdd(PpSlideRecord ppSlideRecord);

    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public PpSlideRecord selectPpSlideRecordById(Long id);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param ppSlideRecord 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<PpSlideRecord> selectPpSlideRecordList(PpSlideRecord ppSlideRecord);

    /**
     * 新增【请填写功能名称】
     *
     * @param ppSlideRecord 【请填写功能名称】
     * @return 结果
     */
    public int insertPpSlideRecord(PpSlideRecord ppSlideRecord);

    /**
     * 修改【请填写功能名称】
     *
     * @param ppSlideRecord 【请填写功能名称】
     * @return 结果
     */
    public int updatePpSlideRecord(PpSlideRecord ppSlideRecord);

    /**
     * 删除【请填写功能名称】
     *
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deletePpSlideRecordById(Long id);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpSlideRecordByIds(String[] ids);
}
