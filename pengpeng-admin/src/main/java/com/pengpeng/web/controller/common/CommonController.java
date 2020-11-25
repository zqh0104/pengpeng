package com.pengpeng.web.controller.common;

import com.pengpeng.common.config.Global;
import com.pengpeng.common.config.ServerConfig;
import com.pengpeng.common.constant.Constants;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.exception.BusinessException;
import com.pengpeng.common.json.JSONObject;
import com.pengpeng.common.utils.QiniuCloudUtil;
import com.pengpeng.common.utils.StringUtils;
import com.pengpeng.common.utils.file.FileUploadUtils;
import com.pengpeng.common.utils.file.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

/**
 * 通用请求处理
 *
 * @author pengpeng
 */
@Controller
public class CommonController {
    private static final Logger log = LoggerFactory.getLogger(CommonController.class);

    @Autowired
    private ServerConfig serverConfig;

    /**
     * 通用下载请求
     *
     * @param fileName 文件名称
     * @param delete   是否删除
     */
    @GetMapping("common/download")
    public void fileDownload(String fileName, Boolean delete, HttpServletResponse response, HttpServletRequest request) {
        try {
            if (!FileUtils.isValidFilename(fileName)) {
                throw new Exception(StringUtils.format("文件名称({})非法，不允许下载。 ", fileName));
            }
            String realFileName = System.currentTimeMillis() + fileName.substring(fileName.indexOf("_") + 1);
            String filePath = Global.getDownloadPath() + fileName;

            response.setCharacterEncoding("utf-8");
            response.setContentType("multipart/form-data");
            response.setHeader("Content-Disposition",
                    "attachment;fileName=" + FileUtils.setFileDownloadHeader(request, realFileName));
            FileUtils.writeBytes(filePath, response.getOutputStream());
            if (delete) {
                FileUtils.deleteFile(filePath);
            }
        } catch (Exception e) {
            log.error("下载文件失败", e);
        }
    }

    /**
     * 通用上传请求
     */
    @PostMapping("/common/upload")
    @ResponseBody
    public AjaxResult uploadFile(MultipartFile file) throws Exception {
        try {
            // 上传文件路径
            String filePath = Global.getUploadPath();
            // 上传并返回新文件名称
            String fileName = FileUploadUtils.upload(filePath, file);
            String url = serverConfig.getUrl() + fileName;
            AjaxResult ajax = AjaxResult.success();
            ajax.put("fileName", fileName);
            ajax.put("url", url);
            return ajax;
        } catch (Exception e) {
            return AjaxResult.error(e.getMessage());
        }
    }

    /**
     * 本地资源通用下载
     */
    @GetMapping("/common/download/resource")
    public void resourceDownload(String resource, HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        // 本地资源路径
        String localPath = Global.getProfile();
        // 数据库资源地址
        String downloadPath = localPath + StringUtils.substringAfter(resource, Constants.RESOURCE_PREFIX);
        // 下载名称
        String downloadName = StringUtils.substringAfterLast(downloadPath, "/");
        response.setCharacterEncoding("utf-8");
        response.setContentType("multipart/form-data");
        response.setHeader("Content-Disposition",
                "attachment;fileName=" + FileUtils.setFileDownloadHeader(request, downloadName));
        FileUtils.writeBytes(downloadPath, response.getOutputStream());
    }


    @ResponseBody
    @PostMapping(value = "/common/apk_upload")
    public AjaxResult uploadApkFile(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        request.setCharacterEncoding("UTF-8");

        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;

        /** 页面控件的文件流* */
        MultipartFile multipartFile = null;
        Map map = multipartRequest.getFileMap();
        for (Iterator i = map.keySet().iterator(); i.hasNext(); ) {
            Object obj = i.next();
            multipartFile = (MultipartFile) map.get(obj);

        }
        // 上传文件路径
        String filePath = Global.getUploadPath();
        // 上传并返回新文件名称
        String fileName = FileUploadUtils.upload(filePath, multipartFile);
        String url = serverConfig.getUrl() + fileName;
        AjaxResult ajax = AjaxResult.success();
        ajax.put("fileName", fileName);
        ajax.put("url", url);
        return ajax;
    }

    /**
     * 七牛上传
     *
     * @param files
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/qiniu/uploadFiles", method = RequestMethod.POST)
    public AjaxResult uploadImg(@RequestParam MultipartFile[] files, HttpServletRequest request) {
        if (files == null || files.length == 0) {
            return AjaxResult.error("文件不能为空");
        }
        // fileType: video image
        String fileType = request.getParameter("fileType");
        if (StringUtils.isBlank(fileType)) {
            throw new BusinessException("文件类型不能为空");
        }
        try {
            List<JSONObject> fileUrls = new ArrayList<>();
            for (int i = 0; i < files.length; i++) {
                byte[] bytes = files[i].getBytes();
                String imageName = UUID.randomUUID().toString();
                //使用base64方式上传到七牛云
                JSONObject object = QiniuCloudUtil.put64image(bytes, imageName, fileType);
                fileUrls.add(object);
            }
            return AjaxResult.success("文件上传成功", fileUrls);
        } catch (Exception e) {
            log.error(e.getMessage());
            return AjaxResult.error("文件上传发生异常！");
        }
    }
}
