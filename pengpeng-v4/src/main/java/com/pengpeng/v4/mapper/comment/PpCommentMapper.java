package com.pengpeng.v4.mapper.comment;

import com.pengpeng.v4.pojo.comment.PpComment;
import org.apache.ibatis.annotations.Param;
import org.omg.CORBA.INTERNAL;

import java.util.List;
import java.util.Map;

/**
 * 评论Mapper接口
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
public interface PpCommentMapper 
{
    /**
     * 查询评论
     * 
     * @param id 评论ID
     * @return 评论
     */
    public PpComment selectPpCommentById(Long id);

    /**
     * 查询评论最大treecode
     *
     * @param id 评论ID
     * @return 评论
     */
    public PpComment selectSourcePpCommentById(@Param("id") Long id);
    /**
     * 查询评论列表
     * 
     * @param ppComment 评论
     * @return 评论集合
     */
    public List<PpComment> selectPpCommentList(PpComment ppComment);

    /**
     * 查询所有评论列表
     *
     * @param ppComment 评论
     * @return 评论集合
     */
    public List<PpComment> selectAllPpCommentList(PpComment ppComment);

    /**
     * 查询评论下的回复列表
     *
     * @param ppComment 评论
     * @return 评论集合
     */
    public List<Map> selectPpCommentUnDerList(PpComment ppComment);
    /**
     * 新增评论
     * 
     * @param ppComment 评论
     * @return 结果
     */
    public int insertPpComment(PpComment ppComment);

    /**
     * 修改评论
     * 
     * @param ppComment 评论
     * @return 结果
     */
    public int updatePpComment(PpComment ppComment);

    /**
     * 删除评论
     * 
     * @param id 评论ID
     * @return 结果
     */
    public int deletePpCommentById(Long id);

    /**
     * 批量删除评论
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpCommentByIds(String[] ids);

    /**
     * 批量修改点赞记录为已读
     *
     * @param ids 需要修改的数据ID
     * @return 结果
     */
    public int updatePpCommentByIds(List ids);

    /**
     * 查询动态下面所有评论
     */
    List<PpComment> selectPpCommentPllist(PpComment ppComment);

    /**
     * 获取评论下面的回复数量
     * @param ppComment
     * @return
     */
    Integer selectPpCommentPlCount(PpComment ppComment);

    Integer selectPpCommentMaxTreeCodeById(@Param("dynamicId") Long dynamicId);

    /**
     * 别人评论我的
     */
    List<PpComment> otherComment(Long userId);
}
