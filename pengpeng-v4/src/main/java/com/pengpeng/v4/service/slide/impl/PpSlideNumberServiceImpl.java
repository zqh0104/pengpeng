package com.pengpeng.v4.service.slide.impl;

import java.util.List;

import com.pengpeng.common.core.text.Convert;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.mapper.slide.PpSlideNumberMapper;
import com.pengpeng.v4.mapper.sysset.SysSetMapper;
import com.pengpeng.v4.pojo.slide.PpSlideNumber;
import com.pengpeng.v4.pojo.sysset.SysSet;
import com.pengpeng.v4.service.slide.IPpSlideNumberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 用户滑动记录Service业务层处理
 *
 * @author ruoyi
 * @date 2019-12-10
 */
@SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
@Service
public class PpSlideNumberServiceImpl implements IPpSlideNumberService {
    @Autowired
    private PpSlideNumberMapper ppSlideNumberMapper;

    @Autowired
    private SysSetMapper sysSetMapper;

    /**
     * 查询用户滑动记录
     *
     * @param id 用户滑动记录ID
     * @return 用户滑动记录
     */
    @Override
    public PpSlideNumber selectPpSlideNumberById(Long id) {
        return ppSlideNumberMapper.selectPpSlideNumberById(id);
    }

    /**
     * 查询用户滑动记录列表
     *
     * @param ppSlideNumber 用户滑动记录
     * @return 用户滑动记录
     */
    @Override
    public List<PpSlideNumber> selectPpSlideNumberList(PpSlideNumber ppSlideNumber) {
        return ppSlideNumberMapper.selectPpSlideNumberList(ppSlideNumber);
    }

    /**
     * 新增用户滑动记录
     *
     * @param ppSlideNumber 用户滑动记录
     * @return 结果
     */
    @Override
    public int insertPpSlideNumber(PpSlideNumber ppSlideNumber) {
        return ppSlideNumberMapper.insertPpSlideNumber(ppSlideNumber);
    }

    /**
     * 修改用户滑动记录
     *
     * @param ppSlideNumber 用户滑动记录
     * @return 结果
     */
    @Override
    public int updatePpSlideNumber(PpSlideNumber ppSlideNumber) {
        return ppSlideNumberMapper.updatePpSlideNumber(ppSlideNumber);
    }

    /**
     * 删除用户滑动记录对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePpSlideNumberByIds(String ids) {
        return ppSlideNumberMapper.deletePpSlideNumberByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除用户滑动记录信息
     *
     * @param id 用户滑动记录ID
     * @return 结果
     */
    @Override
    public int deletePpSlideNumberById(Long id) {
        return ppSlideNumberMapper.deletePpSlideNumberById(id);
    }

    /**
     * 获取用户的当前滑动次数
     *
     * @param userId
     */
    @Override
    public PpSlideNumber selectUserById(Long userId) {
        PpSlideNumber ppSlideNumber = ppSlideNumberMapper.selectUserById(userId);
        return ppSlideNumber;
    }

    /**
     * 分享添加滑动次数
     */
    @Override
    public int shareAddNum() {
        SysSet sysSet = sysSetMapper.selectSet();
        PpSlideNumber ppSlideNumber = ppSlideNumberMapper.selectUserById(ShiroUtils.getAppUserId());
        ppSlideNumber.setMaximumSlideNumber(ppSlideNumber.getMaximumSlideNumber() + sysSet.getShareNum());
        return ppSlideNumberMapper.updatePpSlideNumber(ppSlideNumber);
    }
}
