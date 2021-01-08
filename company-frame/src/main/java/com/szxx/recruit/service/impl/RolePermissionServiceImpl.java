package com.szxx.recruit.service.impl;

import com.szxx.recruit.exception.BusinessException;
import com.szxx.recruit.exception.code.BaseResponseCode;
import com.szxx.recruit.entity.SysRolePermission;
import com.szxx.recruit.mapper.SysRolePermissionMapper;
import com.szxx.recruit.service.RolePermissionService;
import com.szxx.recruit.vo.req.RolePermissionOperationReqVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * @ClassName: RolePermissionServiceImpl
 * TODO:类文件简单描述
 * @Author: yws
 * @CreateDate: 2020/9/19 11:41
 * @UpdateUser: yws
 * @UpdateDate: 2020/9/19 11:41
 * @Version: 0.0.1
 */
@Service
public class RolePermissionServiceImpl implements RolePermissionService {
    @Autowired
    private SysRolePermissionMapper sysRolePermissionMapper;

    @Override
    public int removeByRoleId(String roleId) {
        return sysRolePermissionMapper.removeByRoleId(roleId);
    }

    @Override
    public List<String> getPermissionIdsByRoles(List<String> roleIds) {

        return sysRolePermissionMapper.getPermissionIdsByRoles(roleIds);
    }

    @Override
    public void addRolePermission(RolePermissionOperationReqVO vo) {

        Date createTime=new Date();
        List<SysRolePermission> list=new ArrayList<>();
        for (String permissionId:vo.getPermissionIds()){
            SysRolePermission sysRolePermission=new SysRolePermission();
            sysRolePermission.setId(UUID.randomUUID().toString());
            sysRolePermission.setCreateTime(createTime);
            sysRolePermission.setPermissionId(permissionId);
            sysRolePermission.setRoleId(vo.getRoleId());
            list.add(sysRolePermission);
        }
        sysRolePermissionMapper.removeByRoleId(vo.getRoleId());
        int count=sysRolePermissionMapper.batchRolePermission(list);
        if (count==0){
            throw new BusinessException(BaseResponseCode.OPERATION_ERRO);
        }
    }

    @Override
    public int removeByPermissionId(String permissionId) {

        return sysRolePermissionMapper.removeByPermissionId(permissionId);
    }

    @Override
    public List<String> getRoleIds(String permissionId) {

        return sysRolePermissionMapper.getRoleIds(permissionId);
    }

    @Override
    public List<String> getPermissionIdsByRoleId(String roleId) {

        return sysRolePermissionMapper.getPermissionIdsByRoleId(roleId);
    }
}
