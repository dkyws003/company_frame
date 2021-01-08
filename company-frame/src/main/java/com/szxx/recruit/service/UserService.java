package com.szxx.recruit.service;

import com.szxx.recruit.entity.SysUser;
import com.szxx.recruit.vo.req.*;
import com.szxx.recruit.vo.req.*;
import com.szxx.recruit.vo.resp.LoginRespVO;
import com.szxx.recruit.vo.resp.PageVO;
import com.szxx.recruit.vo.resp.UserOwnRoleRespVO;

import java.util.List;

/**
 * @ClassName: UserService
 * TODO:类文件简单描述
 * @Author: yws
 * @CreateDate: 2020/9/7 22:55
 * @UpdateUser: yws
 * @UpdateDate: 2020/9/7 22:55
 * @Version: 0.0.1
 */
public interface UserService {

    String register(RegisterReqVO vo);

    LoginRespVO login(LoginReqVO vo);


    String refreshToken(String refreshToken,String accessToken);

    void updateUserInfo(UserUpdateReqVO vo, String operationId);


    PageVO<SysUser> pageInfo(UserPageReqVO vo);

    SysUser detailInfo(String userId);

    PageVO<SysUser> selectUserInfoByDeptIds(int pageNum, int pageSize,List<String> deptIds);

    void addUser(UserAddReqVO vo);

    void logout(String accessToken,String refreshToken);

    void updatePwd(UpdatePasswordReqVO vo,String userId,String accessToken, String refreshToken);

    List<SysUser> getUserListByDeptId(String deptId);

    List<SysUser> getUserListByDeptIds(List<String> deptIds);

    void deletedUsers(List<String> userIds,String operationId);

    UserOwnRoleRespVO getUserOwnRole(String userId);

    void setUserOwnRole(String userId,List<String> roleIds);
}
