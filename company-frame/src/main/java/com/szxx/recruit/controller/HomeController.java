package com.szxx.recruit.controller;

import com.szxx.recruit.service.HomeService;
import com.szxx.recruit.utils.DataResult;
import com.szxx.recruit.utils.JwtTokenUtil;
import com.szxx.recruit.vo.resp.HomeRespVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

/**
 * @ClassName: HomeController
 * TODO:类文件简单描述
 * @Author: yws
 * @CreateDate: 2020/10/25 21:20
 * @UpdateUser: yws
 * @UpdateDate: 2020/10/25 21:20
 * @Version: 0.0.1
 */
@RestController
@RequestMapping("/sys")
@Api(tags = "首页数据")
public class HomeController {
    @Autowired
    private HomeService homeService;

    @GetMapping("/home")
    @ApiOperation(value ="获取首页数据接口")
    public DataResult<HomeRespVO> getHomeInfo(HttpServletRequest request){
        String accessToken=request.getHeader("authorization");
        /**
         * 通过access_token拿userId
         */
        String userId= JwtTokenUtil.getUserId(accessToken);
        DataResult<HomeRespVO> result=DataResult.success();
        result.setData(homeService.getHomeInfo(userId));
        return result;
    }
}
