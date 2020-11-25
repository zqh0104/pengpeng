
import com.pengpeng.common.utils.spring.SpringUtils;
import com.pengpeng.web.PengpengApplication;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.test.context.junit4.SpringRunner;
import redis.clients.jedis.Jedis;


@RunWith(SpringRunner.class)
@SpringBootTest(classes = PengpengApplication.class)
public class Test2 {

    @Autowired
    private RedisTemplate<String ,String > redisTemplate;


    @org.junit.Test
    public void get() {
//        Jedis jedis = new Jedis("127.0.0.1", 6379);
        redisTemplate.opsForValue().get("auth:code:15538292910");
        System.out.println(redisTemplate.hasKey("auth:code:15538292910"));
//        System.out.println("redisTemplate获取值为：" + redisTemplate.opsForValue().get("auth:code:13525602692"));
//        S                          ystem.out.println("jedis获取值为：" + jedis.get("auth:code:13525602692"));
//        System.out.println(redisTemplate.type("auth:code:13525602692"));
    }


}
