package com.example.demo.security.filter;

import com.alibaba.fastjson.JSON;

import com.example.demo.result.ResponseUtil;
import com.example.demo.result.Result;
import com.example.demo.result.ResultCodeEnum;
import com.example.demo.security.custom.LoginUserInfoHelper;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
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

//    private RedisTemplate redisTemplate;

    public TokenAuthenticationFilter() {
//        this.redisTemplate = redisTemplate;
    }

    @Override
    protected void doFilterInternal(HttpServletRequest request,
                                    HttpServletResponse response,
                                    FilterChain chain) throws ServletException, IOException {
        //如果是登录接口，直接放行
        if ("/admin/system/index/login".equals(request.getRequestURI())) {
            chain.doFilter(request, response);
            return;
        }
        // 获取校验信息
        UsernamePasswordAuthenticationToken authentication = getAuthentication(request);
        if (null != authentication) {
            SecurityContextHolder.getContext().setAuthentication(authentication);
            chain.doFilter(request, response);
        } else {
            ResponseUtil.out(response, Result.build(null, ResultCodeEnum.LOGIN_ERROR));
        }
    }

    private UsernamePasswordAuthenticationToken getAuthentication(HttpServletRequest request) {

        //请求头是否有token
        String username = request.getHeader("token");

        if (!StringUtils.isEmpty(username)) {
            String authListString = request.getHeader("authorities");
            if (!StringUtils.isEmpty(authListString)) {
                System.out.println(authListString+"================>");
                String ccc = authListString;
                //把redis获取字符串权限数据转换要求集合类型 List<SimpleGrantedAuthority>
                List<Map> maplist = JSON.parseArray(ccc, Map.class);
                System.out.println(maplist);
                List<SimpleGrantedAuthority> authList = new ArrayList<>();
                for (Map map : maplist) {
                    String authority = (String) map.get("authority");
                    authList.add(new SimpleGrantedAuthority(authority));
                }
                return new UsernamePasswordAuthenticationToken(username, null, authList);
            } else {
                return new UsernamePasswordAuthenticationToken(username, null, new ArrayList<>());
            }
        }
        return null;
    }


    public static void main(String[] args) {
        String aa = "[{\"authority\":\"bnt.sysMenu.add\"},{\"authority\":\"bnt.sysMenu.list\"},{\"authority\":\"bnt.sysMenu.remove\"},{\"authority\":\"bnt.sysMenu.update\"},{\"authority\":\"bnt.sysRole.add\"},{\"authority\":\"bnt.sysRole.assignAuth\"},{\"authority\":\"bnt.sysRole.list\"},{\"authority\":\"bnt.sysRole.remove\"},{\"authority\":\"bnt.sysRole.update\"},{\"authority\":\"bnt.sysUser.add\"},{\"authority\":\"bnt.sysUser.assignRole\"},{\"authority\":\"bnt.sysUser.list\"},{\"authority\":\"bnt.sysUser.remove\"},{\"authority\":\"bnt.sysUser.update\"}]";
        List<Map> maps = JSON.parseArray(aa, Map.class);
        System.out.println(maps);
    }
}
