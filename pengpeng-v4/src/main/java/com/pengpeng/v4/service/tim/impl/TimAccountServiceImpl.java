package com.pengpeng.v4.service.tim.impl;

import com.pengpeng.v4.pojo.chatim.ProfileItem;
import com.pengpeng.v4.pojo.chatim.ReturnInformation;
import com.pengpeng.v4.pojo.chatim.TimAccount;
import com.pengpeng.v4.pojo.chatim.TimException;
import com.pengpeng.v4.service.tim.TimAccountService;
import com.pengpeng.v4.utils.HttpClientToInterface;
import com.pengpeng.v4.utils.JsonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2020/1/2 10:29
 */

@Service
public class TimAccountServiceImpl implements TimAccountService {


    /**
     * 账号导入接口 该接口的功能是在云通信 IM 创建一个内部 ID，使没有登录云通信 IM 的 App 自有帐号能够使用云通信 IM 服务
     *
     * @param account
     */
    @Override
    public void singleImport(TimAccount account) throws TimException {
        String api = "v4/im_open_login_svc/account_import";
        HttpClientToInterface.post(api,account);
    }

    /**
     * 设置资料信息
     *
     * @param fromAccount
     * @param profileItems
     */
    @Override
    public ReturnInformation setTimUser(String fromAccount, List<ProfileItem> profileItems) {
        String api = "v4/profile/portrait_set";
        Map<String, Object> body = new HashMap<>();
        body.put("From_Account",fromAccount);
        body.put("ProfileItem",profileItems);
       return JsonUtils.fromJson(HttpClientToInterface.post(api, body), ReturnInformation.class);
    }
}
