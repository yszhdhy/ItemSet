package com.example.demo.service;


import com.baomidou.mybatisplus.extension.service.IService;
import com.example.demo.model.model.SysMenu;
import com.example.demo.model.vo.AssginMenuVo;
import com.example.demo.model.vo.RouterVo;

import java.util.List;

public interface SysMenuService extends IService<SysMenu> {


    //5 根据用户id获取用户可以操作按钮列表
    List<String> findUserPermsByUserId(Long userId);
}
