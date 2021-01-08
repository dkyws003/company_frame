package com.szxx.recruit;

import com.szxx.recruit.mapper.SysUserRoleMapper;
import com.szxx.recruit.service.PermissionService;
import com.szxx.recruit.service.RedisService;
import com.szxx.recruit.service.RoleService;

import com.szxx.recruit.utils.JwtTokenUtil;
import io.itit.itf.okhttp.FastHttpClient;
import io.itit.itf.okhttp.Response;

import lombok.extern.log4j.Log4j2;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@Log4j2
@RunWith(SpringRunner.class)
@SpringBootTest
public class CompanyFrameApplicationTests {

    @Autowired
    private RedisService redisService;
    @Autowired
    private SysUserRoleMapper sysUserRoleMapper;
    @Autowired
    private RoleService roleService;
    @Autowired
    private PermissionService permissionService;
    @Test
    public void contextLoads() {
        JwtTokenUtil.validateToken("eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.qOgSMwV6D_qu24SuQ2Q1eUqF439rb9xkzAjZz8Kzf5U");
    }
    @Test
    public void testhttp() throws Exception {
       //String url= "http://www.baidu.com";
   /*      String resp= FastHttpClient.get().url(url).build().execute().string();
        log.info("结果是="+resp);*/
        String url="https://wx.qq.com";
        Response response=FastHttpClient.
                post().
                addHeader("Content-Type","application/json").
                body("{\"username\":\"test\",\"password\":\"111111\"}").
                url(url).
                build().
                execute();
        String result=response.body().string().toString();
        log.info("结果是="+ result);
    }




}
