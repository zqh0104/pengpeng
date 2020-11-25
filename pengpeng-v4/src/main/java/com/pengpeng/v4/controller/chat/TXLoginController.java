package com.pengpeng.v4.controller.chat;

import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.utils.TLSSigAPIv2;
import com.pengpeng.framework.util.ShiroUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2019/12/20 10:21
 *
 * 用户登录腾讯云
 */

@Controller
@RequestMapping("/api/txyim/login")
public class TXLoginController extends BaseController {

    /**
     * 生成用户的usersig
     */
    @PostMapping("/userChat")
    @ResponseBody
    public AjaxResult userChat() {

        //单位秒 默认7天
        long expire=604800;
        final String suid = ShiroUtils.getAppUserId().toString();
        TLSSigAPIv2 tlsSigAPIv2 = new TLSSigAPIv2();
        String sig = tlsSigAPIv2.genSig(suid, expire);
        return AjaxResult.success(suid,sig);

    }

    /**
     * 生成管理员的usersig
     */
    @PostMapping("/adminSig")
    @ResponseBody
    public AjaxResult adminSig() {
         final String admin = "administrator";
        //单位秒 默认7天
        long expire=604800;
        TLSSigAPIv2 tlsSigAPIv2 = new TLSSigAPIv2();
        String sig = tlsSigAPIv2.genSig(admin, expire);
        return AjaxResult.success(admin,sig);

    }


}
