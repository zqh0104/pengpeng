package com.pengpeng.v4.service.files;

import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.v4.pojo.files.PpFiles;
import com.pengpeng.v4.pojo.gift.PpGiftRecord;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 *
 * 文件路径表
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
public interface IPpFilesService{

    /**
     * 用户点赞的图片
     */
    List<PpFiles> likePhotograph(Long userId);

    /**
     * 用户点赞的视屏
     */
    List<PpFiles> lkeVideo(Long userId);

    /**
     * 用户点赞过的动态
     */
    List<PpFiles> lkeDynamic(Long userId);

    /**
     * 评论过的动态
     */
    List<PpFiles> commentDynamic(Long userId);

    /**
     * 获取用户图片
     */
    List<PpFiles> pictureUser(Long userId);

    /**
     * 编辑用户图片信息
     */
    void compilePicture(String fileUrl);

    /**
     * 删除id
     */
    int deletePpFilesById(Long id);


    /**
     * 修改用户的图片信息
     */
    void updateUserFiles(@Param("id")Long id, @Param("url")String url);

    /**
     * 批量删除文件
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpFilesByIds(String ids);




}
