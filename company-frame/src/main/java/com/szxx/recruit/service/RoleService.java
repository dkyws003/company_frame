package com.szxx.recruit.service;

import com.szxx.recruit.entity.SysRole;
import com.szxx.recruit.vo.req.RoleAddReqVO;
import com.szxx.recruit.vo.req.RolePageReqVO;
import com.szxx.recruit.vo.req.RoleUpdateReqVO;
import com.szxx.recruit.vo.resp.PageVO;

import java.util.List;

/**
 * @ClassName: RoleService
 * TODO:类文件简单描述
 * @Author: yws
 * @CreateDate: 2020/9/19 11:38
 * @UpdateUser: yws
 * @UpdateDate: 2020/9/19 11:38
 * @Version: 0.0.1
 */
public interface RoleService {

    SysRole addRole(RoleAddReqVO vo);

    void updateRole(RoleUpdateReqVO vo,String accessToken);

    SysRole detailInfo(String id);

    void deletedRole(String id);

    PageVO<SysRole> pageInfo(RolePageReqVO vo);

    List<SysRole> getRoleInfoByUserId(String userId);

    List<String> getRoleNames(String userId);

    List<SysRole> selectAllRoles();
}
