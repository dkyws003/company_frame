package com.szxx.recruit.service.impl;

import com.github.pagehelper.PageHelper;
import com.szxx.recruit.constants.Constant;
import com.szxx.recruit.exception.BusinessException;
import com.szxx.recruit.exception.code.BaseResponseCode;
import com.szxx.recruit.entity.SysRole;
import com.szxx.recruit.mapper.SysRoleMapper;
import com.szxx.recruit.mapper.SysUserRoleMapper;
import com.szxx.recruit.service.*;
import com.szxx.recruit.service.*;
import com.szxx.recruit.utils.PageUtils;
import com.szxx.recruit.utils.TokenSettings;
import com.szxx.recruit.vo.req.RoleAddReqVO;
import com.szxx.recruit.vo.req.RolePageReqVO;
import com.szxx.recruit.vo.req.RolePermissionOperationReqVO;
import com.szxx.recruit.vo.req.RoleUpdateReqVO;
import com.szxx.recruit.vo.resp.PageVO;
import com.szxx.recruit.vo.resp.PermissionRespNode;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;
import java.util.concurrent.TimeUnit;

/**
 * @ClassName: RoleServiceImpl
 * TODO:类文件简单描述
 * @Author: yws
 * @CreateDate: 2020/9/19 11:40
 * @UpdateUser: yws
 * @UpdateDate: 2020/9/19 11:40
 * @Version: 0.0.1
 */
@Service
@Slf4j
public class RoleServiceImpl implements RoleService {
    @Autowired
    private SysRoleMapper sysRoleMapper;
    @Autowired
    private UserRoleService userRoleService;
    @Autowired
    private RolePermissionService rolePermissionService;
    @Autowired
    private RedisService redisService;
    @Autowired
    private TokenSettings tokenSettings;
    @Autowired
    private SysUserRoleMapper sysUserRoleMapper;
    @Autowired
    private PermissionService permissionService;

    @Transactional(rollbackFor = Exception.class)
    @Override
    public SysRole addRole(RoleAddReqVO vo) {

        SysRole sysRole=new SysRole();
        BeanUtils.copyProperties(vo,sysRole);
        sysRole.setId(UUID.randomUUID().toString());
        sysRole.setCreateTime(new Date());
        int count= sysRoleMapper.insertSelective(sysRole);
        if(count!=1){
            throw new BusinessException(BaseResponseCode.OPERATION_ERRO);
        }
        if(null!=vo.getPermissions()&&!vo.getPermissions().isEmpty()){
            RolePermissionOperationReqVO reqVO=new RolePermissionOperationReqVO();
            reqVO.setRoleId(sysRole.getId());
            reqVO.setPermissionIds(vo.getPermissions());
            rolePermissionService.addRolePermission(reqVO);
        }

        return sysRole;
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void updateRole(RoleUpdateReqVO vo,String accessToken) {
        SysRole sysRole=sysRoleMapper.selectByPrimaryKey(vo.getId());
        if (null==sysRole){
            log.error("传入 的 id:{}不合法",vo.getId());
            throw new BusinessException(BaseResponseCode.DATA_ERROR);
        }
        SysRole update=new SysRole();
        BeanUtils.copyProperties(vo,update);
//        BeanUtils.copyProperties(vo,sysRole);
        update.setUpdateTime(new Date());
        int count=sysRoleMapper.updateByPrimaryKeySelective(update);
        if(count!=1){
            throw new BusinessException(BaseResponseCode.OPERATION_ERRO);
        }
        rolePermissionService.removeByRoleId(sysRole.getId());
        if(null!=vo.getPermissions()&&!vo.getPermissions().isEmpty()){
            RolePermissionOperationReqVO reqVO=new RolePermissionOperationReqVO();
            reqVO.setRoleId(sysRole.getId());
            reqVO.setPermissionIds(vo.getPermissions());
            rolePermissionService.addRolePermission(reqVO);

            List<String> userIds=sysUserRoleMapper.getInfoByUserIdByRoleId(vo.getId());

            if(!userIds.isEmpty()){
                for (String userId:userIds){
                    redisService.set(Constant.JWT_REFRESH_KEY +userId,userId,tokenSettings.getAccessTokenExpireTime().toMillis(), TimeUnit.MILLISECONDS);
                    //清空权鉴缓存
                    redisService.delete(Constant.IDENTIFY_CACHE_KEY+userId);
                }

            }

        }

    }

    @Override
    public SysRole detailInfo(String id) {
        SysRole sysRole = sysRoleMapper.selectByPrimaryKey(id);
        if(sysRole==null){
            log.error("传入 的 id:{}不合法",id);
            throw new BusinessException(BaseResponseCode.DATA_ERROR);
        }
        List<PermissionRespNode> permissionRespNodes = permissionService.selectAllByTree();
        Set<String> checkList=new HashSet<>(rolePermissionService.getPermissionIdsByRoleId(sysRole.getId()));
        setheckced(permissionRespNodes,checkList);
        sysRole.setPermissionRespNodes(permissionRespNodes);
        return sysRole;
    }


    private void setheckced(List<PermissionRespNode> list, Set<String> checkList){

        for(PermissionRespNode node:list){

            if(checkList.contains(node.getId())&&(node.getChildren()==null||node.getChildren().isEmpty())){
                node.setChecked(true);
            }
            setheckced((List<PermissionRespNode>) node.getChildren(),checkList);

        }
    }


    @Transactional(rollbackFor = Exception.class)
    @Override
    public void deletedRole(String id) {
        SysRole sysRole=new SysRole();
        sysRole.setId(id);
        sysRole.setUpdateTime(new Date());
        sysRole.setDeleted(0);
        int count=sysRoleMapper.updateByPrimaryKeySelective(sysRole);
        if (count!=1){
            throw new BusinessException(BaseResponseCode.OPERATION_ERRO);
        }
        List<String> userIds=sysUserRoleMapper.getInfoByUserIdByRoleId(id);
        rolePermissionService.removeByRoleId(id);
        userRoleService.removeByRoleId(id);

        if(!userIds.isEmpty()){
            for (String userId:userIds){
                redisService.set(Constant.JWT_REFRESH_KEY +userId,userId,tokenSettings.getAccessTokenExpireTime().toMillis(), TimeUnit.MILLISECONDS);
                //清空权鉴缓存
                redisService.delete(Constant.IDENTIFY_CACHE_KEY+userId);
            }

        }
    }

    @Override
    public PageVO<SysRole> pageInfo(RolePageReqVO vo) {
        PageHelper.startPage(vo.getPageNum(),vo.getPageSize());
        List<SysRole> sysRoles =sysRoleMapper.selectAll(vo);
        return PageUtils.getPageVO(sysRoles);
    }

    @Override
    public List<SysRole> getRoleInfoByUserId(String userId) {

        List<String> roleIds=userRoleService.getRoleIdsByUserId(userId);
        if (roleIds.isEmpty()){
            return null;
        }
        return sysRoleMapper.getRoleInfoByIds(roleIds);
    }

    @Override
    public List<String> getRoleNames(String userId) {

        List<SysRole> sysRoles=getRoleInfoByUserId(userId);
        if (null==sysRoles||sysRoles.isEmpty()){
            return null;
        }
        List<String> list=new ArrayList<>();
        for (SysRole sysRole:sysRoles){
            list.add(sysRole.getName());
        }
        return list;
    }

    @Override
    public List<SysRole> selectAllRoles() {

        return sysRoleMapper.selectAll(new RolePageReqVO());
    }

}
