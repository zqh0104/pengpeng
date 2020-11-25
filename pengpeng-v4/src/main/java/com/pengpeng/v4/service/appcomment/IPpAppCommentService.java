package com.pengpeng.v4.service.appcomment;

import com.pengpeng.v4.pojo.appcomment.PpAppComment;

import java.util.List;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author pengpeng
 * @date 2020-01-07
 */
public interface IPpAppCommentService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public PpAppComment selectPpAppCommentById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param ppAppComment 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<PpAppComment> selectPpAppCommentList(PpAppComment ppAppComment);

    /**
     * 新增【请填写功能名称】
     * 
     * @param ppAppComment 【请填写功能名称】
     * @return 结果
     */
    public int insertPpAppComment(PpAppComment ppAppComment);

    /**
     * 修改【请填写功能名称】
     * 
     * @param ppAppComment 【请填写功能名称】
     * @return 结果
     */
    public int updatePpAppComment(PpAppComment ppAppComment);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpAppCommentByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deletePpAppCommentById(Long id);

    /**
     * 用户评论
     */
    List<PpAppComment> selectUser(Long userId);
}
