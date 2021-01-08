package com.szxx.recruit.service;

import com.szxx.recruit.entity.SysDept;
import com.szxx.recruit.entity.SysUser;
import com.szxx.recruit.vo.req.DeptAddReqVO;
import com.szxx.recruit.vo.req.DeptPageReqVO;
import com.szxx.recruit.vo.req.DeptUpdateReqVO;
import com.szxx.recruit.vo.req.UserPageUserByDeptReqVO;
import com.szxx.recruit.vo.resp.DeptRespNodeVO;
import com.szxx.recruit.vo.resp.PageVO;

import java.util.List;

/**
 * @ClassName: DeptService
 * TODO:类文件简单描述
 * @Author: yws
 * @CreateDate: 2020/9/19 11:38
 * @UpdateUser: yws
 * @UpdateDate: 2020/9/19 11:38
 * @Version: 0.0.1
 */
public interface DeptService {

    SysDept addDept(DeptAddReqVO vo);

    void updateDept(DeptUpdateReqVO vo);

    SysDept detailInfo(String id);

    void deleted(String id);

    PageVO<SysDept> pageInfo(DeptPageReqVO vo);


    List<DeptRespNodeVO> deptTreeList(String deptId);

    PageVO<SysUser> pageDeptUserInfo(UserPageUserByDeptReqVO vo);

    List<SysDept> selectAll();
}
