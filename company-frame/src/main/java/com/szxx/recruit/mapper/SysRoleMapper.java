package com.szxx.recruit.mapper;

import com.szxx.recruit.entity.SysRole;
import com.szxx.recruit.vo.req.RolePageReqVO;

import java.util.List;

public interface SysRoleMapper {
    int deleteByPrimaryKey(String id);

    int insert(SysRole record);

    int insertSelective(SysRole record);

    SysRole selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(SysRole record);

    int updateByPrimaryKey(SysRole record);

    List<SysRole> selectAll(RolePageReqVO vo);

    List<SysRole> getRoleInfoByIds(List<String> ids);


}