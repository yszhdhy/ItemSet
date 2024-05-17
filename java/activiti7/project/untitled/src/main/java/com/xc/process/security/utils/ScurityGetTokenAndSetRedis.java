package com.xc.process.security.utils;

import com.alibaba.fastjson2.JSON;

import com.xc.process.jwt.JwtHelper;
import com.xc.process.security.custom.CustomUserDin;
import org.springframework.data.redis.core.RedisTemplate;

public class ScurityGetTokenAndSetRedis {

    public static String GetTokenAndSetRedis(CustomUserDin customUser, RedisTemplate redisTemplate){
        //        //生成token
        String token = JwtHelper.createToken(Long.valueOf(customUser.getDsUserEntity().getId()),
                customUser.getDsUserEntity().getUsername());

//        //获取当前用户权限数据，放到Redis里面 key：username value：权限数据
        redisTemplate.opsForValue().set(customUser.getUsername(),
                JSON.toJSONString(customUser.getAuthorities()));

        return token;
    }
}
