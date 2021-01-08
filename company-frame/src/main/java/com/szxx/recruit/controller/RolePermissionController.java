package com.szxx.recruit.controller;

import com.szxx.recruit.aop.annotation.LogAnnotation;
import com.szxx.recruit.service.RolePermissionService;
import com.szxx.recruit.utils.DataResult;
import com.szxx.recruit.vo.req.RolePermissionOperationReqVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

/**
 * @ClassName: RolePermissionController
 * TODO:类文件简单描述
 * @Author: yws
 * @CreateDate: 2020/9/19 11:37
 * @UpdateUser: yws
 * @UpdateDate: 2020/9/19 11:37
 * @Version: 0.0.1
 */
@RequestMapping("/sys")
@RestController
@Api(tags = "组织管理-角色和菜单关联接口")
public class RolePermissionController {
    @Autowired
    private RolePermissionService rolePermissionService;

    @PostMapping("/role/permission")
    @ApiOperation(value = "修改或者新增角色菜单权限接口")
    @LogAnnotation(title = "角色和菜单关联接口",action = "修改或者新增角色菜单权限")
    @RequiresPermissions(value = {"sys:role:update","sys:role:add"},logical = Logical.OR)
    public DataResult operationRolePermission(@RequestBody @Valid RolePermissionOperationReqVO vo){
        rolePermissionService.addRolePermission(vo);
        return DataResult.success();
    }
}
