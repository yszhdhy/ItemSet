//package com.xc.process.security.custom;
//
//
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.stereotype.Component;
//
///**
// * 自定义加密器
// */
//@Component
//public class CustomMd5PasswordEncoder implements PasswordEncoder {
//
//    //加密
//    public String encode(CharSequence rawPassword) {
//        return MD5.encrypt(rawPassword.toString());
//    }
//
//    //匹配
//    public boolean matches(CharSequence rawPassword, String encodedPassword) {
//        return encodedPassword.equals(MD5.encrypt(rawPassword.toString()));
//    }
//}
