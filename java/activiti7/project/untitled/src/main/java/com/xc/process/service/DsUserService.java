package com.xc.process.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.xc.process.model.model.DsUserEntity;


/**
 * @author ds
 * @email DS@gmail.com
 * @date 2023-05-15 09:48:17
 */
public interface DsUserService extends IService<DsUserEntity> {


    DsUserEntity getUserByPhone(String phone);

    String getUserByDingUserId(Integer id);

    boolean updateByPhone(DsUserEntity dsUser);

    boolean deleteByPhone(String phone);

    DsUserEntity getUserByUserName(String userName);

}

