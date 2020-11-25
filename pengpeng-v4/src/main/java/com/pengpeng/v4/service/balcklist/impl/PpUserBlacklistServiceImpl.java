package com.pengpeng.v4.service.balcklist.impl;


import com.pengpeng.common.core.text.Convert;
import com.pengpeng.common.utils.DateUtils;
import com.pengpeng.common.utils.ServletUtils;
import com.pengpeng.framework.util.JwtUtil;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.framework.util.common.Constant;
import com.pengpeng.v4.mapper.balcklist.PpUserBlacklistMapper;
import com.pengpeng.v4.mapper.member.PpMemberMapper;
import com.pengpeng.v4.pojo.balcklist.PpUserBlacklist;
import com.pengpeng.v4.pojo.member.PpMember;
import com.pengpeng.v4.service.balcklist.IPpUserBlacklistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 用户拉黑Service业务层处理
 *
 * @author ruoyi
 * @date 2019-12-10
 */
@Service
public class PpUserBlacklistServiceImpl implements IPpUserBlacklistService {
    @Autowired
    private PpUserBlacklistMapper ppUserBlacklistMapper;

    @Autowired
    private PpMemberMapper ppMemberMapper;

    /**
     * 查询用户拉黑
     *
     * @param id 用户拉黑ID
     * @return 用户拉黑
     */
    @Override
    public PpUserBlacklist selectPpUserBlacklistById(Long id) {
        return ppUserBlacklistMapper.selectPpUserBlacklistById(id);
    }

    /**
     * 查询用户拉黑列表
     *
     * @param ppUserBlacklist 用户拉黑
     * @return 用户拉黑
     */
    @Override
    public List<PpUserBlacklist> selectPpUserBlackList(PpUserBlacklist ppUserBlacklist) {
        ppUserBlacklist.setUserId(ShiroUtils.getAppUserId());
        List<PpUserBlacklist> ppUserBlacklists= ppUserBlacklistMapper.selectPpUserBlackList(ppUserBlacklist);
        ppUserBlacklists.stream().forEach(black->
            black.setDefriendHeadImage(black.getDefriendHeadImage().split(",")[0])
        );
        return ppUserBlacklists;
    }

    /**
     * 新增用户拉黑
     *
     * @param ppUserBlacklist 用户拉黑
     * @return 结果
     */
    @Override
    public int insertPpUserBlacklist(PpUserBlacklist ppUserBlacklist) {
        ppUserBlacklist.setCreateTime(DateUtils.getNowDate());
        PpMember ppMember = ppMemberMapper.selectPpMemberById(ShiroUtils.getAppUserId());
        ppUserBlacklist.setUserId(ppMember.getId());
        return ppUserBlacklistMapper.insertPpUserBlacklist(ppUserBlacklist);
    }

    /**
     * 修改用户拉黑
     *
     * @param ppUserBlacklist 用户拉黑
     * @return 结果
     */
    @Override
    public int updatePpUserBlacklist(PpUserBlacklist ppUserBlacklist) {
        ppUserBlacklist.setUpdateTime(DateUtils.getNowDate());
        return ppUserBlacklistMapper.updatePpUserBlacklist(ppUserBlacklist);
    }

    /**
     * 删除用户拉黑对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePpUserBlacklistByIds(String ids) {
        return ppUserBlacklistMapper.deletePpUserBlacklistByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除用户拉黑信息
     *
     * @param id 用户拉黑ID
     * @return 结果
     */
    @Override
    public int deletePpUserBlacklistById(Long id) {
        return ppUserBlacklistMapper.deletePpUserBlacklistById(id);
    }
}
