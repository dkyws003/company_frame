package com.szxx.recruit.mapper;

import com.szxx.recruit.entity.RecSupplier;
import com.szxx.recruit.vo.req.supplierPageReqVO;

import java.util.List;

public interface RecSupplierMapper {
    int deleteByPrimaryKey(String id);

    int insert(RecSupplier record);

    int insertSelective(RecSupplier record);

    RecSupplier selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(RecSupplier record);

    int updateByPrimaryKey(RecSupplier record);

    List<RecSupplier> selectAll(supplierPageReqVO vo);
}