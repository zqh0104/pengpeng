package com.pengpeng.web;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.session.data.redis.config.annotation.web.http.EnableRedisHttpSession;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.bind.annotation.RestController;


/**
 * 启动程序
 *
 * @author pengpeng
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
@EnableCaching
@EnableRedisHttpSession
@EnableTransactionManagement
@ComponentScan(basePackages = {"com.pengpeng"})
public class PengpengApplication
{
    public static void main(String[] args) {
        SpringApplication.run(PengpengApplication.class, args);
    }

}