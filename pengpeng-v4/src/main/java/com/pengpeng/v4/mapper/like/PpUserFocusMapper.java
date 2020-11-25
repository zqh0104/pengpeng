package com.pengpeng.v4.mapper.like;

import com.pengpeng.v4.pojo.like.PpUserFocus;
import com.pengpeng.v4.pojo.member.PpMember;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 用户喜欢Mapper接口
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
public interface PpUserFocusMapper 
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
     * 删除用户喜欢
     * 
     * @param id 用户喜欢ID
     * @return 结果
     */
    public int deletePpUserFocusById(Long id);

    /**
     * 批量删除用户喜欢
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpUserFocusByIds(String[] ids);

    /**查询指定用户的信息*/
    List<PpUserFocus> selectUseraId(Long useraId);

    /**
     * 获取对应用户信息
     */
    PpUserFocus selectIds(@Param("useraId") Long useraId, @Param("userbId") Long userbId);

    /**
     * 相互喜欢
     */
    void eachOther(@Param("useraId") Long useraId,@Param("userbId") Long userbId);

    /**
     * 修改用户状态
     */
    void updateStatus(@Param("useraId") Long useraId,@Param("userbId") Long userbId,@Param("status") Integer status);

    /**
     * 添加喜欢
     */
    void insertLike(@Param("useraId") Long useraId,@Param("userbId") Long userbId,@Param("stuts") Integer stuts);

    /**
     * 查询用户相互喜欢列表
     * @return
     */
    List<PpUserFocus> selectEachFocusList(Long userId);

    /**
     * 被喜欢列表
     */
    List<PpUserFocus> othersLike(Long userId);

    /**
     * 获取两人状态和用户信息
     */
    PpUserFocus statusAndUser(@Param("userId") Long userId,@Param("otherId") Long otherId);


}
