package com.szxx.recruit.mapper;

import com.szxx.recruit.vo.req.infoPageReqVO;
import com.szxx.recruit.entity.CandidateInformation;

import java.util.List;

public interface CandidateInformationMapper {

    int insert(CandidateInformation record);

    int insertSelective(CandidateInformation record);
    //查询所有候选人信息
    List<CandidateInformation> selectAll(infoPageReqVO vo);
}