package com.pengpeng.v4.mapper.member;

import com.alibaba.fastjson.JSONObject;
import com.pengpeng.v4.pojo.login.PpLogin;
import com.pengpeng.v4.pojo.member.PpMember;
import com.pengpeng.v4.pojo.member.PpmemberDto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 用户扩展Mapper接口
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
public interface PpMemberMapper 
{
    /**
     * 查询用户扩展
     * 
     * @param id 用户扩展ID
     * @return 用户扩展
     */
    public PpMember selectPpMemberById(Long id);

    /**
     * 查询用户扩展列表
     * 
     * @param ppMember 用户扩展
     * @return 用户扩展集合
     */
    public List<PpMember> selectPpMemberList(PpMember ppMember);

    /**
     * 新增用户扩展
     * 
     * @param ppMember 用户扩展
     * @return 结果
     */
    public int insertPpMember(PpMember ppMember);

    /**
     * 插入登录账号
     * @param ppLogin
     * @return
     */
    public int insertPpLoginAccount(PpLogin ppLogin);

    /**
     * 查询电话号是否存在
     * @param phone
     * @return
     */
    public int selectPpLoginByPhoneExist(String phone);

    /**
     * 根据电话号查询用户
     * @param phone
     * @return
     */
    public PpMember selectPpLoginByPhone(String phone);

    /**
     * 修改用户扩展
     * 
     * @param ppMember 用户扩展
     * @return 结果
     */
    public int updatePpMember(PpMember ppMember);

    /**
     * 删除用户扩展
     * 
     * @param id 用户扩展ID
     * @return 结果
     */
    public int deletePpMemberById(Long id);

    /**
     * 批量删除用户扩展
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpMemberByIds(String[] ids);

    /**
     * 通过邀请码获取信息
     */
    PpMember selectInvitationCode(String invitationCode);

    /**
     * 获取用户头像
     */
    PpMember selectUserAndFiles(Long userId);

    /**
     * 首页查询 用户
     *
     * @param ppMember 用户扩展
     * @return 用户扩展集合
     */
    public List<PpMember> selectIndexMemberList(@Param("ppMember") PpmemberDto ppMember, @Param("blackIds") List<Long> blackIds);

    /**
     * 获取用户信息
     */
    List<PpMember> selectList();

    /**
     * 获取年龄和文件数
     */
    PpMember selectFileUser(Long id);

}
