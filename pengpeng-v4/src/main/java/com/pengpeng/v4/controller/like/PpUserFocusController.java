package com.pengpeng.v4.controller.like;

import java.util.List;

import com.pengpeng.common.annotation.Log;
import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.page.TableDataInfo;
import com.pengpeng.common.enums.BusinessType;
import com.pengpeng.common.utils.poi.ExcelUtil;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.pojo.like.PpUserFocus;
import com.pengpeng.v4.pojo.member.PpMember;
import com.pengpeng.v4.service.like.IPpUserFocusService;
import com.pengpeng.v4.service.member.IPpMemberService;
import org.apache.ibatis.annotations.Param;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 用户喜欢Controller
 * 
 * @author ruoyi
 * @date 2019-12-10
 */
@Controller
@RequestMapping("/api/focus")
public class PpUserFocusController extends BaseController {
    private String prefix = "system/focus";

    @Autowired
    private IPpUserFocusService ppUserFocusService;

    @Autowired
    private IPpMemberService iPpMemberService;

    @Autowired
    private IPpMemberService ppMemberService;

    @RequiresPermissions("system:focus:view")
    @GetMapping()
    public String focus()
    {
        return prefix + "/focus";
    }

    /**
     * 查询用户喜欢列表
     */
    @RequiresPermissions("system:focus:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PpUserFocus ppUserFocus)
    {
        startPage();
        List<PpUserFocus> list = ppUserFocusService.selectPpUserFocusList(ppUserFocus);
        return getDataTable(list);
    }

    /**
     * 导出用户喜欢列表
     */
    @RequiresPermissions("system:focus:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PpUserFocus ppUserFocus)
    {
        List<PpUserFocus> list = ppUserFocusService.selectPpUserFocusList(ppUserFocus);
        ExcelUtil<PpUserFocus> util = new ExcelUtil<PpUserFocus>(PpUserFocus.class);
        return util.exportExcel(list, "focus");
    }

    /**
     * 新增用户喜欢
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存用户喜欢
     */
    @RequiresPermissions("system:focus:add")
    @Log(title = "用户喜欢", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PpUserFocus ppUserFocus)
    {
        return toAjax(ppUserFocusService.insertPpUserFocus(ppUserFocus));
    }

    /**
     * 修改用户喜欢
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        PpUserFocus ppUserFocus = ppUserFocusService.selectPpUserFocusById(id);
        mmap.put("ppUserFocus", ppUserFocus);
        return prefix + "/edit";
    }

    /**
     * 修改保存用户喜欢
     */
    @RequiresPermissions("system:focus:edit")
    @Log(title = "用户喜欢", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PpUserFocus ppUserFocus)
    {
        return toAjax(ppUserFocusService.updatePpUserFocus(ppUserFocus));
    }

    /**
     * 删除用户喜欢
     */
    @RequiresPermissions("system:focus:remove")
    @Log(title = "用户喜欢", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ppUserFocusService.deletePpUserFocusByIds(ids));
    }

    /**
     * 喜欢人数
     */
    @Log(title = "喜欢人数")
    @GetMapping( "/loveUser")
    @ResponseBody
    public AjaxResult loveUser() {
        return  success(ppUserFocusService.likeUser(ShiroUtils.getAppUserId())+"");
    }

    /**
     * 被喜欢人数
     */
    @Log(title = "被喜欢人数")
    @GetMapping( "/likeByUser")
    @ResponseBody
    public AjaxResult likeByUser() {
        return  success(ppUserFocusService.byLikeUser(ShiroUtils.getAppUserId())+"");
    }


    /**
     * 喜欢列表
     */
    @Log(title = "喜欢列表")
    @PostMapping( "/liveYou")
    @ResponseBody
    public TableDataInfo liveYou() {
        startPage();
        //获取用户信息
        PpMember ppMember = iPpMemberService.selectPpMemberById(ShiroUtils.getAppUserId());
        List<PpMember> ppMembers = ppUserFocusService.liveYou(ShiroUtils.getAppUserId());
        return getDataTable(ppMembers);
    }


    /**
     * 被喜欢列表
     */
    @Log(title = "被喜欢列表")
    @PostMapping( "/othersLike")
    @ResponseBody
    public TableDataInfo othersLike() {
        //获取用户信息
        List<PpMember> ppMembers = ppUserFocusService.othersLike(ShiroUtils.getAppUserId());
        return getDataTable(ppMembers);


    }

    /**
     *  对方已经关注 互相喜欢按钮
     */
    @Log(title = "喜欢按钮 互相喜欢")
    @PostMapping( "/eachOther")
    @ResponseBody
    public AjaxResult eachOther(Long userbid) {
        ppUserFocusService.eachOther(ShiroUtils.getAppUserId(),userbid);
        return success("喜欢成功");
    }


    /**
     * 取消喜欢按钮
     */
    @Log(title = "取消喜欢按钮")
    @PostMapping( "/cancelLike")
    @ResponseBody
    public AjaxResult cancelLike(Long userbid) {
        if (userbid!=null){
            ppUserFocusService.cancelLike(ShiroUtils.getAppUserId(),userbid);
            return success("取消成功");
        }else {
            return success("取消失败");
        }
    }

    /**
     * 喜欢接口 第一次喜欢时
     */
    @Log(title = "喜欢按钮 第一次喜欢")
    @PostMapping( "/likeUser")
    @ResponseBody
    public AjaxResult likeUser(Long userbid) {
        if (userbid!=null){
            ppUserFocusService.interestedUser(ShiroUtils.getAppUserId(),userbid);
            return success("添加成功");
        }else {
            return success("添加失败");
        }

    }

    /**
     * 好友人数
     */
    @Log(title = "好友人数")
    @PostMapping( "/friendList")
    @ResponseBody
    public TableDataInfo friendList() {
        startPage();
        List<PpMember> ppMembers = ppUserFocusService.friendList();
        for (PpMember member : ppMembers) {
            //获取用户当前
            Integer maturity = ppMemberService.isMember(member.getId());
            member.setMaturity(maturity);
        }
        return getDataTable(ppMembers);
    }

    /**
     * 获取用户状态
     */
    @Log(title = "获取两者之间的关系")
    @PostMapping( "/relation")
    @ResponseBody
    public AjaxResult relation(Long otherId) {
        PpUserFocus relation = ppUserFocusService.relation(ShiroUtils.getAppUserId(), otherId);
        //判断是否为null
        if (relation==null){
            return AjaxResult.success(0);
        }
        return AjaxResult.success(relation.getStatus());
    }

    /**
     * 互相喜欢时展示的信息
     */
    @Log(title = "互相喜欢时展示的信息")
    @GetMapping( "/mutualUserMessage")
    @ResponseBody
    public AjaxResult mutualUserMessage(Long otherId) {
        PpUserFocus relation = ppUserFocusService.relation(ShiroUtils.getAppUserId(), otherId);
        //判断是否为null
        if (relation.getStatus()==3){
            PpUserFocus userFocus = ppUserFocusService.statusAndUser(ShiroUtils.getAppUserId(),otherId);
            return AjaxResult.success(userFocus);
        }
        return AjaxResult.success(0);
    }

    /**
     * 新粉丝
     */
    @Log(title = "新粉丝")
    @GetMapping( "/newFans")
    @ResponseBody
    public TableDataInfo newFans() {
        //获取用户信息
        startPage();
        List<PpMember> ppMembers = ppUserFocusService.newFans(ShiroUtils.getAppUserId());
        return getDataTable(ppMembers);
    }

}
