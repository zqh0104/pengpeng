package com.pengpeng.v4.service.whistleblowing.impl;

import com.pengpeng.common.core.text.Convert;
import com.pengpeng.common.enums.FileSource;
import com.pengpeng.common.utils.DateUtils;
import com.pengpeng.common.utils.StringUtils;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.mapper.files.PpFilesMapper;
import com.pengpeng.v4.mapper.member.PpMemberMapper;
import com.pengpeng.v4.mapper.whistleblowing.PpUserWhistleBlowingMapper;
import com.pengpeng.v4.pojo.files.PpFiles;
import com.pengpeng.v4.pojo.member.PpMember;
import com.pengpeng.v4.pojo.whistleblowing.PpUserWhistleBlowing;
import com.pengpeng.v4.service.whistleblowing.IPpUserWhistleBlowingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 用户举报Service业务层处理
 *
 * @author ruoyi
 * @date 2019-12-10
 */
@Service
public class PpUserWhistleBlowingServiceImpl implements IPpUserWhistleBlowingService {
    @Autowired
    private PpUserWhistleBlowingMapper ppUserWhistleBlowingMapper;

    @Autowired
    private PpMemberMapper ppMemberMapper;

    @Autowired
    private PpFilesMapper ppFilesMapper;

    /**
     * 查询用户举报
     *
     * @param id 用户举报ID
     * @return 用户举报
     */
    @Override
    public PpUserWhistleBlowing selectPpUserWhistleBlowingById(Long id) {
        return ppUserWhistleBlowingMapper.selectPpUserWhistleBlowingById(id);
    }

    /**
     * 查询用户举报列表
     *
     * @param ppUserWhistleBlowing 用户举报
     * @return 用户举报
     */
    @Override
    public List<PpUserWhistleBlowing> selectPpUserWhistleBlowingList(PpUserWhistleBlowing ppUserWhistleBlowing) {
        List<PpUserWhistleBlowing> ppUserWhistleBlowingList = ppUserWhistleBlowingMapper.selectPpUserWhistleBlowingList(ppUserWhistleBlowing);
        ppUserWhistleBlowingList.stream().forEach(bolw -> {
            List<PpFiles> ppFiles = ppFilesMapper.selectPpFilesByFileIdAndFileSourceAll(bolw.getId(), FileSource.BLOWING.getValue());
            bolw.setReportImages(ppFiles);
        });
        return ppUserWhistleBlowingList;
    }

    /**
     * 新增用户举报
     *
     * @param ppUserWhistleBlowing 用户举报
     * @return 结果
     */
    @Override
    public int insertPpUserWhistleBlowing(PpUserWhistleBlowing ppUserWhistleBlowing) {
        ppUserWhistleBlowing.setCreateTime(DateUtils.getNowDate());
        ppUserWhistleBlowing.setUserId(ShiroUtils.getAppUserId());
        int result = ppUserWhistleBlowingMapper.insertPpUserWhistleBlowing(ppUserWhistleBlowing);
        if (StringUtils.isNotBlank(ppUserWhistleBlowing.getReportImage())) {
            String[] images = ppUserWhistleBlowing.getReportImage().split(",");
            for (int i = 0; i < images.length; i++) {
                PpFiles ppFiles = new PpFiles();
                ppFiles.setFileId(ppUserWhistleBlowing.getId());
                ppFiles.setFileSource(FileSource.BLOWING.getValue());
                ppFiles.setFileType(1);
                ppFiles.setFileUrl(images[i]);
            }
        }

        return result;
    }

    /**
     * 修改用户举报
     *
     * @param ppUserWhistleBlowing 用户举报
     * @return 结果
     */
    @Override
    public int updatePpUserWhistleBlowing(PpUserWhistleBlowing ppUserWhistleBlowing) {
        ppUserWhistleBlowing.setUpdateTime(DateUtils.getNowDate());
        return ppUserWhistleBlowingMapper.updatePpUserWhistleBlowing(ppUserWhistleBlowing);
    }

    /**
     * 删除用户举报对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePpUserWhistleBlowingByIds(String ids) {
        return ppUserWhistleBlowingMapper.deletePpUserWhistleBlowingByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除用户举报信息
     *
     * @param id 用户举报ID
     * @return 结果
     */
    @Override
    public int deletePpUserWhistleBlowingById(Long id) {
        return ppUserWhistleBlowingMapper.deletePpUserWhistleBlowingById(id);
    }
}
