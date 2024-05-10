package com.example.demo;

import com.alibaba.fastjson.JSON;
import com.example.demo.config.passwordEncoder.SecurityConfig;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;
import java.util.Map;

@SpringBootTest
class DemoApplicationTests {

    @Autowired
    SecurityConfig securityConfig;

    @Test
    void contextLoads() {
        String aa = "[{\"authority\":\"bnt.sysMenu.add\"},{\"authority\":\"bnt.sysMenu.list\"},{\"authority\":\"bnt.sysMenu.remove\"},{\"authority\":\"bnt.sysMenu.update\"},{\"authority\":\"bnt.sysRole.add\"},{\"authority\":\"bnt.sysRole.assignAuth\"},{\"authority\":\"bnt.sysRole.list\"},{\"authority\":\"bnt.sysRole.remove\"},{\"authority\":\"bnt.sysRole.update\"},{\"authority\":\"bnt.sysUser.add\"},{\"authority\":\"bnt.sysUser.assignRole\"},{\"authority\":\"bnt.sysUser.list\"},{\"authority\":\"bnt.sysUser.remove\"},{\"authority\":\"bnt.sysUser.update\"}]";
        String authListString = "[{\"authority\":\"bnt.sysMenu.add\"},{\"authority\":\"bnt.sysMenu.list\"},{\"authority\":\"bnt.sysMenu.remove\"},{\"authority\":\"bnt.sysMenu.update\"},{\"authority\":\"bnt.sysRole.add\"},{\"authority\":\"bnt.sysRole.assignAuth\"},{\"authority\":\"bnt.sysRole.list\"},{\"authority\":\"bnt.sysRole.remove\"},{\"authority\":\"bnt.sysRole.update\"},{\"authority\":\"bnt.sysUser.add\"},{\"authority\":\"bnt.sysUser.assignRole\"},{\"authority\":\"bnt.sysUser.list\"},{\"authority\":\"bnt.sysUser.remove\"},{\"authority\":\"bnt.sysUser.update\"}]";
        List<Map> maps = JSON.parseArray(authListString, Map.class);
        System.out.println(maps);
    }

}
