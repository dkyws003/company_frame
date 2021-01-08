package com.szxx.recruit.service;

import com.szxx.recruit.vo.req.UserRoleOperationReqVO;

import java.util.List;

/**
 * @ClassName: UserRoleService
 * TODO:类文件简单描述
 * @Author: yws
 * @CreateDate: 2020/9/19 11:39
 * @UpdateUser: yws
 * @UpdateDate: 2020/9/19 11:39
 * @Version: 0.0.1
 */
public interface UserRoleService {

    int removeByRoleId(String roleId);

    List<String> getRoleIdsByUserId(String userId);


    void addUserRoleInfo(UserRoleOperationReqVO vo);

    int removeByUserId(String userId);


    List<String> getUserIdsByRoleIds(List<String> roleIds);

}
