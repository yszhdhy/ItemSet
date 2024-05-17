package com.xc.process.security.constant;

import cn.hutool.core.util.StrUtil;
import cn.hutool.json.JSONUtil;
import lombok.Getter;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.core.StringRedisTemplate;

import javax.annotation.Resource;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.concurrent.TimeUnit;

@Slf4j
@Configuration
@ConfigurationProperties(prefix = "sys-constants")
@Setter
@Getter
public class SysConstants {

    @Resource
    StringRedisTemplate stringRedisTemplate;

//    @Bean
//    public com.aliyun.dingtalkoauth2_1_0.Client client() {
//        com.aliyun.teaopenapi.models.Config config = new com.aliyun.teaopenapi.models.Config();
//        config.protocol = "https";
//        config.regionId = "central";
//        try {
//            return new com.aliyun.dingtalkoauth2_1_0.Client(config);
//        } catch (Exception e) {
//            throw new RuntimeException(e);
//        }
//    }

    // 旧版api
    private String DING_OHOST;
    // 新版api
    private String DING_HOST;

    private String APP_AGENTID;

    private String APP_APPKEY;

    private String APP_APPSECRET;

    private String APP_API_TOKEN;

    private String APP_CORPID;

    private String APP_ACCESS_TOKEN;

    private  String CALLBACK_AES_KEY;

    private String CALLBACK_SIGNATURE_TOKEN;


//    public String getAPP_ACCESS_TOKEN() {
//        // 1. 尝试从redis中获取access_token
//        String token = stringRedisTemplate.opsForValue().get("access_token");
//        long expireIn = 1;
//        // 2. 获取到，返回
//        if (!StrUtil.isBlankIfStr(token)) {
//            return token;
//        }
//
//        // 3. 未获取到，从钉钉api获取
//        com.aliyun.dingtalkoauth2_1_0.Client client = client();
//        com.aliyun.dingtalkoauth2_1_0.models.GetAccessTokenRequest getAccessTokenRequest = new com.aliyun.dingtalkoauth2_1_0.models.GetAccessTokenRequest()
//                .setAppKey(APP_APPKEY)
//                .setAppSecret(APP_APPSECRET);
//        try {
//            GetAccessTokenResponseBody body = client.getAccessToken(getAccessTokenRequest).body;
//            token = body.accessToken;
//            expireIn = body.expireIn;
//
//        } catch (TeaException err) {
//            if (!com.aliyun.teautil.Common.empty(err.code) && !com.aliyun.teautil.Common.empty(err.message)) {
//                // err 中含有 code 和 message 属性，可帮助开发定位问题
//                log.error(LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")) + JSONUtil.toJsonStr(err));
//            }
//
//        } catch (Exception _err) {
//            TeaException err = new TeaException(_err.getMessage(), _err);
//            if (!com.aliyun.teautil.Common.empty(err.code) && !com.aliyun.teautil.Common.empty(err.message)) {
//                // err 中含有 code 和 message 属性，可帮助开发定位问题
//                log.error(LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")) + JSONUtil.toJsonStr(err));
//            }
//        }
//        if (StrUtil.isBlankIfStr(token)) {
//            return "";
//        }
//        // 4. 设置过期时间
//        assert token != null;
//        stringRedisTemplate.opsForValue().set("access_token", token, expireIn, TimeUnit.SECONDS);
//        // 5. 返回token
//        return token;
//    }
}
