package com.szxx.recruit.service.impl;

import com.szxx.recruit.entity.SysDept;
import com.szxx.recruit.entity.SysUser;
import com.szxx.recruit.service.DeptService;
import com.szxx.recruit.service.HomeService;
import com.szxx.recruit.service.PermissionService;
import com.szxx.recruit.service.UserService;
import com.szxx.recruit.vo.resp.HomeRespVO;
import com.szxx.recruit.vo.resp.PermissionRespNode;
import com.szxx.recruit.vo.resp.UserInfoRespVO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName: HomeServiceImpl
 * TODO:类文件简单描述
 * @Author: yws
 * @CreateDate: 2020/10/25 21:27
 * @UpdateUser: yws
 * @UpdateDate: 2020/10/25 21:27
 * @Version: 0.0.1
 */
@Service
public class HomeServiceImpl implements HomeService {
    @Autowired
    private UserService userService;
    @Autowired
    private DeptService deptService;
    @Autowired
    private PermissionService permissionService;

    @Override
    public HomeRespVO getHomeInfo(String userId) {


        SysUser sysUser=userService.detailInfo(userId);
        UserInfoRespVO vo=new UserInfoRespVO();

        if(sysUser!=null){
            BeanUtils.copyProperties(sysUser, vo);
            SysDept sysDept = deptService.detailInfo(sysUser.getDeptId());
            if(sysDept!=null){
                vo.setDeptId(sysDept.getId());
                vo.setDeptName(sysDept.getName());
            }

        }

        List<PermissionRespNode> menus = permissionService.permissionTreeList(userId);

        HomeRespVO respVO=new HomeRespVO();
        respVO.setMenus(menus);
        respVO.setUserInfo(vo);

        return respVO;
    }
}
