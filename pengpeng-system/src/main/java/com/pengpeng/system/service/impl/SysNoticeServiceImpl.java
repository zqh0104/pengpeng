package com.pengpeng.system.service.impl;

import com.pengpeng.common.core.text.Convert;
import com.pengpeng.system.domain.SysNotice;
import com.pengpeng.system.domain.SysUser;
import com.pengpeng.system.mapper.SysNoticeMapper;
import com.pengpeng.system.mapper.SysUserMapper;
import com.pengpeng.system.service.ISysNoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 公告 服务层实现
 *
 * @author pengpeng
 * @date 2018-06-25
 */
@Service
public class SysNoticeServiceImpl implements ISysNoticeService {
    @Autowired
    private SysNoticeMapper noticeMapper;

    @Autowired
    private SysUserMapper userMapper;

    @Autowired
    private RedisTemplate redisTemplate;

    @Autowired
    private ThreadPoolTaskExecutor threadPoolTaskExecutor;

    @Override
    public SysNotice selectNoticeById(Long noticeId) {
        //修改点击人数
       // noticeMapper.addRecord(noticeId);
        return noticeMapper.selectNoticeById(noticeId);
    }

    @Override
    public List<SysNotice> selectNoticeList(SysNotice notice) {
        return noticeMapper.selectNoticeList(notice);
    }





    /**
     * 查询公告列表
     *
     * @param notice 公告信息
     * @return 公告集合
     */


    /**
     * 新增公告
     *
     * @param notice 公告信息
     * @return 结果
     */
    @Override
    public int insertNotice(SysNotice notice) {
        List<SysUser> sysUsers = userMapper.selectSysUsetList();
        //  添加公告
        noticeMapper.insertNotice(notice);
        Map<String, String> params = new HashMap<>();
        params.put("title", "系统公告");
        //设置提示信息,内容是文章标题
        params.put("msg", notice.getNoticeTitle());
        params.put("pushType", "all");
        params.put("url","/pages/msg/msg");
        redisTemplate.convertAndSend("pushIdentificationMessage", params);
        return 1;
    }

    /**
     * 修改公告
     *
     * @param notice 公告信息
     * @return 结果
     */
    @Override
    public int updateNotice(SysNotice notice) {
        return noticeMapper.updateNotice(notice);
    }

    /**
     * 删除公告对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteNoticeByIds(String ids) {
        return noticeMapper.deleteNoticeByIds(Convert.toStrArray(ids));
    }

    /**
     * 公告状态修改
     *
     * @param notice 角色信息
     * @return 结果
     */
    @Override
    public int changeStatus(SysNotice notice) {
        return noticeMapper.updateNotice(notice);
    }

    /**
     * 系统通知
     */
    @Override
    public List<SysNotice> selectAnnouncement() {
        return noticeMapper.selectAnnouncement();
    }
}
