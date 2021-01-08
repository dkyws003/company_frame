package com.szxx.recruit.service;

import com.szxx.recruit.vo.req.InfoAddReqVO;
import org.springframework.web.multipart.MultipartFile;

public interface CustomerReqService {

    /*
     * 发送招聘需求
     * */
    String sendRecruitRequest(String providerCode) throws Exception;

    /*
     *需要先上传简历压缩包，再上送候选人信息
     * */
    String uploadZipFile(MultipartFile file) throws Exception;

    /*
     *上送候选人信息
     * */
    String addCandidateInfo(InfoAddReqVO info) throws Exception;




}
