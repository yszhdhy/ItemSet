package com.example.demo.config.passwordEncoder;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

/**
 * @author CaptureOrNew
 * @description //进行密码加密配置
 * @date 19:29:12 2024/4/19
 * @return null
 **/
@Configuration
public class SecurityConfig {

    // 进行编码配置 创建一个BCryptPasswordEncoder的实例
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    // 配置其他安全措施...
}
