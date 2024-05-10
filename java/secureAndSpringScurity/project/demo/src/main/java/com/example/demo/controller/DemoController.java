package com.example.demo.controller;

import com.example.demo.model.model.SysUser;
import com.example.demo.result.Result;
import com.example.demo.service.SysUserService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static com.example.demo.result.ResultCodeEnum.LOGIN_ERROR;

/**
 * @project demo
 * @description
 * @author capture or new
 * @date 2024/4/19 15:07:15
 * @version 1.0
 */
@Api(tags = "用户信息")
@RestController
@RequestMapping("/admin")
public class DemoController {

    @Autowired
    private SysUserService sysUserService;

    /**
     * @author CaptureOrNew
     * @description //查询用户列表
     * @date 09:46:22 2024/4/20
     * @PreAuthorize 标注在方法上，表示访问方法的用户需要有对应的权限
     * @return com.example.demo.result.Result<java.util.List < com.example.demo.model.model.SysUser>>
     **/
    @PreAuthorize("hasAuthority('bnt.sysUser.list')")
    @GetMapping("getUserList")
    public Result<List<SysUser>> getUserList() {
        List<SysUser> list = sysUserService.list();
        return list != null ? Result.ok(list) : Result.build(null, LOGIN_ERROR);
    }

    /**
     * @author CaptureOrNew
     * @description //查询用户
     * @date 09:46:44 2024/4/20
     * @PreAuthorize 标注在方法上，表示访问方法的用户需要有对应的权限
     * @param id
     * @return com.example.demo.result.Result<com.example.demo.model.model.SysUser>
     **/
    @PreAuthorize("hasAuthority('bnt.sysUser.list')")
    @GetMapping("/getUser")
    public Result<SysUser> getUser(@PathVariable("id") String id) {
        SysUser user = sysUserService.getById(id);
        return user != null ? Result.ok(user) : Result.build(null, LOGIN_ERROR);
    }

    /**
     * @author CaptureOrNew
     * @description //添加用户
     * @date 09:47:13 2024/4/20
     * @PreAuthorize 标注在方法上，表示访问方法的用户需要有对应的权限
     * @param user
     * @return com.example.demo.result.Result
     **/
    @PreAuthorize("hasAuthority('bnt.sysUser.add')")
    @PostMapping("/addUser")
    public Result addUser(SysUser user) {
        boolean save = sysUserService.save(user);
        return save ? Result.ok() : Result.build(null, LOGIN_ERROR);
    }

    /**
     * @author CaptureOrNew
     * @description //更新用户
     * @date 09:47:25 2024/4/20
     * @PreAuthorize 标注在方法上，表示访问方法的用户需要有对应的权限
     * @param user
     * @return com.example.demo.result.Result
     **/
    @PreAuthorize("hasAuthority('bnt.sysUser.update')")
    @PutMapping("/updateUser")
    public Result updateUser(SysUser user) {
        boolean update = sysUserService.updateById(user);
        return update ? Result.ok() : Result.build(null, LOGIN_ERROR);
    }

    /**
     * @author CaptureOrNew
     * @description //删除用户
     * @date 09:47:47 2024/4/20
     * @PreAuthorize 标注在方法上，表示访问方法的用户需要有对应的权限
     * @param id
     * @return com.example.demo.result.Result
     **/
    @PreAuthorize("hasAuthority('bnt.sysUser.remove')")
    @DeleteMapping("/deleteUser")
    public Result deleteUser(@PathVariable("id") String id) {
        boolean remove = sysUserService.removeById(id);
        return remove ? Result.ok() : Result.build(null, LOGIN_ERROR);
    }

}
