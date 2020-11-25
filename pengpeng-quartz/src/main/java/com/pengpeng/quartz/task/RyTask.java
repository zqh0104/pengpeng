package com.pengpeng.quartz.task;

import com.pengpeng.common.utils.StringUtils;
import com.pengpeng.v4.pojo.member.PpMember;
import com.pengpeng.v4.service.member.IPpMemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.List;

/**
 * 定时任务调度测试
 * 
 * @author pengpeng
 */
@Component("ryTask")
public class RyTask {

    @Autowired
    private IPpMemberService ppMemberService;

    public void ryMultipleParams(String s, Boolean b, Long l, Double d, Integer i)
    {
        System.out.println(StringUtils.format("执行多参方法： 字符串类型{}，布尔类型{}，长整型{}，浮点型{}，整形{}", s, b, l, d, i));
    }

    public void ryParams(String params)
    {
        System.out.println("执行有参方法：" + params);
    }

    public void ryNoParams()
    {
        System.out.println("执行无参方法");
    }

    /*
    public void memberTiming(){
        //调用需要定时清理的数据 获取所有用户的开通会员时间
        Date date=new Date();
        List<PpMember> ppMembers = ppMemberService.selectList();
        for (PpMember ppMember : ppMembers) {
            //判断用户是否为会员
            if (ppMember.getIsvip()==1){
                if (ppMember.getVipCloseTime().compareTo(date) != 1){
                    System.out.println(ppMember);
                    //修改会员标识
                    ppMember.setIsvip(0);
                    ppMemberService.update(ppMember);
                }
            }
        }
    }*/
}
