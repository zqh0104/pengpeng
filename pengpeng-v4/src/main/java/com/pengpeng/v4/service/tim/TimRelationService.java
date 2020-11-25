package com.pengpeng.v4.service.tim;

import com.pengpeng.v4.pojo.chatim.*;

import java.util.List;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2020/1/2 16:10
 * 关系链管理 好友信息管理
 */
public interface TimRelationService {

    /**
     * 添加好友 添加好友，支持批量添加好友。
     * @param identifier   需要添加好友的
     * @param friends      被添加的
     * @return
     * @throws TimException
     *
     *   双向添加好友
     */
    AddRelationVo addFriends(String identifier,List<String> friends,String source, AddFriendTypeEnum addFriendTypeEnum) throws TimException;

    /**
     * 导入好友
     */
    AddRelationVo importFriends(String identifier,List<TimFriend> friends) throws TimException;

    /**
     * 更新好友
     */
    UpdateFriendsVo updateFriends(String identifier, List<UpdateItem> updateItems) throws TimException;

    /**
     * 删除好友 DeleteFriendTypeEnum deleteType为null双向删除好友
     */
    DeleteFriendsVo deleteFriend(String identifier,List<String> friends, DeleteFriendTypeEnum deleteType) throws TimException;

    /**
     * 拉取好友资料
     */
    FriendInformationResponse friendInformation(List<String> toAccount,List<TagList> tagLists);

    /**
     * 拉黑用户(屏蔽用户)
     */
    AddBlockAccountsResult addBlockAccounts(String identifier,List<String> accounts);

    /**
     * 删除拉黑关系
     */
    AddBlockAccountsResult deleteBlockAccounts(String identifier,List<String> accounts);

    /**
     * 自定义消息 用于发送礼物信息给被赠送者
     * fromAccount 消息发送方
     * toAccount  消息接收方 Identifier
     * MsgRandom 消息随机数
     */
    CustomMessageResult customMessage(String fromAccount,String toAccount,Integer msgRandom,MsgBody msgBody);






}
