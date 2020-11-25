package com.pengpeng.v4.service.sysnotice;

import com.pengpeng.system.domain.SysNotice;

import java.util.List;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2020/1/13 16:42
 */
public interface ApiNoticeService {

    /**
     * 系统通知
     */
    List<SysNotice> selectAnnouncement();

    /**
     * 看过
     */
    void look(Long id);
}
