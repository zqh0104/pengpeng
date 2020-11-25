package com.pengpeng.v4.mapper.whistleblowing;


import com.pengpeng.v4.pojo.whistleblowing.PpUserWhistleBlowing;

import java.util.List;

/**
 * 用户举报Mapper接口
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
public interface PpUserWhistleBlowingMapper 
{
    /**
     * 查询用户举报
     * 
     * @param id 用户举报ID
     * @return 用户举报
     */
    public PpUserWhistleBlowing selectPpUserWhistleBlowingById(Long id);

    /**
     * 查询用户举报列表
     * 
     * @param ppUserWhistleBlowing 用户举报
     * @return 用户举报集合
     */
    public List<PpUserWhistleBlowing> selectPpUserWhistleBlowingList(PpUserWhistleBlowing ppUserWhistleBlowing);

    /**
     * 新增用户举报
     * 
     * @param ppUserWhistleBlowing 用户举报
     * @return 结果
     */
    public int insertPpUserWhistleBlowing(PpUserWhistleBlowing ppUserWhistleBlowing);

    /**
     * 修改用户举报
     * 
     * @param ppUserWhistleBlowing 用户举报
     * @return 结果
     */
    public int updatePpUserWhistleBlowing(PpUserWhistleBlowing ppUserWhistleBlowing);

    /**
     * 删除用户举报
     * 
     * @param id 用户举报ID
     * @return 结果
     */
    public int deletePpUserWhistleBlowingById(Long id);

    /**
     * 批量删除用户举报
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpUserWhistleBlowingByIds(String[] ids);
}
