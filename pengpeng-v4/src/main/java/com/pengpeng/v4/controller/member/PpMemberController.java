package com.pengpeng.v4.controller.member;

import com.pengpeng.common.annotation.Log;
import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.page.TableDataInfo;
import com.pengpeng.common.enums.BusinessType;
import com.pengpeng.common.utils.poi.ExcelUtil;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.pojo.member.PpMember;
import com.pengpeng.v4.pojo.member.PpmemberDto;
import com.pengpeng.v4.service.member.IPpMemberService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.List;

/**
 * 用户Controller
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@Controller
@RequestMapping("/api/member")
public class PpMemberController extends BaseController
{
    private String prefix = "system/member";

    @Autowired
    private IPpMemberService ppMemberService;

    @RequiresPermissions("system:member:view")
    @GetMapping()
    public String member()
    {
        return prefix + "/mapper/member";
    }

    /**
     * 查询用户列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpMember ppMember)
    {
        startPage();
        List<PpMember> list = ppMemberService.selectPpMemberList(ppMember);
        for (PpMember member : list) {
            //获取用户当前
            Integer maturity = ppMemberService.isMember(ppMember.getId());
            ppMember.setMaturity(maturity);
        }
        return getDataTable(list);
    }

    /**
     * 导出用户列表
     */
    @RequiresPermissions("system:member:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PpMember ppMember)
    {
        List<PpMember> list = ppMemberService.selectPpMemberList(ppMember);
        ExcelUtil<PpMember> util = new ExcelUtil<PpMember>(PpMember.class);
        return util.exportExcel(list, "mapper/member");
    }


    /**
     * 新增保存用户
     */
    @Log(title = "用户", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(String phone,String password, String code)
    {
        return ppMemberService.insertPpMember(phone,password,code);
    }

    /**
     * 编辑用户资料 修改用户
     */
    @Log(title = "判断是否是会员")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        PpMember ppMember = ppMemberService.selectPpMemberById(id);
        mmap.put("ppMember", ppMember);
        return prefix + "/edit";
    }

    /**
     * 修改保存用户
     */
    @Log(title = "用户", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpMember ppMember)
    {
        ppMember.setId(ShiroUtils.getAppUserId());
        return toAjax(ppMemberService.updatePpMember(ppMember));
    }

    /**
     * 删除用户
     */
    @RequiresPermissions("system:member:remove")
    @Log(title = "用户", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ppMemberService.deletePpMemberByIds(ids));
    }

    /**
     * 用户开通会员
     */
    @Log(title = "用户开通会员")
    @PostMapping( "/dredgeMember")
    @ResponseBody
    public AjaxResult dredgeMember(Integer dredgeTime,String timeTpye,String orderNumber) {
        ppMemberService.dredgeMember(ShiroUtils.getAppUserId(),dredgeTime,timeTpye,orderNumber);
        return success("会员开通成功");
    }

    /**
     * 用户二维码
     */
    @Log(title = "用户邀请码")
    @GetMapping( "/invitationCode")
    @ResponseBody
    public AjaxResult invitationCode() {
        String s = ppMemberService.invitationCode(ShiroUtils.getAppUserId());
        return success(s);
    }

    /**
     * 绑定邀请接口
     * 被邀请人填写邀请码后 邀请人的可以获得对应的滑动次数
     */
    @Log(title = "绑定邀请接口")
    @PostMapping( "/invitationBinding")
    @ResponseBody
    public AjaxResult invitationBinding(String invitationCode) {


            //判断邀请码有对应的人
            PpMember ppMember = ppMemberService.selectInvitationUser(invitationCode);
            if (ppMember!=null){
                //调用方法
                ppMemberService.bindFriend(ShiroUtils.getAppUserId(),invitationCode);
                ppMemberService.invitationFriend(invitationCode);
                return success("添加成功");
            }else {
                return error("邀请码有误");
            }

    }

    /**
     * 判断是否是会员
     */
    @Log(title = "判断是否是会员")
    @GetMapping( "/isMember")
    @ResponseBody
    public AjaxResult isMember() {
        Integer member = ppMemberService.isMember(ShiroUtils.getAppUserId());
        return AjaxResult.success(member);
    }

    /**
     * 判断是否是会员
     */
    @Log(title = "判断他人是否是会员")
    @GetMapping( "/otherMember")
    @ResponseBody
    public AjaxResult otherMember(Long otherId) {
        Integer member = ppMemberService.isMember(otherId);
        return AjaxResult.success(member);
    }

    /**
     * 判断用户是否绑定邀请人
     */
    @Log(title = "判断用户是否绑定邀请人")
    @GetMapping( "/isInviter")
    @ResponseBody
    public AjaxResult isInviter() {
        PpMember inviter = ppMemberService.isInviter(ShiroUtils.getAppUserId());
        return AjaxResult.success(inviter);
    }

    /**
     * 用户余额
     */
    @Log(title = "用户余额 钻石")
    @GetMapping( "/userBalance")
    @ResponseBody
    public AjaxResult userBalance() {
        Integer integer = ppMemberService.selectBalance(ShiroUtils.getAppUserId());
        return AjaxResult.success(integer);
    }

    /**
     * 用户收益
     */
    @Log(title = "用户收益")
    @GetMapping( "/userEarnings")
    @ResponseBody
    public AjaxResult userEarnings() {
        BigDecimal bigDecimal = ppMemberService.selectEarnings(ShiroUtils.getAppUserId());
        return AjaxResult.success(bigDecimal);
    }

    /**
     * 获取用户信息
     */
    @Log(title = "获取用户信息 图片第一张为头像")
    @GetMapping("/compileUser")
    @ResponseBody
    public AjaxResult compileUser() {
        PpMember ppMember = ppMemberService.selectUserAndFiles(ShiroUtils.getAppUserId());
        return AjaxResult.success(ppMember);
    }

    /**
     * 编辑用户信息
     */
    @Log(title = "编辑用户信息 没有图片")
    @PostMapping("/updatecompileUser")
    @ResponseBody
    public AjaxResult updatecompileUser(PpMember ppMember) {
        ppMember.setId(ShiroUtils.getAppUserId());
        ppMemberService.updatePpMember(ppMember);
        return AjaxResult.success("编辑成功");
    }

    /**
     * 获取用户头像
     */
    @Log(title = "获取用户头像 HeadUrl为头像")
    @GetMapping("/headPortrait")
    @ResponseBody
    public AjaxResult headPortrait () {
        PpMember ppMember = ppMemberService.selectPpMemberById(ShiroUtils.getAppUserId());
        return AjaxResult.success(ppMember);
    }

    /**
     * 用户年龄
     */
    @Log(title = "获取用户头像 HeadUrl为头像")
    @GetMapping("/userAge")
    @ResponseBody
    public AjaxResult userAge (Long userId) {
        Integer integer = ppMemberService.userAge(userId);
        return AjaxResult.success(integer);
    }


    /**
     * 首页 用户推荐列表
     */
    @PostMapping("/indexMemberList")
    @ResponseBody
    public TableDataInfo indexMemberList(PpmemberDto ppmemberDto)
    {
//        startPage();
        List<PpMember> list = ppMemberService.selectIndexMemberList(ppmemberDto);
        return getDataTable(list);
    }

    /**
     * 获取他人的信息
     */
    @Log(title = "获取他人的信息")
    @GetMapping("/othersUser")
    @ResponseBody
    public AjaxResult othersUser(Long otherId) {
        PpMember ppMember = ppMemberService.selectUserAndFiles(otherId);
        return AjaxResult.success(ppMember);
    }

    /**
     * 活跃时间开关
     */
    @Log(title = "活跃时间开关")
    @PostMapping("/activeUser")
    @ResponseBody
    public AjaxResult activeUser(Boolean open) {
        PpMember ppMember = new PpMember();
        ppMember.setIsactive(open);
        ppMemberService.updatePpMember(ppMember);
        return AjaxResult.success("修改成功");
    }

    /**
     * 邀请码对应的人
     */
    @Log(title = "绑定邀请接口")
    @GetMapping( "/selectInvitationUser")
    @ResponseBody
    public AjaxResult selectInvitationUser(String invitationCode) {

        //判断邀请码有对应的人
        PpMember ppMember = ppMemberService.selectInvitationUser(invitationCode);
        if (ppMember!=null){
            return AjaxResult.success(ppMember);
        }else {
            return AjaxResult.success("邀请码有误");
        }

    }

    /**
     * 当前用户活跃时间
     */
    @Log(title = "当前用户活跃时间")
    @GetMapping( "/activeTime")
    @ResponseBody
    public AjaxResult activeTime() {
        Long aLong = ppMemberService.activeTime(ShiroUtils.getAppUserId());
        return AjaxResult.success(aLong);

    }

    /**
     * 他人活跃时间
     */
    @Log(title = "他人活跃时间")
    @GetMapping( "/otherActiveTime")
    @ResponseBody
    public AjaxResult otherActiveTime(Long otherId) {
        Long aLong = ppMemberService.activeTime(otherId);
        return AjaxResult.success(aLong);
    }

    /**
     * 获取两者之间的距离
     */
    @Log(title = "获取两者之间的距离")
    @GetMapping( "/distance")
    @ResponseBody
    public AjaxResult distance(Long otherId) {
        //判断邀请码有对应的人
        Double distance = ppMemberService.distance(otherId);
        return AjaxResult.success(distance);
    }

    /**
     * 在线好友
     */
    @Log(title = "在线好友")
    @GetMapping( "/onlineFriends")
    @ResponseBody
    public TableDataInfo onlineFriends() {
        startPage();
        List<PpMember> ppMembers = ppMemberService.onlineFriends();
        return getDataTable(ppMembers);
    }

}
