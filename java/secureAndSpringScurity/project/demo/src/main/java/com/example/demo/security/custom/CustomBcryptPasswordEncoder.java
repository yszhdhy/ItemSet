package com.example.demo.security.custom;


import com.example.demo.config.passwordEncoder.SecurityConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

/**
 * @author CaptureOrNew
 * @description //创建一个bcrypt 加密器
 * @date 19:28:21 2024/4/19
 * @Param
 * @return null
 **/
@Component
public class CustomBcryptPasswordEncoder implements PasswordEncoder {

    @Autowired
    SecurityConfig securityConfig;

    // 进行密码加密操作
    public String encode(CharSequence rawPassword) {
        return securityConfig.passwordEncoder().encode(rawPassword.toString());
    }

    // 进行密码比对
    public boolean matches(CharSequence rawPassword, String encodedPassword) {
        // security 会自动进行密码的比对
        return securityConfig.passwordEncoder().matches(rawPassword, encodedPassword);
    }
}
