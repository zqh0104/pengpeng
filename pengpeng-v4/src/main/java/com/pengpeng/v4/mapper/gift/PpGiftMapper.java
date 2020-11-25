package com.pengpeng.v4.mapper.gift;

import com.pengpeng.v4.pojo.gift.PpGift;

import java.util.List;

/**
 * 礼物Mapper接口
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
public interface PpGiftMapper 
{
    /**
     * 查询礼物
     * 
     * @param id 礼物ID
     * @return 礼物
     */
    public PpGift selectPpGiftById(Long id);

    /**
     * 查询礼物列表
     * 
     * @param ppGift 礼物
     * @return 礼物集合
     */
    public List<PpGift> selectPpGiftList(PpGift ppGift);

    /**
     * 新增礼物
     * 
     * @param ppGift 礼物
     * @return 结果
     */
    public int insertPpGift(PpGift ppGift);

    /**
     * 修改礼物
     * 
     * @param ppGift 礼物
     * @return 结果
     */
    public int updatePpGift(PpGift ppGift);

    /**
     * 删除礼物
     * 
     * @param id 礼物ID
     * @return 结果
     */
    public int deletePpGiftById(Long id);

    /**
     * 批量删除礼物
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpGiftByIds(String[] ids);

    /**
     * 获取礼物列表
     */
    List<PpGift> giftList();


}
