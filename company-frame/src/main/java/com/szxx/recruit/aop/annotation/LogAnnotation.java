package com.szxx.recruit.aop.annotation;

import java.lang.annotation.*;

/**
* @ClassName:       LogAnnotation
*                   自定义注解
* @Author:
* @CreateDate:      2020/10/7 14:22
* @UpdateUser:
* @UpdateDate:      2020/10/7 14:22
* @Version:         0.0.1
*/
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface LogAnnotation {
    /** 模块 */
    String title() default "";

    /** 功能 */
    String action() default "";
}
