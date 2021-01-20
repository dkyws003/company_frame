package com.szxx.recruit.service;

import com.szxx.recruit.entity.RecSupplier;
import com.szxx.recruit.utils.DataResult;
import com.szxx.recruit.vo.req.*;
import com.szxx.recruit.vo.resp.PageVO;
import com.szxx.recruit.entity.CandidateInformation;
import com.szxx.recruit.entity.RecruitmentNeeds;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface CustomerService {

    /*
     *获得并保持需求信息
    * */
    DataResult getAndSaveReq(String providerCode) throws Exception;
    /*
     *需要先上传简历压缩包，再上送候选人信息
     * */

    DataResult uploadZipFile(MultipartFile file) throws Exception;
    /*
     *保存并且上送候选人信息
     * */
    DataResult saveAndAddCandidateInfo(InfoAddReqVO vo) throws Exception;
    /*
    * 分页获取需求信息接口
    * */
    PageVO<RecruitmentNeeds> pageInfo(needsPageReqVO vo);
    /*
    * 删除需求
    * */
    void deletedNeeds(List<String> ids);
    /*
     * 分页获取已上传候选人信息接口
     * */
    PageVO<CandidateInformation> getPageCandidates(infoPageReqVO vo);
    /*
    * 获得供应商信息列表
    * */
    PageVO<RecSupplier> getPageSupplier(supplierPageReqVO vo);
    /*
    * 更新选择状态
    * */
    void updateSwitch(UpdateSwitchVO vo);
}
