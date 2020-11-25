package com.pengpeng.v4.queue.receive;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.pengpeng.common.jpush.Jpush;
import com.pengpeng.v4.mapper.files.PpFilesMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Map;
import java.util.concurrent.CountDownLatch;

/**
 * @author Administrator
 */
@Slf4j
public class MsgReceiver {

    private CountDownLatch latch;

    @Autowired
    private PpFilesMapper ppFilesMapper;

    @Autowired
    public MsgReceiver(CountDownLatch latch) {
        this.latch = latch;
    }

    /**
     * 接收图片 视频 异步鉴黄的消息 然后处理
     *
     * @param message
     */
    public void filesIdentificationMessage(String message) {
        JSONObject messageObj = JSONObject.parseObject(message);
        String url = messageObj.getString("url");
        boolean pulp = messageObj.getBooleanValue("pulp");
        Integer file_type = messageObj.getInteger("file_type");
        //违规
        if (pulp) {
            ppFilesMapper.uploadPpFilesByUrlAndType(url, file_type);
        }
        log.info("redis filesIdentificationTopic 队列接收消息:{}", message);
        latch.countDown();
    }

    /**
     * 推送消息
     *
     * @param message
     */
    public void pushIdentificationMessage(String message) {
        Map params = JSON.parseObject(message);
        //点对点推送
        if ("pointToPoint".equals(params.get("pushType"))) {
            Jpush.jpushByRegId(params);
        } else {
            Jpush.jpushAll(params);
        }
        log.info("redis pushIdentificationTopic 队列接收消息:{}", message);
        latch.countDown();
    }

}
