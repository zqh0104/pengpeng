package com.pengpeng.v4.mapper.files;

import com.pengpeng.v4.pojo.dynamic.PpCommendRecord;
import com.pengpeng.v4.pojo.files.PpFiles;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 文件表
 */
public interface PpFilesMapper {

    /**
     * 获取用户点赞信息对应的照片
     */
    List<PpFiles> lkePhotograph(Long userId);

    /**
     * 用户点赞的小视频
     */
    List<PpFiles> lkeVideo(Long userId);

    /**
     * 用户点赞过的动态
     */
    List<PpFiles> lkeDynamic(Long userId);

    /**
     * 查询文件
     *
     * @param id 文件ID
     * @return 文件
     */
    public PpFiles selectPpFilesById(Long id);

    /**
     * 查询文件
     *
     * @return 文件
     */
    public PpFiles selectPpFilesByFileIdAndFileSourceLimitOne(@Param("fileId") Long fileId, @Param("Source") Integer Source);

    /**
     * 查询文件
     *
     * @return 文件
     */
    public List<PpFiles> selectPpFilesByFileIdAndFileSourceAll(@Param("fileId") Long fileId, @Param("Source") Integer Source);


    /**
     * 查询文件列表
     *
     * @param ppFiles 文件
     * @return 文件集合
     */
    public List<PpFiles> selectPpFilesList(PpFiles ppFiles);

    /**
     * 新增文件
     *
     * @param ppFiles 文件
     * @return 结果
     */
    public int insertPpFiles(PpFiles ppFiles);

    /**
     * 新增文件
     *
     * @param ppFiles 文件
     * @return 结果
     */
    public int insertBatchPpFiles(@Param("ppFiles") PpFiles ppFiles);

    /**
     * 修改文件
     *
     * @param ppFiles 文件
     * @return 结果
     */
    public int updatePpFiles(PpFiles ppFiles);

    /**
     * 删除文件
     *
     * @param id 文件ID
     * @return 结果
     */
    public int deletePpFilesById(Long id);

    /**
     * 批量删除文件
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePpFilesByIds(String[] ids);

    /**
     * 评论过的动态
     */
    List<PpFiles> commentDynamic(Long userId);

    /**
     * 获取用户的照片
     */
    List<PpFiles> selectUserPhotograph(Long userId);

    /**
     * 固定添加 无返回值
     */
    void insertPicture(@Param("fileId") Long fileId, @Param("fileUrl") String fileUrl);

    /**
     * 根据文件地址和文件类型更改信息
     *
     * @param url
     * @param fileType
     * @return
     */
    int uploadPpFilesByUrlAndType(@Param("url") String url, @Param("fileType") Integer fileType);

    /**
     * 修改用户的图片信息
     */
    void updateUserFiles(@Param("id")Long id,@Param("url")String url);

}
