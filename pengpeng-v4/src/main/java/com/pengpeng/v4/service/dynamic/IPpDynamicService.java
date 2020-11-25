package com.pengpeng.v4.service.dynamic;

import com.pengpeng.common.json.JSONObject;
import com.pengpeng.v4.pojo.dynamic.PpDynamic;

import java.util.List;

/**
 * 发布动态Service接口
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
public interface IPpDynamicService 
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
     * 批量删除发布动态
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpDynamicByIds(String ids);

    /**
     * 删除发布动态信息
     * 
     * @param id 发布动态ID
     * @return 结果
     */
    public int deletePpDynamicById(Long id);

    /**
     * 查询好友发布动态列表
     *
     * @param ppDynamic 发布动态
     * @return 发布动态集合
     */
    List<PpDynamic> selectPpDynamicFriendsList(PpDynamic ppDynamic);

    JSONObject unreadMessage();
}
