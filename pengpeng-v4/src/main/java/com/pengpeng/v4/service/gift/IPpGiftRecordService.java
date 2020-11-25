package com.pengpeng.v4.service.gift;

import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.v4.pojo.gift.PpGift;
import com.pengpeng.v4.pojo.gift.PpGiftRecord;
import java.util.List;

/**
 * 礼物记录Service接口
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
public interface IPpGiftRecordService 
{
    /**
     * 查询礼物记录
     * 
     * @param id 礼物记录ID
     * @return 礼物记录
     */
    public PpGiftRecord selectPpGiftRecordById(Long id);

    /**
     * 查询礼物记录列表
     * 
     * @param ppGiftRecord 礼物记录
     * @return 礼物记录集合
     */
    public List<PpGiftRecord> selectPpGiftRecordList(PpGiftRecord ppGiftRecord);

    /**
     * 新增礼物记录
     * 
     * @param ppGiftRecord 礼物记录
     * @return 结果
     */
    public AjaxResult insertPpGiftRecord(PpGiftRecord ppGiftRecord);

    /**
     * 修改礼物记录
     * 
     * @param ppGiftRecord 礼物记录
     * @return 结果
     */
    public int updatePpGiftRecord(PpGiftRecord ppGiftRecord);

    /**
     * 批量删除礼物记录
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpGiftRecordByIds(String ids);

    /**
     * 删除礼物记录信息
     * 
     * @param id 礼物记录ID
     * @return 结果
     */
    public int deletePpGiftRecordById(Long id);

    /**
     * 收到礼物列表
     */
    List<PpGiftRecord> receiveGift(Long userId);
}
