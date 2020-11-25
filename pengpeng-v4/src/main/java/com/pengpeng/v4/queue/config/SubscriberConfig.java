package com.pengpeng.v4.queue.config;

import com.pengpeng.v4.queue.receive.MsgReceiver;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.listener.PatternTopic;
import org.springframework.data.redis.listener.RedisMessageListenerContainer;
import org.springframework.data.redis.listener.adapter.MessageListenerAdapter;

import java.util.concurrent.CountDownLatch;

/**
 * @author Administrator
 */
@Configuration
public class SubscriberConfig {
    /**
     * 创建连接工厂
     *
     * @param connectionFactory
     * @return
     */
    @Bean
    public RedisMessageListenerContainer container(RedisConnectionFactory connectionFactory, MsgReceiver msgReceiver) {
        RedisMessageListenerContainer container = new RedisMessageListenerContainer();
        container.setConnectionFactory(connectionFactory);
        container.addMessageListener(filesListenerAdapter(msgReceiver), new PatternTopic("filesIdentificationMessage"));
        container.addMessageListener(pushListenerAdapter(msgReceiver), new PatternTopic("pushIdentificationMessage"));
        return container;
    }

    /**
     * 绑定消息监听者和接收监听的方法
     *
     * @param receiver
     * @return
     */
    @Bean
    public MessageListenerAdapter filesListenerAdapter(MsgReceiver receiver) {
        return new MessageListenerAdapter(receiver, "filesIdentificationMessage");
    }

    /**
     * 绑定消息监听者和接收监听的方法
     *
     * @param receiver
     * @return
     */
    @Bean
    public MessageListenerAdapter pushListenerAdapter(MsgReceiver receiver) {
        return new MessageListenerAdapter(receiver, "pushIdentificationMessage");
    }

    /**
     * 注册订阅者
     *
     * @param latch
     * @return
     */
    @Bean
    public MsgReceiver receiver(CountDownLatch latch) {
        return new MsgReceiver(latch);
    }

    /**
     * 计数器，用来控制线程
     *
     * @return
     */
    @Bean
    public CountDownLatch latch() {
        //指定了计数的次数 1
        return new CountDownLatch(1);
    }
}
