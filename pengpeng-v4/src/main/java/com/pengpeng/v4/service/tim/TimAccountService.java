package com.pengpeng.v4.service.tim;

import com.pengpeng.v4.pojo.chatim.ProfileItem;
import com.pengpeng.v4.pojo.chatim.ReturnInformation;
import com.pengpeng.v4.pojo.chatim.TimAccount;
import com.pengpeng.v4.pojo.chatim.TimException;

import java.util.List;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2020/1/2 10:19
 * tim用户账号管理
 */
public interface TimAccountService {

    /** 账号导入接口 该接口的功能是在云通信 IM 创建一个内部 ID，使没有登录云通信 IM 的 App 自有帐号能够使用云通信 IM 服务*/
    void singleImport(TimAccount account) throws TimException;

    /**
     * 设置资料信息
     */
    ReturnInformation setTimUser(String fromAccount,List<ProfileItem> profileItems);
}
