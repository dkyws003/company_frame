package com.szxx.recruit.mapper;

import com.szxx.recruit.entity.SysLog;
import com.szxx.recruit.vo.req.SysLogPageReqVO;

import java.util.List;

public interface SysLogMapper {
    int deleteByPrimaryKey(String id);

    int insert(SysLog record);

    int insertSelective(SysLog record);

    SysLog selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(SysLog record);

    int updateByPrimaryKey(SysLog record);

    void batchDeletedLog(List<String> logIds);

    List<SysLog> selectAll(SysLogPageReqVO vo);
}