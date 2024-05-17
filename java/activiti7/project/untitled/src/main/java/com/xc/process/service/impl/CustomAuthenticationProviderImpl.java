package com.xc.process.service.impl;



import com.xc.process.model.model.DsUserEntity;
import com.xc.process.security.custom.CustomAuthenticationProvider;
import com.xc.process.security.custom.CustomUserDin;
import com.xc.process.service.DsUserService;
import com.xc.process.service.SysMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CustomAuthenticationProviderImpl implements CustomAuthenticationProvider {

    @Autowired
    DsUserService dsUserService;

    @Autowired
    private SysMenuService sysMenuService;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String phoneNumber = authentication.getName();
//        String password = authentication.getCredentials().toString();


        //根据用户手机号进行查询
        DsUserEntity dsUserEntity = dsUserService.getUserByPhone(phoneNumber);
        if(null == dsUserEntity) {
            throw new UsernameNotFoundException("用户不存在！");
        }

        // 进行自定义的认证逻辑，例如根据手机号和密码查询数据库进行认证
        if (dsUserEntity.getPhone()!=null) {

            //根据userid查询用户操作权限数据
            List<String> userPermsList = sysMenuService.findUserPermsByUserId(dsUserEntity.getId());
//            按钮权限  暂时没有
            List<SimpleGrantedAuthority> authList = new ArrayList<>();

            //查询list集合遍历
            for (String perm : userPermsList) {
                authList.add(new SimpleGrantedAuthority(perm.trim()));
            }

            CustomUserDin customUserDin = new CustomUserDin(dsUserEntity, authList);

            // 构建已认证的Authentication对象
            return new UsernamePasswordAuthenticationToken(customUserDin, null, new ArrayList<>());
        } else {
            throw new BadCredentialsException("认证失败");
        }
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }
}
