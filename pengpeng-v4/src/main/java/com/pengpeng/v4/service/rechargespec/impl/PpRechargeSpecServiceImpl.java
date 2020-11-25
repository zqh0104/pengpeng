package com.pengpeng.v4.service.rechargespec.impl;

import java.util.List;

import com.pengpeng.common.core.text.Convert;
import com.pengpeng.common.utils.DateUtils;
import com.pengpeng.v4.mapper.rechargespec.PpRechargeSpecMapper;
import com.pengpeng.v4.pojo.rechargespec.PpRechargeSpec;
import com.pengpeng.v4.service.rechargespec.IPpRechargeSpecService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 充值规格Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-12-19
 */
@Service
public class PpRechargeSpecServiceImpl implements IPpRechargeSpecService
{
    @Autowired
    private PpRechargeSpecMapper ppRechargeSpecMapper;

    /**
     * 查询充值规格
     * 
     * @param id 充值规格ID
     * @return 充值规格
     */
    @Override
    public PpRechargeSpec selectPpRechargeSpecById(Long id)
    {
        return ppRechargeSpecMapper.selectPpRechargeSpecById(id);
    }

    /**
     * 查询充值规格列表
     * 
     * @param ppRechargeSpec 充值规格
     * @return 充值规格
     */
    @Override
    public List<PpRechargeSpec> selectPpRechargeSpecList(PpRechargeSpec ppRechargeSpec)
    {
        return ppRechargeSpecMapper.selectPpRechargeSpecList(ppRechargeSpec);
    }

    /**
     * 新增充值规格
     * 
     * @param ppRechargeSpec 充值规格
     * @return 结果
     */
    @Override
    public int insertPpRechargeSpec(PpRechargeSpec ppRechargeSpec)
    {
        ppRechargeSpec.setCreateTime(DateUtils.getNowDate());
        return ppRechargeSpecMapper.insertPpRechargeSpec(ppRechargeSpec);
    }

    /**
     * 修改充值规格
     * 
     * @param ppRechargeSpec 充值规格
     * @return 结果
     */
    @Override
    public int updatePpRechargeSpec(PpRechargeSpec ppRechargeSpec)
    {
        ppRechargeSpec.setUpdateTime(DateUtils.getNowDate());
        return ppRechargeSpecMapper.updatePpRechargeSpec(ppRechargeSpec);
    }

    /**
     * 删除充值规格对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePpRechargeSpecByIds(String ids)
    {
        return ppRechargeSpecMapper.deletePpRechargeSpecByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除充值规格信息
     * 
     * @param id 充值规格ID
     * @return 结果
     */
    @Override
    public int deletePpRechargeSpecById(Long id)
    {
        return ppRechargeSpecMapper.deletePpRechargeSpecById(id);
    }
}
