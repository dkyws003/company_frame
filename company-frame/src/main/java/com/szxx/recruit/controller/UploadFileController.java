package com.szxx.recruit.controller;

import com.szxx.recruit.service.UserService;
import com.szxx.recruit.utils.DataResult;
import com.szxx.recruit.vo.req.LoginReqVO;
import com.szxx.recruit.vo.resp.LoginRespVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

@RestController
@Api(tags = "功能模块-上传文件")
@RequestMapping("/entry")
public class UploadFileController {

    @Autowired
    private UserService userService;

    @PostMapping(value = "/uploadZipFile")
    @ApiOperation(value = "用户登录接口")
    public DataResult<LoginRespVO> uploadZip(@RequestBody @Valid LoginReqVO vo){
        DataResult<LoginRespVO> result=DataResult.success();
        result.setData(userService.login(vo));
        return result;
    }






}
