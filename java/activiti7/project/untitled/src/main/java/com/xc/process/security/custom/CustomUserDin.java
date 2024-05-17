package com.xc.process.security.custom;


import com.xc.process.model.model.DsUserEntity;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import java.util.Collection;

public class CustomUserDin extends User {

    /**
     * 我们自己的用户实体对象，要调取用户信息时直接获取这个实体对象。（这里我就不写get/set方法了）
     */
    private DsUserEntity dsUserEntity;

    public CustomUserDin(DsUserEntity dsUserEntity, Collection<? extends GrantedAuthority> authorities) {
        super(dsUserEntity.getUsername(), dsUserEntity.getPhone(), authorities);
        this.dsUserEntity = dsUserEntity;
    }

    public DsUserEntity getDsUserEntity() {
        return dsUserEntity;
    }

    public void setDsUserEntity(DsUserEntity dsUserEntity) {
        this.dsUserEntity = dsUserEntity;
    }
}
