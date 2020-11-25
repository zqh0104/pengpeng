package com.pengpeng.v4.mapper.member;

import com.pengpeng.v4.pojo.member.PpMemberSpec;
import java.util.List;

/**
 * 会员规格Mapper接口
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
public interface PpMemberSpecMapper 
{
    /**
     * 查询会员规格
     * 
     * @param id 会员规格ID
     * @return 会员规格
     */
    public PpMemberSpec selectPpMemberSpecById(Long id);

    /**
     * 查询会员规格列表
     * 
     * @param ppMemberSpec 会员规格
     * @return 会员规格集合
     */
    public List<PpMemberSpec> selectPpMemberSpecList(PpMemberSpec ppMemberSpec);

    /**
     * 新增会员规格
     * 
     * @param ppMemberSpec 会员规格
     * @return 结果
     */
    public int insertPpMemberSpec(PpMemberSpec ppMemberSpec);

    /**
     * 修改会员规格
     * 
     * @param ppMemberSpec 会员规格
     * @return 结果
     */
    public int updatePpMemberSpec(PpMemberSpec ppMemberSpec);

    /**
     * 删除会员规格
     * 
     * @param id 会员规格ID
     * @return 结果
     */
    public int deletePpMemberSpecById(Long id);

    /**
     * 批量删除会员规格
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpMemberSpecByIds(String[] ids);

    /**
     * 获取会员规格
     */
    List<PpMemberSpec> memberSpecList();
}
