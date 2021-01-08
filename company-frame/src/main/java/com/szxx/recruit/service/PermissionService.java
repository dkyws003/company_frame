package com.szxx.recruit.service;

import com.szxx.recruit.entity.SysPermission;
import com.szxx.recruit.vo.req.PermissionAddReqVO;
import com.szxx.recruit.vo.req.PermissionPageReqVO;
import com.szxx.recruit.vo.req.PermissionUpdateReqVO;
import com.szxx.recruit.vo.resp.PageVO;
import com.szxx.recruit.vo.resp.PermissionRespNode;

import java.util.List;
import java.util.Set;

/**
 * @ClassName: PermissionService
 * TODO:类文件简单描述
 * @Author: yws
 * @CreateDate: 2020/9/19 11:39
 * @UpdateUser: yws
 * @UpdateDate: 2020/9/19 11:39
 * @Version: 0.0.1
 */
public interface PermissionService {

    List<SysPermission> getPermission(String userId);

    SysPermission addPermission(PermissionAddReqVO vo);

    SysPermission detailInfo(String permissionId);

    void updatePermission(PermissionUpdateReqVO vo);

    void deleted(String permissionId);

    PageVO<SysPermission> pageInfo(PermissionPageReqVO vo);

    List<SysPermission> selectAll();

    Set<String> getPermissionsByUserId(String userId);

    List<PermissionRespNode> permissionTreeList(String userId);

    List<PermissionRespNode> selectAllByTree();

    List<PermissionRespNode> selectAllMenuByTree(String permissionId);

}
