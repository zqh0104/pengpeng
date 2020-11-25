package com.pengpeng.v4.service.balcklist;


import com.pengpeng.v4.pojo.balcklist.PpUserBlacklist;

import java.util.List;

/**
 * 用户拉黑Service接口
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
public interface IPpUserBlacklistService 
{
    /**
     * 查询用户拉黑
     * 
     * @param id 用户拉黑ID
     * @return 用户拉黑
     */
    public PpUserBlacklist selectPpUserBlacklistById(Long id);

    /**
     * 查询用户拉黑列表
     * 
     * @param ppUserBlacklist 用户拉黑
     * @return 用户拉黑集合
     */
    public List<PpUserBlacklist> selectPpUserBlackList(PpUserBlacklist ppUserBlacklist);

    /**
     * 新增用户拉黑
     * 
     * @param ppUserBlacklist 用户拉黑
     * @return 结果
     */
    public int insertPpUserBlacklist(PpUserBlacklist ppUserBlacklist);

    /**
     * 修改用户拉黑
     * 
     * @param ppUserBlacklist 用户拉黑
     * @return 结果
     */
    public int updatePpUserBlacklist(PpUserBlacklist ppUserBlacklist);

    /**
     * 批量删除用户拉黑
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpUserBlacklistByIds(String ids);

    /**
     * 删除用户拉黑信息
     * 
     * @param id 用户拉黑ID
     * @return 结果
     */
    public int deletePpUserBlacklistById(Long id);
}
