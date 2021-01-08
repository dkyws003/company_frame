package com.szxx.recruit.shiro;

import org.apache.shiro.authc.UsernamePasswordToken;

/**
 * @ClassName: CustomPasswordToken
 * TODO:类文件简单描述
 * @Author: yws
 * @CreateDate: 2020/9/6 17:58
 * @UpdateUser: yws
 * @UpdateDate: 2020/9/6 17:58
 * @Version: 0.0.1
 */
public class CustomPasswordToken  extends UsernamePasswordToken {
    private String token;

    public CustomPasswordToken(String token) {
        this.token = token;
    }

    @Override
    public Object getPrincipal() {
        return token;
    }
}
