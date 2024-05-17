package com.xc.process.model.vo;


import lombok.Data;

/**
 * 登录对象
 */
@Data
public class LoginVo {

    /**
     * 手机号
     */
    private String phone;


    /**
     * 钉钉code
     */
    private String dinCode;
}
