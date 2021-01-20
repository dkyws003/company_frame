package com.szxx.recruit.mapper;

import com.szxx.recruit.entity.RecruitmentNeeds;
import com.szxx.recruit.vo.req.needsPageReqVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RecruitmentNeedsMapper {
    int deleteByPrimaryKey(String id);

    int insert(RecruitmentNeeds record);

    int insertSelective(RecruitmentNeeds record);

    RecruitmentNeeds selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(RecruitmentNeeds record);

    int updateByPrimaryKey(RecruitmentNeeds record);

    List<RecruitmentNeeds> selectAll(needsPageReqVO vo);

    int deletedNeeds(@Param("ids") List<String> ids);

}