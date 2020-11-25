package com.pengpeng.v4.service.like.impl;

import com.pengpeng.common.core.text.Convert;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.mapper.like.PpUserFocusMapper;
import com.pengpeng.v4.mapper.member.PpMemberMapper;
import com.pengpeng.v4.pojo.chatim.AddRelationVo;
import com.pengpeng.v4.pojo.chatim.DeleteFriendsVo;
import com.pengpeng.v4.pojo.like.PpUserFocus;
import com.pengpeng.v4.pojo.member.PpMember;
import com.pengpeng.v4.service.like.IPpUserFocusService;
import com.pengpeng.v4.service.member.IPpMemberService;
import com.pengpeng.v4.service.tim.TimRelationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import oshi.jna.platform.mac.SystemB;

import java.util.*;

/**
 * 用户喜欢Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
@Service
public class PpUserFocusServiceImpl implements IPpUserFocusService {
    @Autowired
    private PpUserFocusMapper ppUserFocusMapper;

    @Autowired
    private PpMemberMapper ppMemberMapper;

    @Autowired
    private TimRelationService timRelationService;

    @Autowired
    private RedisTemplate redisTemplate;

    @Autowired
    private IPpMemberService ppMemberService;
    /**
     * 查询用户喜欢
     * 
     * @param id 用户喜欢ID
     * @return 用户喜欢
     */
    @Override
    public PpUserFocus selectPpUserFocusById(Long id)
    {
        return ppUserFocusMapper.selectPpUserFocusById(id);
    }

    /**
     * 查询用户喜欢列表
     * 
     * @param ppUserFocus 用户喜欢
     * @return 用户喜欢
     */
    @Override
    public List<PpUserFocus> selectPpUserFocusList(PpUserFocus ppUserFocus)
    {
        return ppUserFocusMapper.selectPpUserFocusList(ppUserFocus);
    }

    /**
     * 新增用户喜欢
     * 
     * @param ppUserFocus 用户喜欢
     * @return 结果
     */
    @Override
    public int insertPpUserFocus(PpUserFocus ppUserFocus)
    {
        return ppUserFocusMapper.insertPpUserFocus(ppUserFocus);
    }

    /**
     * 修改用户喜欢
     * 
     * @param ppUserFocus 用户喜欢
     * @return 结果
     */
    @Override
    public int updatePpUserFocus(PpUserFocus ppUserFocus)
    {
        return ppUserFocusMapper.updatePpUserFocus(ppUserFocus);
    }

    /**
     * 删除用户喜欢对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePpUserFocusByIds(String ids)
    {
        return ppUserFocusMapper.deletePpUserFocusByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除用户喜欢信息
     * 
     * @param id 用户喜欢ID
     * @return 结果
     */
    @Override
    public int deletePpUserFocusById(Long id)
    {
        return ppUserFocusMapper.deletePpUserFocusById(id);
    }

    /**
     * 喜欢人数
     */
    @Override
    public Integer likeUser(Long useraId) {

        //先查询用户信息
        List<PpUserFocus> ppUserFoci = ppUserFocusMapper.selectUseraId(useraId);
        Integer sum=0;
        //便利
        for (PpUserFocus ppUserFocus : ppUserFoci) {
            Integer status = ppUserFocus.getStatus();

            //判断
            if (status==1){
                sum++;
            }

        }
        return sum;
    }

    /**
     * 被喜欢人数
     *
     * @return
     */
    @Override
    public Integer byLikeUser(Long useraId) {

        //先查询用户信息
        List<PpUserFocus> ppUserFoci = ppUserFocusMapper.selectUseraId(useraId);
        Integer sum=0;
        //便利
        for (PpUserFocus ppUserFocus : ppUserFoci) {
            Integer status = ppUserFocus.getStatus();
            //判断
            if (status==2){
                sum++;
            }
        }
        return sum;
    }

    /**
     * 被喜欢列表
     *
     * @param useraId
     */
    @Override
    public List<PpMember> othersLike(Long useraId) {

        List<PpMember> list=new ArrayList<>();

        //获取用户信息
        PpMember ppMember = ppMemberMapper.selectPpMemberById(useraId);

        //先查询用户信息
        List<PpUserFocus> ppUserFoci = ppUserFocusMapper.selectUseraId(useraId);
        System.out.println(ppUserFoci.size());
        //便利
        for (PpUserFocus ppUserFocus : ppUserFoci) {
            //获取状态
            Integer status = ppUserFocus.getStatus();
            //判断
            if (status==2){
                PpMember ppMemberLike = ppMemberMapper.selectFileUser(ppUserFocus.getUserbId());
                //活跃时间
                //判断用户是否开启
                if (ppMemberLike.getIsactive()==false){
                    Long aLong = ppMemberService.activeTime(ppMemberLike.getId());
                    ppMemberLike.setActiveTime(aLong.toString());
                }
                list.add(ppMemberLike);
            }
        }
        return list;
    }

    /**
     * 喜欢他人列表
     *
     * @param userId
     */
    @Override
    public List<PpMember> liveYou(Long userId) {
        List<PpMember> list=new ArrayList<>();

        //先查询用户信息
        List<PpUserFocus> ppUserFoci = ppUserFocusMapper.selectUseraId(userId);
        //便利
        for (PpUserFocus ppUserFocus : ppUserFoci) {
            //获取状态
            Integer status = ppUserFocus.getStatus();
            //判断
            if (status==1){
                //获取被喜欢的用户id
                Long userbId = ppUserFocus.getUserbId();
                PpMember ppMember = ppMemberMapper.selectFileUser(userbId);
                //活跃时间
                //判断用户是否开启
                if (ppMember.getIsactive()==false){
                    Long aLong = ppMemberService.activeTime(ppMember.getId());
                    ppMember.setActiveTime(aLong.toString());
                }
                list.add(ppMember);
            }

        }

        return list;
    }

    /**
     * 喜欢对方 互相喜欢
     *
     * @param useraId
     * @param userbid
     */
    @Override
    public void eachOther(Long useraId,Long userbid) {
        ppUserFocusMapper.eachOther(useraId,userbid);
    }

    /**
     * 取消喜欢
     *
     * @param useraId 为当前用户
     * @param userbid 他人
     */
    @Override
    public void cancelLike(Long useraId, Long userbid) {
        //获取用户状态
        PpUserFocus usera = ppUserFocusMapper.selectIds(useraId, userbid);
        PpUserFocus userb = ppUserFocusMapper.selectIds(userbid,useraId);

        //判断用户是否互相关注
        //3是互相喜欢 1为a喜欢b 2为b喜欢a
        if (usera.getStatus() ==3 && userb.getStatus()==3){
            //修改usera状态 修改为2
            ppUserFocusMapper.updateStatus(useraId,userbid,2);
            //修改b的状态 修改为1
            ppUserFocusMapper.updateStatus(userbid,useraId,1);

            //删除im好友关系
            DeleteFriendsVo result = timRelationService.deleteFriend(useraId.toString(), Arrays.asList(userbid.toString()),null);

        }else if (usera.getStatus() ==1 && userb.getStatus()==2){

            //删除信息
            ppUserFocusMapper.deletePpUserFocusById(usera.getId());
            ppUserFocusMapper.deletePpUserFocusById(userb.getId());
        }
    }

    /**
     * 喜欢对方
     *
     * @param useraId
     * @param userbid
     */
    @Override
    public void interestedUser(Long useraId, Long userbid) {

        if (userbid!=null){
            //先判断是否为空
            PpUserFocus usera = ppUserFocusMapper.selectIds(useraId,userbid);
            PpUserFocus userb = ppUserFocusMapper.selectIds(userbid,useraId);

            if (usera==null && userb==null){
                //添加
                ppUserFocusMapper.insertLike(useraId,userbid,1);
                ppUserFocusMapper.insertLike(userbid,useraId,2);
                this.pushCommendMessage(userbid);
            }else if (userb.getStatus()==1){
                //互相喜欢
                ppUserFocusMapper.eachOther(useraId,userbid);
                //添加到腾讯im好友关系
                System.out.println(userbid.toString());
                AddRelationVo addRelationVo = timRelationService.addFriends(useraId.toString(),Arrays.asList(userbid.toString()),"web",null);
                this.pushCommendMessage(userbid);
            }
        }
    }

    /**
     * 推送喜欢消息
     */
    public void pushCommendMessage(Long userbid) {
        Map<String, String> params = new HashMap<>();
        if (redisTemplate.hasKey("pp:member:push:"+userbid.toString())){
            String registerid = redisTemplate.opsForHash().get("pp:member:push:", userbid.toString()).toString();
            params.put("id", registerid);
            params.put("title", "有人喜欢你了");
            //设置提示信息,内容是文章标题
            params.put("msg", "有人喜欢你了");
            params.put("pushType", "pointToPoint");
            params.put("url","/pages/friend/msg-comment/msg-comment?swapperIndex=0");
            redisTemplate.convertAndSend("pushIdentificationMessage", params);
        }
    }

    /**
     * 好友列表
     */
    @Override
    public List<PpMember> friendList() {

        List<PpMember> list=new ArrayList<>();

        //先查询用户信息
        List<PpUserFocus> ppUserFoci = ppUserFocusMapper.selectUseraId(ShiroUtils.getAppUserId());
        //便利
        for (PpUserFocus ppUserFocus : ppUserFoci) {
            //获取状态
            Integer status = ppUserFocus.getStatus();
            //判断
            if (status==3){
                //获取被喜欢的用户id
                Long userbId = ppUserFocus.getUserbId();
                PpMember ppMember = ppMemberMapper.selectFileUser(userbId);
                //判断用户是否开启
                if (ppMember.getIsactive() ==false){
                    Long aLong = ppMemberService.activeTime(ppMember.getId());
                    ppMember.setActiveTime(aLong.toString());
                }
                list.add(ppMember);
            }
        }
        return list;
    }

    /**
     * 获取两者关系
     *
     * @param userId
     * @param otherId
     */
    @Override
    public PpUserFocus relation(Long userId, Long otherId) {
        PpUserFocus userFocus = ppUserFocusMapper.selectIds(userId,otherId);
        return userFocus;
    }

    /**
     * 获取两人状态和用户信息
     *
     * @param userId
     * @param otherId
     */
    @Override
    public PpUserFocus statusAndUser(Long userId, Long otherId) {
        return ppUserFocusMapper.statusAndUser(userId,otherId);
    }

    /**
     * 新粉丝
     *
     * @param useraId
     */
    @Override
    public List<PpMember> newFans(Long useraId) {
        List<PpMember> list=new ArrayList<>();

        //获取用户信息
        PpMember ppMember = ppMemberMapper.selectPpMemberById(useraId);

        //先查询用户信息
        List<PpUserFocus> ppUserFoci = ppUserFocusMapper.selectUseraId(useraId);
        System.out.println(ppUserFoci.size());
        //便利
        for (PpUserFocus ppUserFocus : ppUserFoci) {
            //获取状态
            Integer status = ppUserFocus.getStatus();
            //判断
            if (status==2){
                PpMember ppMemberLike = ppMemberMapper.selectFileUser(ppUserFocus.getUserbId());
                //活跃时间
                //判断用户是否开启
                if (ppMemberLike.getIsactive()==false){
                    Long aLong = ppMemberService.activeTime(ppMemberLike.getId());
                    ppMemberLike.setActiveTime(aLong.toString());
                }
                list.add(ppMemberLike);
            }
        }
        return list;
    }


}
