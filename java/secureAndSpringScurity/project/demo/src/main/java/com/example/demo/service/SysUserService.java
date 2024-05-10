package com.example.demo.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.demo.model.model.SysUser;


public interface SysUserService extends IService<SysUser> {

    //更新状态
    void updateStatus(Long id, Integer status);

    //根据用户名进行查询
    SysUser getUserByUserName(String username);

}
