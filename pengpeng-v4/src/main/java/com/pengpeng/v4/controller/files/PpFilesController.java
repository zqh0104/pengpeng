package com.pengpeng.v4.controller.files;

import com.pengpeng.common.annotation.Log;
import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.page.TableDataInfo;
import com.pengpeng.common.enums.BusinessType;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.pojo.files.PpFiles;
import com.pengpeng.v4.pojo.gift.PpGift;
import com.pengpeng.v4.service.files.IPpFilesService;
import com.pengpeng.v4.service.gift.IPpGiftService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.aspectj.weaver.ast.Var;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import sun.java2d.pipe.SpanIterator;

import java.util.ArrayList;
import java.util.List;

/**
 * 文件路径表
 * @author ruoyi
 * @date 2019-12-10
 */
@SuppressWarnings({"SpringJavaInjectionPointsAutowiringInspection", "LoopConditionNotUpdatedInsideLoop"})
@CrossOrigin
@Controller
@RequestMapping("/api/files")
public class PpFilesController extends BaseController {

    @Autowired
    private IPpFilesService ppFilesService;

    /**
     * 用户点赞的图片展示
     */
    @Log(title = "用户点赞的图片展示")
    @GetMapping("/listPhotograph")
    @ResponseBody
    public TableDataInfo listPhotograph() {
        startPage();
        List<PpFiles> ppFiles = ppFilesService.likePhotograph(ShiroUtils.getAppUserId());
        return getDataTable(ppFiles);
    }

    /**
     * 用户点赞的视频展示
     */
    @Log(title = "用户点赞的视频展示")
    @GetMapping("/lkeVideo")
    @ResponseBody
    public TableDataInfo lkeVideo() {
        startPage();
        List<PpFiles> ppFiles = ppFilesService.lkeVideo(ShiroUtils.getAppUserId());
        return getDataTable(ppFiles);
    }

    /**
     * 用户点赞的动态
     */
    @Log(title = "用户点赞的动态列表")
    @GetMapping("/lkeDynamic")
    @ResponseBody
    public TableDataInfo lkeDynamic() {
        startPage();
        List<PpFiles> ppFiles = ppFilesService.lkeDynamic(ShiroUtils.getAppUserId());
        return getDataTable(ppFiles);
    }

    /**
     * 评论过的动态
     */
    @Log(title = "评论过的动态")
    @PostMapping( "/commentDynamic")
    @ResponseBody
    public TableDataInfo commentDynamic() {
        startPage();
        List<PpFiles> ppFiles = ppFilesService.commentDynamic(ShiroUtils.getAppUserId());
        return getDataTable(ppFiles);
    }

    /**
     * 获取用户图片
     */
    @Log(title = "获取他人用户图片")
    @GetMapping( "/pictureUser")
    @ResponseBody
    public TableDataInfo pictureUser(Long userbId) {
        startPage();
        List<PpFiles> ppFiles = ppFilesService.pictureUser(userbId);
        return getDataTable(ppFiles);
    }

    /**
     * 编辑用户的信息 前端回调函数时调用
     */
   /* @Log(title = "编辑用户的信息 编辑图片的信息")
    @PostMapping( "/compilePicture")
    @ResponseBody
    public AjaxResult compilePicture(String[] fileUrl) {
        System.out.println(fileUrl.length);
        //获取用户之前有的图片信息
        List<PpFiles> ppFiles = ppFilesService.pictureUser(ShiroUtils.getAppUserId());
        List<Long> id =new ArrayList<>();
        //遍历之前的信息
        for (PpFiles ppFile : ppFiles) {
            id.add(ppFile.getId());
        }

        //遍历传来的数据
        for (int i = 0;i<fileUrl.length;i++){
            System.out.println("i"+i);
            //判断用户 用户之前的信息做修改
            if (ppFiles.size()>i){
                //修改信息
                //Object object = objects[i];
                //修改信息
                System.out.println(id.get(i));
                System.out.println(fileUrl[i]);
                ppFilesService.updateUserFiles(id.get(i),fileUrl[i]);
            }else {
                //添加
                ppFilesService.compilePicture(fileUrl[i]);
            }
        }
        return AjaxResult.success("编辑成功");
    }
*/
    @Log(title = "编辑用户的信息 编辑图片的信息")
    @PostMapping( "/compilePicture")
    @ResponseBody
    public AjaxResult compilePicture(String[] fileUrl) {
        System.out.println(fileUrl.length);
        List<PpFiles> ppFiles = ppFilesService.pictureUser(ShiroUtils.getAppUserId());

            for (int i = 0; i < fileUrl.length; i++) {
                System.out.println("i" + i);
                //判断用户 用户之前的信息做修改
                System.out.println(fileUrl[i]);
                ppFilesService.compilePicture(fileUrl[i]);
            }
            return AjaxResult.success("编辑成功");
    }


    /**
     * 获取当前用户的图片
     */
    @Log(title = "获取当前用户的图片")
    @GetMapping( "/pictureCurrentUser")
    @ResponseBody
    public TableDataInfo pictureCurrentUser() {
        startPage();
        List<PpFiles> ppFiles = ppFilesService.pictureUser(ShiroUtils.getAppUserId());
        return getDataTable(ppFiles);
    }

    /**
     * 删除  deta返回1 操作成功
     */
    @Log(title = "删除文件")
    @PostMapping( "/deletePpFilesById")
    @ResponseBody
    public AjaxResult deletePpFilesById(Long id) {
        int i = ppFilesService.deletePpFilesById(id);
        return AjaxResult.success(i);
    }

    /**
     * 删除文件
     */
    @Log(title = "删除")
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ppFilesService.deletePpFilesByIds(ids));
    }








}
