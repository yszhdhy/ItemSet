package com.xc.process.security.filter;

import com.alibaba.fastjson.JSON;

import com.xc.process.jwt.JwtHelper;
import com.xc.process.result.ResponseUtil;
import com.xc.process.result.Result;
import com.xc.process.result.ResultCodeEnum;
import com.xc.process.utils.LoginUserInfoHelper;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.util.AntPathMatcher;
import org.springframework.util.StringUtils;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class TokenAuthenticationFilter extends OncePerRequestFilter {

    private AntPathMatcher antPathMatcher = new AntPathMatcher();
    private RedisTemplate redisTemplate;

    public TokenAuthenticationFilter(RedisTemplate redisTemplate) {
        this.redisTemplate = redisTemplate;
    }

    /**
     * 过滤器
     * @param request
     * @param response
     * @param chain
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doFilterInternal(HttpServletRequest request,
                                    HttpServletResponse response,
                                    FilterChain chain) throws ServletException, IOException {

        //如果是登录接口，直接放行
        if("/admin/user/login".equals(request.getRequestURI())||
                "/admin/user/auth".equals(request.getRequestURI())||
                "/admin/user/loginweb".equals(request.getRequestURI())||
        "/admin/user/callBack/callback".equals(request.getRequestURI())||
                "/api/admin/user/callBack/callback".equals(request.getRequestURI())||
        "/admin/oss/file/fileUpload".equals(request.getRequestURI())||
                "/admin/oss/upload/chunk".equals(request.getRequestURI())||
                "/admin/oss/upload/merge".equals(request.getRequestURI())) {
            chain.doFilter(request, response);
            return;
        }


//        调用  getAuthentication 方法判断请求头中是否有token
        UsernamePasswordAuthenticationToken authentication = getAuthentication(request);

        if(null != authentication) {
//            如果有的话就直接放入到 上下文中
            SecurityContextHolder.getContext().setAuthentication(authentication);
            chain.doFilter(request, response);
        } else {
            //返回错误
            ResponseUtil.out(response, Result.build(null, ResultCodeEnum.LOGIN_ERROR));
        }
    }

    private UsernamePasswordAuthenticationToken getAuthentication(HttpServletRequest request) {
        //请求头是否有token
        String token = request.getHeader("token"); //获取token
        if(!StringUtils.isEmpty(token)) { //判空
            String username = JwtHelper.getUsername(token);   //从请求头中获取名称
            System.out.println(token+"======================我是这次报错的token");
            if(!StringUtils.isEmpty(username)) {
                //当前用户信息放到ThreadLocal里面
                LoginUserInfoHelper.setUserId(JwtHelper.getUserId(token));
                LoginUserInfoHelper.setUsername(username);

                //通过username从redis获取权限数据
                String authString = (String)redisTemplate.opsForValue().get(username);
                //把redis获取字符串权限数据转换要求集合类型 List<SimpleGrantedAuthority>
                if(!StringUtils.isEmpty(authString)) {
                    List<Map> maplist = JSON.parseArray(authString, Map.class);
                    System.out.println(maplist);
                    List<SimpleGrantedAuthority> authList = new ArrayList<>();
                    for (Map map:maplist) {
                        String authority = (String)map.get("authority");
                        authList.add(new SimpleGrantedAuthority(authority));
                    }
                    return new UsernamePasswordAuthenticationToken(username,null, authList);
                } else {
                    return new UsernamePasswordAuthenticationToken(username,null, new ArrayList<>());
                }
            }
        }
        return null;
    }


}
