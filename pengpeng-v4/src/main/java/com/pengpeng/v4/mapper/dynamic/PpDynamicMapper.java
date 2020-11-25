package com.pengpeng.v4.mapper.dynamic;

import com.pengpeng.v4.pojo.dynamic.PpDynamic;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 发布动态Mapper接口
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
public interface PpDynamicMapper 
{
    /**
     * 查询发布动态
     * 
     * @param id 发布动态ID
     * @return 发布动态
     */
    public PpDynamic selectPpDynamicById(Long id);

    /**
     * 查询发布动态列表
     * 
     * @param ppDynamic 发布动态
     * @return 发布动态集合
     */
    public List<PpDynamic> selectPpDynamicList(PpDynamic ppDynamic);

    /**
     * 查询好友发布动态列表
     *
     * @param ppDynamic 发布动态
     * @return 发布动态集合
     */
    public List<PpDynamic> selectPpDynamicForFriendsList(@Param("userId") Long userId,@Param("ppDynamic") PpDynamic ppDynamic,@Param("friendsList")List<Long> friendsList);

    /**
     * 新增发布动态
     * 
     * @param ppDynamic 发布动态
     * @return 结果
     */
    public int insertPpDynamic(PpDynamic ppDynamic);

    /**
     * 修改发布动态
     * 
     * @param ppDynamic 发布动态
     * @return 结果
     */
    public int updatePpDynamic(PpDynamic ppDynamic);

    /**
     * 修改动态点赞数量
     *
     * @param ppDynamicId
     * @return 结果
     */
    public int updatePpDynamicCommondNum(@Param("dynamicId") Long ppDynamicId,@Param("type") Integer type);

    /**
     * 删除发布动态
     * 
     * @param id 发布动态ID
     * @return 结果
     */
    public int deletePpDynamicById(Long id);

    /**
     * 批量删除发布动态
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpDynamicByIds(String[] ids);
}
