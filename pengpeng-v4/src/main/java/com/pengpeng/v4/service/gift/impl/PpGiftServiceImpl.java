package com.pengpeng.v4.service.gift.impl;
import com.pengpeng.common.core.text.Convert;
import com.pengpeng.common.utils.DateUtils;
import com.pengpeng.v4.mapper.gift.PpGiftMapper;
import com.pengpeng.v4.pojo.gift.PpGift;
import com.pengpeng.v4.service.gift.IPpGiftService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 礼物Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@Service
public class PpGiftServiceImpl implements IPpGiftService
{
    @Autowired
    private PpGiftMapper ppGiftMapper;

    /**
     * 查询礼物
     * 
     * @param id 礼物ID
     * @return 礼物
     */
    @Override
    public PpGift selectPpGiftById(Long id)
    {
        return ppGiftMapper.selectPpGiftById(id);
    }

    /**
     * 查询礼物列表
     * 
     * @param ppGift 礼物
     * @return 礼物
     */
    @Override
    public List<PpGift> selectPpGiftList(PpGift ppGift)
    {
        return ppGiftMapper.selectPpGiftList(ppGift);
    }

    /**
     * 新增礼物
     * 
     * @param ppGift 礼物
     * @return 结果
     */
    @Override
    public int insertPpGift(PpGift ppGift)
    {
        ppGift.setCreateTime(DateUtils.getNowDate());
        return ppGiftMapper.insertPpGift(ppGift);
    }

    /**
     * 修改礼物
     * 
     * @param ppGift 礼物
     * @return 结果
     */
    @Override
    public int updatePpGift(PpGift ppGift)
    {
        ppGift.setUpdateTime(DateUtils.getNowDate());
        return ppGiftMapper.updatePpGift(ppGift);
    }

    /**
     * 删除礼物对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePpGiftByIds(String ids)
    {
        return ppGiftMapper.deletePpGiftByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除礼物信息
     * 
     * @param id 礼物ID
     * @return 结果
     */
    @Override
    public int deletePpGiftById(Long id)
    {
        return ppGiftMapper.deletePpGiftById(id);
    }

    /**
     * 获取礼物列表
     */
    @Override
    public List<PpGift> giftList() {
        return ppGiftMapper.giftList();
    }
}
