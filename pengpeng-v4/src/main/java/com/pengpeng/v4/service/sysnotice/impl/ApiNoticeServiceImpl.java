package com.pengpeng.v4.service.sysnotice.impl;

import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.system.domain.SysNotice;
import com.pengpeng.system.mapper.SysNoticeMapper;
import com.pengpeng.v4.service.sysnotice.ApiNoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2020/1/13 16:44
 */
@Service
public class ApiNoticeServiceImpl implements ApiNoticeService {

    @Autowired
    private RedisTemplate redisTemplate;

    @Autowired
    private SysNoticeMapper noticeMapper;

    /**
     * 系统通知
     */
    @Override
    public List<SysNotice> selectAnnouncement() {
        Long memberId = ShiroUtils.getAppUserId();
        List<SysNotice> noticeList = noticeMapper.selectAnnouncement();
        for (SysNotice sysNotice : noticeList) {
            //判断redis中是否有
            String key = "pp:official:comment:" + memberId+sysNotice.getNoticeId();
            if (!redisTemplate.hasKey(key)){
                sysNotice.setRead(false);
            }else {
                sysNotice.setRead(true);
            }
        }
        return noticeList;
    }

    /**
     * 看过
     *
     * @param id
     */
    @Override
    public void look(Long id) {
        //放入到redis中
        Long memberId = ShiroUtils.getAppUserId();
        String key = "pp:official:comment:" + memberId+id;
        //添加到redis中
        redisTemplate.opsForValue().set(key,true);
    }
}
