package com.xc.process.security.custom;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;

@Component
public interface CustomAuthenticationProvider extends AuthenticationProvider {

    @Override
    public Authentication authenticate(Authentication authentication);

    @Override
    public boolean supports(Class<?> authentication);
}
