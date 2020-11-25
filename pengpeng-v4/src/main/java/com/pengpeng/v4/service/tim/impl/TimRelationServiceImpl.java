package com.pengpeng.v4.service.tim.impl;

import com.pengpeng.v4.pojo.chatim.*;
import com.pengpeng.v4.service.tim.TimRelationService;
import com.pengpeng.v4.utils.HttpClientToInterface;
import com.pengpeng.v4.utils.JsonUtils;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2020/1/2 17:36
 */

@Service
public class TimRelationServiceImpl implements TimRelationService {

    private final String ADD_SOURCE_TYPE_PREFIX = "AddSource_Type_";

    /**
     * 添加好友 添加好友，支持批量添加好友。
     *
     * @param identifier          需要添加好友的
     * @param friends             被添加的
     * @param addFriendTypeEnum
     * @return
     * @throws TimException 双向添加好友
     */
    @Override
    public AddRelationVo addFriends(String identifier,List<String> friends,String source, AddFriendTypeEnum addFriendTypeEnum) throws TimException {
        if (CollectionUtils.isEmpty(friends)) {
            throw new TimException(0,"friends 不能为空");
        }
        if (addFriendTypeEnum == null){
            addFriendTypeEnum = AddFriendTypeEnum.Add_Type_Both ;
        }

        String api = "v4/sns/friend_add";

        Map<String, Object> body = new HashMap<>();
        body.put("From_Account", identifier);
        body.put("AddType", addFriendTypeEnum.getInfo());

        List<AddFriendItem> list = new ArrayList<>();
        for (String friend : friends) {
            AddFriendItem item = new AddFriendItem(friend, ADD_SOURCE_TYPE_PREFIX + source ) ;
            list.add(item);
        }
        body.put("AddFriendItem",list);
        return JsonUtils.fromJson(HttpClientToInterface.post(api, body), AddRelationVo.class);

    }

    /**
     * 导入好友
     *
     * @param identifier
     * @param friends
     */
    @Override
    public AddRelationVo importFriends(String identifier, List<TimFriend> friends) throws TimException {
        String api = "v4/sns/friend_import";
        Map<String, Object> body = new HashMap<>();
        body.put("From_Account", identifier);
        body.put("AddFriendItem", friends);
        return JsonUtils.fromJson(HttpClientToInterface.post(api,body),AddRelationVo.class);

    }

    /**
     * 更新好友
     *
     * @param identifier
     * @param updateItems
     */
    @Override
    public UpdateFriendsVo updateFriends(String identifier, List<UpdateItem> updateItems) throws TimException {
        String api = "v4/sns/friend_update";

        if (CollectionUtils.isEmpty(updateItems)) {
            throw new RuntimeException("friends 不能为空");
        }
        Map<String, Object> body = new HashMap<>(2);

        body.put("From_Account", identifier);
        body.put("UpdateItem", updateItems);

        return JsonUtils.fromJson(HttpClientToInterface.post(api, body), UpdateFriendsVo.class);

    }

    /**
     * 删除好友 DeleteFriendTypeEnum deleteType为null双向删除好友
     *
     * @param identifier
     * @param friends
     * @param deleteType
     */
    @Override
    public DeleteFriendsVo deleteFriend(String identifier, List<String> friends, DeleteFriendTypeEnum deleteType) throws TimException {
        if (CollectionUtils.isEmpty(friends)) {
            throw new RuntimeException("friends can't be empty");
        }

        String api = "v4/sns/friend_delete";

        Map<String, Object> body = new HashMap<>();
        body.put("From_Account", identifier);
        body.put("To_Account", friends);

        if (deleteType == null) {
            deleteType = DeleteFriendTypeEnum.Delete_Type_Both;
        }

        body.put("DeleteType", deleteType.getInfo());

        return JsonUtils.fromJson(HttpClientToInterface.post(api, body), DeleteFriendsVo.class);
    }

    /**
     * 拉取好友资料
     */
    @Override
    public FriendInformationResponse friendInformation(List<String> toAccount,List<TagList> tagLists) {
        String api = "v4/profile/portrait_get";

        Map<String, Object> body = new HashMap<>();
        body.put("To_Account", toAccount);
        body.put("TagList",tagLists);

        return JsonUtils.fromJson(HttpClientToInterface.post(api,body), FriendInformationResponse.class);
    }

    /**
     * 拉黑用户(屏蔽用户)
     *
     * @param identifier
     * @param accounts
     */
    @Override
    public AddBlockAccountsResult addBlockAccounts(String identifier, List<String> accounts) {
        String api = "v4/sns/black_list_add";

        Map<String, Object> body = new HashMap<>();
        body.put("From_Account",identifier);
        body.put("To_Account",accounts);
        return JsonUtils.fromJson(HttpClientToInterface.post(api,body),AddBlockAccountsResult.class);

    }

    /**
     * 删除拉黑关系
     *
     * @param identifier
     * @param accounts
     */
    @Override
    public AddBlockAccountsResult deleteBlockAccounts(String identifier, List<String> accounts) {
        String api = "v4/sns/black_list_delete";
        Map<String, Object> body = new HashMap<>();
        body.put("From_Account",identifier);
        body.put("To_Account",accounts);
        return JsonUtils.fromJson(HttpClientToInterface.post(api,body),AddBlockAccountsResult.class);
    }

    /**
     * 自定义消息 用于发送礼物信息给被赠送者
     * fromAccount 消息发送方
     * toAccount  消息接收方 Identifier
     * MsgRandom 消息随机数
     *
     * @param fromAccount
     * @param toAccount
     * @param msgRandom
     */
    @Override
    public CustomMessageResult customMessage(String fromAccount, String toAccount, Integer msgRandom,MsgBody msgBody) {
        String api = "v4/openim/sendmsg";
        Map<String, Object> body = new HashMap<>();
        body.put("From_Account",fromAccount);
        body.put("To_Account",toAccount);
        body.put("MsgRandom",msgRandom);
        body.put("MsgBody",msgBody);
        return JsonUtils.fromJson(HttpClientToInterface.post(api,body),CustomMessageResult.class);
    }


}
