package com.xc.process.service;


import com.baomidou.mybatisplus.extension.service.IService;
import com.xc.process.model.model.SysMenu;


import java.util.List;

/**
 * <p>
 * 菜单表 服务类
 * </p>
 *
 * @author atguigu
 * @since 2023-02-02
 */
public interface SysMenuService extends IService<SysMenu> {


    // 根据用户id获取用户可以操作按钮列表
    List<String> findUserPermsByUserId(Long userId);
}
