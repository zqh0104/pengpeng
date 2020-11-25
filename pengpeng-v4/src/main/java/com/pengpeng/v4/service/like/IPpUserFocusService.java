package com.pengpeng.v4.service.like;
import com.pengpeng.v4.pojo.like.PpUserFocus;
import com.pengpeng.v4.pojo.member.PpMember;

import java.util.List;

/**
 * 用户喜欢Service接口
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
public interface IPpUserFocusService
{
    /**
     * 查询用户喜欢
     * 
     * @param id 用户喜欢ID
     * @return 用户喜欢
     */
    public PpUserFocus selectPpUserFocusById(Long id);

    /**
     * 查询用户喜欢列表
     * 
     * @param ppUserFocus 用户喜欢
     * @return 用户喜欢集合
     */
    public List<PpUserFocus> selectPpUserFocusList(PpUserFocus ppUserFocus);

    /**
     * 新增用户喜欢
     * 
     * @param ppUserFocus 用户喜欢
     * @return 结果
     */
    public int insertPpUserFocus(PpUserFocus ppUserFocus);

    /**
     * 修改用户喜欢
     * 
     * @param ppUserFocus 用户喜欢
     * @return 结果
     */
    public int updatePpUserFocus(PpUserFocus ppUserFocus);

    /**
     * 批量删除用户喜欢
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpUserFocusByIds(String ids);

    /**
     * 删除用户喜欢信息
     * 
     * @param id 用户喜欢ID
     * @return 结果
     */
    public int deletePpUserFocusById(Long id);

    /**喜欢人数*/
    Integer likeUser(Long useraId);

    /**
     * 被喜欢人数
     * @return
     */
    Integer byLikeUser(Long useraId);

    /**被喜欢列表*/
    List<PpMember> othersLike(Long useraId);

    /**
     * 喜欢他人列表
     */
    List<PpMember> liveYou(Long userId);

    /**
     * 互相喜欢
     */
    void eachOther(Long useraId,Long userbid);

    /**
     * 取消喜欢
     */
    void cancelLike(Long useraId,Long userbid);

    /**
     * 喜欢对方
     */
    void interestedUser(Long useraId,Long userbid);

    /**
     * 好友列表
     */
    List<PpMember> friendList();

    /**
     * 获取两者关系
     */
    PpUserFocus relation(Long userId,Long otherId);

    /**
     * 获取两人状态和用户信息
     */
    PpUserFocus statusAndUser(Long userId,Long otherId);

    /**
     * 新粉丝
     */
    List<PpMember> newFans(Long useraId);


}
