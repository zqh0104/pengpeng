package com.pengpeng.v4.service.files.impl;

import com.pengpeng.common.core.text.Convert;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.mapper.files.PpFilesMapper;
import com.pengpeng.v4.pojo.files.PpFiles;
import com.pengpeng.v4.service.files.IPpFilesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2019/12/14 14:23
 */
@SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
@Service
public class PpFilesServiceImpl implements IPpFilesService {

    @Autowired
    private PpFilesMapper ppFilesMapper;
    /**
     * 用户点赞的图片
     *
     * @param userId
     */
    @Override
    public List<PpFiles> likePhotograph(Long userId) {

        List<PpFiles> ppFiles = ppFilesMapper.lkePhotograph(userId);
        return ppFiles;
    }

    /**
     * 用户点赞的视屏
     *
     * @param userId
     */
    @Override
    public List<PpFiles> lkeVideo(Long userId) {
        List<PpFiles> ppFiles = ppFilesMapper.lkeVideo(userId);
        return ppFiles;
    }

    /**
     * 用户点赞过的动态
     *
     * @param userId
     */
    @Override
    public List<PpFiles> lkeDynamic(Long userId) {
        List<PpFiles> ppFiles = ppFilesMapper.lkeDynamic(userId);
        return ppFiles;
    }

    /**
     * 评论过的动态
     *
     * @param userId
     */
    @Override
    public List<PpFiles> commentDynamic(Long userId) {
        List<PpFiles> ppFiles = ppFilesMapper.commentDynamic(userId);
        return ppFiles;
    }

    /**
     * 获取用户图片
     * @param userId
     */
    @Override
    public List<PpFiles> pictureUser(Long userId) {
        List<PpFiles> ppFiles = ppFilesMapper.selectUserPhotograph(userId);
        return ppFiles;
    }



    /**
     * 添加用户图片信息
     */
    @Override
    public void compilePicture(String fileUrl) {
        ppFilesMapper.insertPicture(ShiroUtils.getAppUserId(),fileUrl);
    }

    /**
     * 删除id
     *
     * @param id
     */
    @Override
    public int deletePpFilesById(Long id) {
        int i = ppFilesMapper.deletePpFilesById(id);
        return i;
    }

    /**
     * 修改用户的图片信息
     * @param url
     */
    @Override
    public void updateUserFiles(Long id,String url) {
        ppFilesMapper.updateUserFiles(id,url);
    }

    /**
     * 批量删除文件
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePpFilesByIds(String ids) {
        return ppFilesMapper.deletePpFilesByIds(Convert.toStrArray(ids));
    }

}
