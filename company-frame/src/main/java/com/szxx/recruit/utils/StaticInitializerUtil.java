package com.szxx.recruit.utils;


import org.springframework.stereotype.Component;

/**
 * @ClassName: StaticContextInitializer
 * TODO:类文件简单描述
 * @Author: yws
 * @CreateDate: 2020/9/26 10:07
 * @UpdateUser: yws
 * @UpdateDate: 2020/9/26 10:07
 * @Version: 0.0.1
 */
@Component
public class StaticInitializerUtil {
   private TokenSettings tokenSettings;

    public StaticInitializerUtil(TokenSettings tokenSettings) {
        JwtTokenUtil.setTokenSettings(tokenSettings);
    }
}
