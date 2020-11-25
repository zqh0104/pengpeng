package com.pengpeng.v4.service.comment;

import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.v4.pojo.comment.PpComment;

import java.util.List;

/**
 * 评论Service接口
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
public interface IPpCommentService 
{
    /**
     * 查询评论
     * 
     * @param id 评论ID
     * @return 评论
     */
    public PpComment selectPpCommentById(Long id);

    /**
     * 查询评论列表
     * 
     * @param ppComment 评论
     * @return 评论集合
     */
    public List<PpComment> selectPpCommentList(PpComment ppComment);

    /**
     * 查询所有评论
     *
     * @param ppComment 评论
     * @return 评论集合
     */
    public List<PpComment> selectAllPpCommentList(PpComment ppComment);

    /**
     * 新增评论
     * 
     * @param ppComment 评论
     * @return 结果
     */
    public AjaxResult insertPpComment(PpComment ppComment);

    /**
     * 修改评论
     * 
     * @param ppComment 评论
     * @return 结果
     */
    public int updatePpComment(PpComment ppComment);

    /**
     * 批量删除评论
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpCommentByIds(String ids);

    /**
     * 删除评论信息
     * 
     * @param id 评论ID
     * @return 结果
     */
    public int deletePpCommentById(Long id);

    /**
     * 查询动态下面所有评论
     */
    List<PpComment> selectPpCommentPllist(PpComment ppComment);

    /**
     * 别人评论我的
     */
    List<PpComment> otherComment(Long userId);
}
