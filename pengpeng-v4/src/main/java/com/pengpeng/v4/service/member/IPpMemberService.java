package com.pengpeng.v4.service.member;

import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.utils.DateUtils;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.pojo.member.PpMember;
import com.pengpeng.v4.pojo.member.PpmemberDto;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * 用户扩展Service接口
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
public interface IPpMemberService {
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
     * @return 结果
     */
    public AjaxResult insertPpMember(String phone,String password, String code);

    /**
     * 新增用户扩展pc
     * @return 结果
     */
    public AjaxResult insertPpMemberForPc(PpMember ppMember);

    /**
     * 修改用户扩展
     *
     * @param ppMember 用户扩展
     * @return 结果
     */
    public int updatePpMember(PpMember ppMember);

    /**
     * 批量删除用户扩展
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpMemberByIds(String ids);

    /**
     * 删除用户扩展信息
     *
     * @param id 用户扩展ID
     * @return 结果
     */
    public int deletePpMemberById(Long id);

    /**
     * 获取用户的二维码
     */
    String invitationCode(Long userId);

    /**
     * 邀请好友
     */
    void invitationFriend(String invitationCode);


    /**
     * 填写邀请码
     */
    void bindFriend(Long userId, String invitationCode);

    /**
     * 邀请码获取对应的人
     */
    PpMember selectInvitationUser(String invitationCode);

    /**
     * 判断用户是否为会员
     */
    Integer isMember(Long userId);

    /**
     * 判断用户是否有邀请人
     */
    PpMember isInviter(Long userid);

    /**
     * 余额
     */
    Integer selectBalance(Long userId);

    /**
     * 用户收益
     */
    BigDecimal selectEarnings(Long userId);

    /**
     * 获取用户头像
     */
    PpMember selectUserAndFiles(Long userId);

    /**
     * 获取年龄
     */
    Integer userAge(Long userId);

    /**
     * 首页 用户推荐列表
     */
    List<PpMember> selectIndexMemberList(PpmemberDto ppmemberDto);

    /**
     * 开通会员测试
     */
    void dredgeMember(Long userId,Integer time,String timeTpye,String orderNumber);

    /**
     * 获取信息
     */
    List<PpMember> selectList();

    /**
     * 定时修改
     */
    /**
     * 修改用户扩展
     *
     * @param ppMember 用户扩展
     * @return 结果
     */
      void update(PpMember ppMember);

    /**
     * 获取活跃时间
     */
    Long activeTime(Long userId);

    /**
     * 获取两人之间的距离
     */
    Double distance(Long otherId);

    /**
     * 在线好友
     */
    List<PpMember> onlineFriends();

}
