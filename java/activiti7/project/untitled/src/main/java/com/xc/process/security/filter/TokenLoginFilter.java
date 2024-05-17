package com.xc.process.security.filter;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.xc.process.model.vo.LoginVo;
import com.xc.process.result.ResponseUtil;
import com.xc.process.result.Result;
import com.xc.process.result.ResultCodeEnum;
import com.xc.process.security.constant.SysConstants;
import com.xc.process.security.custom.CustomUserDin;
import com.xc.process.security.utils.ScurityGetTokenAndSetRedis;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Slf4j
public class TokenLoginFilter extends UsernamePasswordAuthenticationFilter {

    private RedisTemplate redisTemplate;

    StringRedisTemplate stringRedisTemplate;

    SysConstants sysConstants;


    //构造方法
    public TokenLoginFilter(AuthenticationManager authenticationManager,
                            RedisTemplate redisTemplate,SysConstants sysConstants, StringRedisTemplate stringRedisTemplate) {
        this.setAuthenticationManager(authenticationManager);
        this.setPostOnly(false); //配置其他方式
        this.redisTemplate = redisTemplate;
        this.stringRedisTemplate = stringRedisTemplate;
        this.sysConstants = sysConstants;
        //指定登录接口及提交方式，可以指定任意路径
        this.setRequiresAuthenticationRequestMatcher(new AntPathRequestMatcher("/admin/user/login","POST"));
    }

    //登录认证
    //获取输入的用户名和密码，调用方法认证
    public Authentication attemptAuthentication(HttpServletRequest request,
                                                HttpServletResponse response)
            throws AuthenticationException {
        try {

            //获取用户信息  以流的方式进行获取 并转换为 LoginVo 类型
            LoginVo loginVo = new ObjectMapper().readValue(request.getInputStream(), LoginVo.class);

//            String phone =new DinGetPhoneUtils().getResult(loginVo,sysConstants,stringRedisTemplate);
//
//            loginVo.setPhone(phone);

            //封装对象  要封装为 这个类型的 Authentication
            Authentication authenticationToken =
                    new UsernamePasswordAuthenticationToken(loginVo.getPhone(), null);
            //调用方法  就会调用security 中的方法进行认证
            return this.getAuthenticationManager().authenticate(authenticationToken);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }


    //认证成功调用方法
    protected void successfulAuthentication(HttpServletRequest request,
                                            HttpServletResponse response,
                                            FilterChain chain,
                                            Authentication auth)
            throws IOException, ServletException {
        //获取当前用户
        CustomUserDin customUser = (CustomUserDin)auth.getPrincipal();

        //生成token
        String token = ScurityGetTokenAndSetRedis.GetTokenAndSetRedis(customUser, redisTemplate);

//        //返回
        Map<String,Object> map = new HashMap<>();
        map.put("token",token);
        map.put("user",customUser.getDsUserEntity());
        ResponseUtil.out(response, Result.ok(map));
    }

    //认证失败调用方法
    protected void unsuccessfulAuthentication(HttpServletRequest request,
                                              HttpServletResponse response,
                                              AuthenticationException failed)
            throws IOException, ServletException {
        ResponseUtil.out(response,Result.build(null, ResultCodeEnum.LOGIN_ERROR));
    }


}
