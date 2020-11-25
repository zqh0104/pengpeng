package com.pengpeng.v4.mapper.invite;

import com.pengpeng.v4.pojo.invite.PpInvite;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 用户邀请关系Mapper接口
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
public interface PpInviteMapper 
{
    /**
     * 查询用户邀请关系
     * 
     * @param id 用户邀请关系ID
     * @return 用户邀请关系
     */
    public PpInvite selectPpInviteById(Long id);

    /**
     * 查询用户邀请关系列表
     * 
     * @param ppInvite 用户邀请关系
     * @return 用户邀请关系集合
     */
    public List<PpInvite> selectPpInviteList(PpInvite ppInvite);

    /**
     * 新增用户邀请关系
     * 
     * @param ppInvite 用户邀请关系
     * @return 结果
     */
    public int insertPpInvite(PpInvite ppInvite);

    /**
     * 修改用户邀请关系
     * 
     * @param ppInvite 用户邀请关系
     * @return 结果
     */
    public int updatePpInvite(PpInvite ppInvite);

    /**
     * 删除用户邀请关系
     * 
     * @param id 用户邀请关系ID
     * @return 结果
     */
    public int deletePpInviteById(Long id);

    /**
     * 批量删除用户邀请关系
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpInviteByIds(String[] ids);

    /**
     * 新增用户邀请关系
     */
    public void insertId(@Param("userId") Long userId,@Param("byUserId") Long byUserId);

}
