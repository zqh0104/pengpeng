package com.pengpeng.v4.service.invite.impl;

import java.util.List;

import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.text.Convert;
import com.pengpeng.v4.mapper.invite.PpInviteMapper;
import com.pengpeng.v4.mapper.member.PpMemberMapper;
import com.pengpeng.v4.mapper.slide.PpSlideNumberMapper;
import com.pengpeng.v4.mapper.sysset.SysSetMapper;
import com.pengpeng.v4.pojo.invite.PpInvite;
import com.pengpeng.v4.pojo.member.PpMember;
import com.pengpeng.v4.pojo.slide.PpSlideNumber;
import com.pengpeng.v4.pojo.sysset.SysSet;
import com.pengpeng.v4.service.invite.IPpInviteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Service;

/**
 * 用户邀请关系Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
@Service
public class PpInviteServiceImpl implements IPpInviteService
{
    @Autowired
    private PpInviteMapper ppInviteMapper;

    @Autowired
    private PpMemberMapper ppMemberMapper;

    @Autowired
    private PpSlideNumberMapper ppSlideNumberMapper;

    @Autowired
    private SysSetMapper sysSetMapper;

    @Autowired
    private ThreadPoolTaskExecutor threadPoolTaskExecutor;

    /**
     * 查询用户邀请关系
     * 
     * @param id 用户邀请关系ID
     * @return 用户邀请关系
     */
    @Override
    public PpInvite selectPpInviteById(Long id)
    {
        return ppInviteMapper.selectPpInviteById(id);
    }

    /**
     * 查询用户邀请关系列表
     * 
     * @param ppInvite 用户邀请关系
     * @return 用户邀请关系
     */
    @Override
    public List<PpInvite> selectPpInviteList(PpInvite ppInvite)
    {
        return ppInviteMapper.selectPpInviteList(ppInvite);
    }

    /**
     * 新增用户邀请关系
     * 
     * @param ppInvite 用户邀请关系
     * @return 结果
     */
    @Override
    public int insertPpInvite(PpInvite ppInvite)
    {
        return ppInviteMapper.insertPpInvite(ppInvite);
    }

    /**
     * 修改用户邀请关系
     * 
     * @param ppInvite 用户邀请关系
     * @return 结果
     */
    @Override
    public int updatePpInvite(PpInvite ppInvite)
    {
        return ppInviteMapper.updatePpInvite(ppInvite);
    }

    /**
     * 删除用户邀请关系对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePpInviteByIds(String ids)
    {
        return ppInviteMapper.deletePpInviteByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除用户邀请关系信息
     * 
     * @param id 用户邀请关系ID
     * @return 结果
     */
    @Override
    public int deletePpInviteById(Long id) {
        return ppInviteMapper.deletePpInviteById(id);
    }

    /**
     * 删除用户关系信息删除 把父类删除
     *
     * @param id
     */
    @Override
    public int deleteId(Long id) {
        //先获取用户的信息 对应的信息
        PpInvite ppInvite = ppInviteMapper.selectPpInviteById(id);
        //获取被邀请人信息
        Long byUserId = ppInvite.getByUserId();
        //修改被邀请人的信息
        PpMember ppMember = ppMemberMapper.selectPpMemberById(byUserId);
        ppMember.setParentId((long)0);
        ppMemberMapper.updatePpMember(ppMember);
        //修改滑动次数

        return 0;
    }

    /**
     * 后台管理 添加邀请关系
     *
     * @param ppInvite
     */
    @Override
    public int manageInsertPpInvite(PpInvite ppInvite) {

        //邀请滑动次数 绑定滑动次数
        SysSet sysSet = sysSetMapper.selectId(1);
        //邀请关系赠送
        Integer inviteFreeNum = sysSet.getInviteFreeNum();
        //绑定关系赠送
        Integer bindingFreeNum = sysSet.getBindingFreeNum();


        //获取邀请人id
        Long userId = ppInvite.getUserId();
        PpSlideNumber userSlide = ppSlideNumberMapper.selectUserById(userId);
        //获取被邀请人id
        Long byUserId = ppInvite.getByUserId();
        PpSlideNumber byUserSilde = ppSlideNumberMapper.selectUserById(userId);

        //修改滑动次数 修改邀请人的滑动次数
        threadPoolTaskExecutor.execute(() -> {
            //获取最大滑动次数
            Integer sum = inviteFreeNum;
            Long maximumSlideNumber = userSlide.getMaximumSlideNumber();
            if (maximumSlideNumber == null) {
                sum = maximumSlideNumber.intValue();
            } else {
                sum += maximumSlideNumber.intValue() + inviteFreeNum;
            }
            ppSlideNumberMapper.updateSlideNumber(userId, sum.longValue());
        });

        //修改滑动次数 修改被邀请人的
        threadPoolTaskExecutor.execute(() -> {
            //获取最大滑动次数
            Integer sum = bindingFreeNum;
            Long maximumSlideNumber = byUserSilde.getMaximumSlideNumber();
            if (maximumSlideNumber == null) {
                sum = maximumSlideNumber.intValue();
            } else {
                sum += maximumSlideNumber.intValue() + bindingFreeNum;
            }
            ppSlideNumberMapper.updateSlideNumber(byUserId, sum.longValue());
        });

        //添加邀请记录
        int i = ppInviteMapper.insertPpInvite(ppInvite);
        return i;
    }

    /**
     * 后台管理 修改邀请关系
     *
     * @param ppInvite
     */
    @Override
    public int manageUpdatePpInvite(PpInvite ppInvite) {
        
        //邀请滑动次数 绑定滑动次数
        SysSet sysSet = sysSetMapper.selectId(1);
        //邀请关系赠送
        Integer inviteFreeNum = sysSet.getInviteFreeNum();
        //绑定关系赠送
        Integer bindingFreeNum = sysSet.getBindingFreeNum();
        
        
        //获取到之前的邀请关系信息
        PpInvite before = ppInviteMapper.selectPpInviteById(ppInvite.getId());
        //原先的邀请人
        Long beforeUserId = before.getUserId();
        PpSlideNumber beforeUserSilde = ppSlideNumberMapper.selectUserById(beforeUserId);
        //原先的被邀请人
        Long beforeByUserId = before.getByUserId();
        PpSlideNumber beforeByUserIdSlide = ppSlideNumberMapper.selectUserById(beforeByUserId);
        
        //获取现在的邀请人的最大滑动次数
        PpSlideNumber newUserSlideNumber = ppSlideNumberMapper.selectUserById(ppInvite.getUserId());
        PpSlideNumber newByUserSlideNumber = ppSlideNumberMapper.selectUserById(ppInvite.getByUserId());

        //修改原先被邀请人的父类
        PpMember beforeUser = ppMemberMapper.selectPpMemberById(beforeByUserId);
        //现在的
        PpMember newUser = ppMemberMapper.selectPpMemberById(ppInvite.getByUserId());

        //判断邀请人和原先的一致
        if (beforeUserId.equals(ppInvite.getUserId())==false){
            //获取最大滑动次数
            beforeUserSilde.setMaximumSlideNumber(beforeUserSilde.getMaximumSlideNumber()-inviteFreeNum);
            ppSlideNumberMapper.updatePpSlideNumber(beforeUserSilde);
            newUserSlideNumber.setMaximumSlideNumber(newUserSlideNumber.getMaximumSlideNumber() + inviteFreeNum);
            ppSlideNumberMapper.updatePpSlideNumber(newUserSlideNumber);
        }

        //判断被邀请人和之前的是否为同一个
        if (beforeByUserId.equals(ppInvite.getByUserId())==false){

            //获取最大滑动次数
            beforeByUserIdSlide.setMaximumSlideNumber(beforeByUserIdSlide.getMaximumSlideNumber()-bindingFreeNum);
            ppSlideNumberMapper.updatePpSlideNumber(beforeByUserIdSlide);
            newByUserSlideNumber.setMaximumSlideNumber(newByUserSlideNumber.getMaximumSlideNumber() + bindingFreeNum);
            ppSlideNumberMapper.updatePpSlideNumber(newByUserSlideNumber);

        }

        //被邀请人修改
        if (beforeByUserId.equals(ppInvite.getByUserId())){
            System.out.println(beforeByUserId);
            System.out.println(ppInvite.getByUserId());
            //被邀请人没有修改,邀请人修改时
            beforeUser.setParentId(ppInvite.getUserId());
            ppMemberMapper.updatePpMember(beforeUser);
        }else {
            //之前用户的父类变成0
            beforeUser.setParentId((long) 0);
            ppMemberMapper.updatePpMember(beforeUser);
            //修改现在的
            newUser.setParentId(ppInvite.getUserId());
            ppMemberMapper.updatePpMember(newUser);
        }

        //修改
        int i = ppInviteMapper.updatePpInvite(ppInvite);
        return i;
    }

    /**
     * 删除
     *
     * @param id
     */
    @Override
    public int manageInviteById(Long id) {
        //获取信息
        PpInvite ppInvite = ppInviteMapper.selectPpInviteById(id);

        //邀请滑动次数 绑定滑动次数
        SysSet sysSet = sysSetMapper.selectId(1);
        //邀请关系赠送
        Integer inviteFreeNum = sysSet.getInviteFreeNum();
        //绑定关系赠送
        Integer bindingFreeNum = sysSet.getBindingFreeNum();


        //获取邀请人id
        Long userId = ppInvite.getUserId();
        PpSlideNumber userSlide = ppSlideNumberMapper.selectUserById(userId);
        //获取被邀请人id
        Long byUserId = ppInvite.getByUserId();
        PpSlideNumber byUserSilde = ppSlideNumberMapper.selectUserById(userId);

        //修改滑动次数 修改邀请人的滑动次数
        threadPoolTaskExecutor.execute(() -> {

            userSlide.setMaximumSlideNumber(userSlide.getMaximumSlideNumber()-inviteFreeNum);
            ppSlideNumberMapper.updatePpSlideNumber(userSlide);
        });

        //修改滑动次数 修改被邀请人的
        threadPoolTaskExecutor.execute(() -> {
            byUserSilde.setMaximumSlideNumber(byUserSilde.getMaximumSlideNumber() - bindingFreeNum);
            ppSlideNumberMapper.updatePpSlideNumber(byUserSilde);
        });

        //删除邀请记录
        int i = ppInviteMapper.deletePpInviteById(id);
        return i;
    }
}
