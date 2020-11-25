package com.pengpeng.v4.service.member.impl;

import java.math.BigDecimal;
import java.text.NumberFormat;
import java.util.List;

import com.pengpeng.common.core.text.Convert;
import com.pengpeng.v4.mapper.member.PpMemberSpecMapper;
import com.pengpeng.v4.pojo.member.PpMemberSpec;
import com.pengpeng.v4.service.member.IPpMemberSpecService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 会员规格Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
@Service
public class PpMemberSpecServiceImpl implements IPpMemberSpecService
{
    @Autowired
    private PpMemberSpecMapper ppMemberSpecMapper;

    /**
     * 查询会员规格
     * 
     * @param id 会员规格ID
     * @return 会员规格
     */
    @Override
    public PpMemberSpec selectPpMemberSpecById(Long id)
    {
        return ppMemberSpecMapper.selectPpMemberSpecById(id);
    }

    /**
     * 查询会员规格列表
     * 
     * @param ppMemberSpec 会员规格
     * @return 会员规格
     */
    @Override
    public List<PpMemberSpec> selectPpMemberSpecList(PpMemberSpec ppMemberSpec)
    {
        return ppMemberSpecMapper.selectPpMemberSpecList(ppMemberSpec);
    }

    /**
     * 新增会员规格
     * 
     * @param ppMemberSpec 会员规格
     * @return 结果
     */
    @Override
    public int insertPpMemberSpec(PpMemberSpec ppMemberSpec)
    {
        return ppMemberSpecMapper.insertPpMemberSpec(ppMemberSpec);
    }

    /**
     * 修改会员规格
     * 
     * @param ppMemberSpec 会员规格
     * @return 结果
     */
    @Override
    public int updatePpMemberSpec(PpMemberSpec ppMemberSpec)
    {
        return ppMemberSpecMapper.updatePpMemberSpec(ppMemberSpec);
    }

    /**
     * 删除会员规格对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePpMemberSpecByIds(String ids)
    {
        return ppMemberSpecMapper.deletePpMemberSpecByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除会员规格信息
     * 
     * @param id 会员规格ID
     * @return 结果
     */
    @Override
    public int deletePpMemberSpecById(Long id)
    {
        return ppMemberSpecMapper.deletePpMemberSpecById(id);
    }

    /**
     * 获取会员列表
     *
     * @return
     */
    @Override
    public List<PpMemberSpec> memberSpecList() {
        List<PpMemberSpec> ppMemberSpecs = ppMemberSpecMapper.memberSpecList();
        for (PpMemberSpec ppMemberSpec : ppMemberSpecs) {
            //算平均每月花费
            //现价
            BigDecimal currentPrice=new BigDecimal(ppMemberSpec.getCurrentPrice());
            //月
            BigDecimal memberSecond =new BigDecimal(ppMemberSpec.getMemberSecond());
            //每月多少钱
            BigDecimal averageMonth = currentPrice.divide(memberSecond,2, BigDecimal.ROUND_HALF_UP);
            ppMemberSpec.setAverageMonth(averageMonth.toString());
            //节约百分比
            //原价
            BigDecimal memberMoney=new BigDecimal(ppMemberSpec.getMemberMoney());
            //百分比
            BigDecimal save = currentPrice.divide(memberMoney,2, BigDecimal.ROUND_HALF_UP);
            BigDecimal number = new BigDecimal("1");
            BigDecimal saveMemberSpec = number.subtract(save);
            NumberFormat nt = NumberFormat.getPercentInstance();
            //设置百分数精确度2即保留两位小数
            nt.setMinimumFractionDigits(2);
            String x=nt.format(saveMemberSpec);
            ppMemberSpec.setSave(x);
        }
        return ppMemberSpecs;
    }
}
