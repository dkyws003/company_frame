package com.szxx.recruit.controller;

import com.szxx.recruit.aop.annotation.LogAnnotation;
import com.szxx.recruit.service.UserRoleService;
import com.szxx.recruit.utils.DataResult;
import com.szxx.recruit.vo.req.UserRoleOperationReqVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

/**
 * @ClassName: UserRolerController
 * TODO:类文件简单描述
 * @Author: yws
 * @CreateDate: 2020/9/19 11:38
 * @UpdateUser: yws
 * @UpdateDate: 2020/9/19 11:38
 * @Version: 0.0.1
 */
@RequestMapping("/sys")
@RestController
@Api(tags = "组织管理-用户和角色关联接口")
public class UserRoleController {
    @Autowired
    private UserRoleService userRoleService;
    
    @PostMapping("/user/role")
    @ApiOperation(value = "修改或者新增用户角色接口")
    @LogAnnotation(title = "用户和角色关联接口",action = "修改或者新增用户角色")
    public DataResult operationUserRole(@RequestBody @Valid UserRoleOperationReqVO vo){
        userRoleService.addUserRoleInfo(vo);
        return DataResult.success();
    }
}
