package com.pengpeng.v4.controller.chat;

import com.pengpeng.common.annotation.Log;
import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.utils.randomUsername.randomUsernameUtil;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.pojo.chatim.*;
import com.pengpeng.v4.pojo.gift.PpGiftRecord;
import com.pengpeng.v4.pojo.member.PpMember;
import com.pengpeng.v4.service.like.IPpUserFocusService;
import com.pengpeng.v4.service.member.IPpMemberService;
import com.pengpeng.v4.service.sysset.SysSetService;
import com.pengpeng.v4.service.tim.TimAccountService;
import com.pengpeng.v4.service.tim.TimRelationService;
import com.pengpeng.v4.utils.HttpClientToInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2019/12/20 11:25
 *
 * im的回调
 */
@SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
@Controller
@RequestMapping("/api/txim/callback")
public class TxCallBackController extends BaseController {

    @Autowired
    private IPpMemberService ppMemberService;

    @Autowired
    private SysSetService sysSetService;

    @Autowired
    private TimAccountService timAccountService;

    @Autowired
    private TimRelationService timRelationService;

    @Autowired
    private IPpUserFocusService ppUserFocusService;

    /**
     * 单个账户导入到im 用管理员账户导入
     */
    @PostMapping("/SingleImport")
    @ResponseBody
    public AjaxResult SingleImport(){
        //获取管理者信息
        PpMember ppMember = ppMemberService.selectPpMemberById(ShiroUtils.getAppUserId());
        TimAccount timAccount = new TimAccount();
        timAccount.setIdentifier(ppMember.getId().toString());
        timAccount.setNick(ppMember.getNickname());
        timAccount.setFaceUrl(ppMember.getHeadUrl());
        timAccount.setType(0);
        timAccountService.singleImport(timAccount);
        return AjaxResult.success("成功");
    }

    //添加好友
    @PostMapping("/addFriends")
    @ResponseBody
    public AjaxResult addFriends(){
        AddRelationVo addRelationVo = timRelationService.addFriends("95",Arrays.asList("76"),"web",null);
        return AjaxResult.success(addRelationVo);
    }

    /**
     * 导入好友列表
     */
    @PostMapping("/addFriendsList")
    @ResponseBody
    public AjaxResult addFriendsList(){
        TimFriend timFriend = new TimFriend();
        AddRelationVo addRelationVo = timRelationService.importFriends("76", Arrays.asList());
        return AjaxResult.success(addRelationVo);
    }

    //删除好友
    @PostMapping("/deleteFriend")
    @ResponseBody
    public AjaxResult deleteFriend(){
        DeleteFriendsVo result = timRelationService.deleteFriend(ShiroUtils.getAppUserId().toString(), Arrays.asList("76"),null);
        return AjaxResult.success(result);
    }

    /**
     * 拉取好友资料 friendInformation
     */
    /*@PostMapping("/friendInformation")
    @ResponseBody
    public AjaxResult friendInformation(){
        List<String> toAccount =new ArrayList<>();
        List<TagList> tagLists =new ArrayList<>();
        TagList tagList = new TagList();
        //获取当前好友的信息
        List<PpMember> ppMembers = ppUserFocusService.friendList();
        for (PpMember ppMember : ppMembers) {
            toAccount.add(ppMember.getId().toString());
            tagList.setNick(ppMember.getNickname());
            tagList.setImage(ppMember.getHeadUrl());
            if (ppMember.getIsvip() == 1){
                tagList.setLecel("1");
            }
            tagLists.add(tagList);
        }
        FriendInformationResponse friendInformationResponse = timRelationService.friendInformation(toAccount,tagLists);
        return AjaxResult.success(friendInformationResponse);
    }*/

    /**
     * 设置tim设置的信息
     */
    @PostMapping("/setTimUser")
    @ResponseBody
    public AjaxResult setTimUser(){
        List<ProfileItem> profileItems =new ArrayList<>();
        Long userId =ShiroUtils.getAppUserId();
        //获取用户信息
        PpMember ppMember = ppMemberService.selectPpMemberById(userId);
        ProfileItem nickname = new ProfileItem("Tag_Profile_IM_Nick",ppMember.getNickname());
        ProfileItem headurl = new ProfileItem("Tag_Profile_IM_Image",ppMember.getHeadUrl());
        if (ppMember.getIsvip()==1){
            ProfileItem vip = new ProfileItem("Tag_Profile_IM_Level",ppMember.getIsvip().toString());
            profileItems.add(vip);
        }
        profileItems.add(nickname);
        profileItems.add(headurl);
        ReturnInformation returnInformation = timAccountService.setTimUser(userId.toString(),profileItems);
        return AjaxResult.success(returnInformation);
    }

    /**
     * 添加拉黑
     */
    @PostMapping("/addBlockAccounts")
    @ResponseBody
    public AjaxResult addBlockAccounts(Long defriendUserId){
        AddBlockAccountsResult addBlockAccountsResult = timRelationService.addBlockAccounts(ShiroUtils.getAppUserId().toString(),Arrays.asList(defriendUserId.toString()));
        return AjaxResult.success(addBlockAccountsResult);
    }

    /**
     * 删除拉黑
     */
    @PostMapping("/deleteBlockAccounts")
    @ResponseBody
    public AjaxResult deleteBlockAccounts(Long defriendUserId){
        AddBlockAccountsResult blockAccountsResult = timRelationService.deleteBlockAccounts(ShiroUtils.getAppUserId().toString(),Arrays.asList(defriendUserId.toString()));
        return AjaxResult.success(blockAccountsResult);
    }

    /**
     * 自定义消息发送
     */
    @PostMapping("/customMessage")
    @ResponseBody
    public AjaxResult customMessage(PpGiftRecord ppGiftRecord){

        //礼物赠送者
        String fromAccount = ShiroUtils.getAppUserId().toString();
        //礼物被赠送者的tim账号
        String toAccount = ppGiftRecord.getByUserId().toString();
        //随机数
        int msgRandom = randomUsernameUtil.getRadomInt(0,429496729);
        //自定义消息中的消息元素
        MsgContent msgContent= new MsgContent();
        msgContent.setTimData("赠送礼物");
        msgContent.setDesc("礼物数量");
        //消息类型
        MsgBody msgBody =new MsgBody("TIMCustomElem",msgContent);
        CustomMessageResult customMessageResult = timRelationService.customMessage(fromAccount, toAccount, msgRandom, msgBody);
        return AjaxResult.success(customMessageResult);
    }



}
