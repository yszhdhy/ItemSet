package com.xc.process.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import com.xc.process.mapper.DsUserMapper;
import com.xc.process.model.model.DsUserEntity;
import com.xc.process.service.DsUserService;
import org.springframework.stereotype.Service;


@Service("dsUserService")
public class DsUserServiceImpl extends ServiceImpl<DsUserMapper, DsUserEntity> implements DsUserService {


    @Override
    public DsUserEntity getUserByPhone(String phone) {
        DsUserEntity dsUserEntity = baseMapper.selectOne(new LambdaQueryWrapper<DsUserEntity>().eq(DsUserEntity::getPhone, phone));

        return dsUserEntity;
    }

    @Override
    public String getUserByDingUserId(Integer id) {
        DsUserEntity dsUserEntity = baseMapper.selectOne(new LambdaQueryWrapper<DsUserEntity>().eq(DsUserEntity::getId, id));

        return dsUserEntity.getDingUserId();
    }

    @Override
    public boolean updateByPhone(DsUserEntity dsUser) {
        if(baseMapper.update(dsUser, new LambdaQueryWrapper<DsUserEntity>().eq(DsUserEntity::getPhone, dsUser.getPhone()))>0){
            return true;
        }
        return false;
    }

    @Override
    public boolean deleteByPhone(String phone) {
        if(baseMapper.delete(new LambdaQueryWrapper<DsUserEntity>().eq(DsUserEntity::getPhone,phone))>0){
            return true;
        }
        return false;
    }

    @Override
    public DsUserEntity getUserByUserName(String userName) {
        DsUserEntity dsUserEntity = baseMapper.selectOne(new LambdaQueryWrapper<DsUserEntity>().eq(DsUserEntity::getUsername, userName));
       return dsUserEntity;
    }


}
