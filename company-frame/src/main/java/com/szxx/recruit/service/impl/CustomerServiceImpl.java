package com.szxx.recruit.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.szxx.recruit.entity.RecSupplier;
import com.szxx.recruit.exception.BusinessException;
import com.szxx.recruit.exception.code.BaseResponseCode;
import com.szxx.recruit.mapper.RecSupplierMapper;
import com.szxx.recruit.utils.AESUtils;
import com.szxx.recruit.utils.DataResult;
import com.szxx.recruit.utils.PageUtils;
import com.szxx.recruit.vo.req.*;
import com.szxx.recruit.vo.resp.PageVO;
import com.szxx.recruit.entity.CandidateInformation;
import com.szxx.recruit.entity.RecruitmentNeeds;
import com.szxx.recruit.mapper.CandidateInformationMapper;
import com.szxx.recruit.mapper.RecruitmentNeedsMapper;
import com.szxx.recruit.service.CustomerReqService;
import com.szxx.recruit.service.CustomerService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerReqService customerReqService;

    @Autowired
    private RecruitmentNeedsMapper recruitmentNeedsMapper;

    @Autowired
    private CandidateInformationMapper candidateInformationMapper;

    @Autowired
    private RecSupplierMapper recSupplierMapper;

    /*
     *获得并保持需求信息
     * */

    @Transactional
    @Override
    public DataResult getAndSaveReq(String providerCode) throws Exception {
        DataResult<RecruitmentNeeds> result = null;
        //获得请求数据
        String resp = customerReqService.sendRecruitRequest(providerCode);
        //解密
        String res= AESUtils.decrypt(resp,AESUtils.KEY);
        JSONObject jsonObject = JSONObject.parseObject(res);
        int code = jsonObject.getInteger("code");
        String msg = jsonObject.getString("message");
        if (code == 200) {
            result = DataResult.success();
            RecruitmentNeeds needs = new RecruitmentNeeds();
            String data = jsonObject.getString("message");
            JSONObject json = JSONObject.parseObject(data);
            needs = (RecruitmentNeeds) JSONObject.toJavaObject(json, RecruitmentNeeds.class);  //通过JSONObject.toBean()方法进行对象间的转换
            needs.setDeleted(1);//是否删除(1未删除；0已删除)
            needs.setCreateTime(new Date());
            needs.setUpdateTime(new Date());
            needs.setStatus(1);//状态(1:正常；0:弃用)
            needs.setId(UUID.randomUUID().toString());
            recruitmentNeedsMapper.insertSelective(needs);
            result.setData(needs);
        } else {
            result = new DataResult(code, msg);
        }
        return result;
    }

    /*
     *需要先上传简历压缩包，再上送候选人信息
     * */
    @Override
    public DataResult uploadZipFile(MultipartFile file) throws Exception {
        DataResult<RecruitmentNeeds> result = null;
        String res = customerReqService.uploadZipFile(file);
        JSONObject jsonObject = JSONObject.parseObject(res);
        int code = jsonObject.getInteger("code");
        String msg = jsonObject.getString("message");
        if (code == 200) {
            result = DataResult.success(file.getName());
        } else {
            result = new DataResult(code, msg);
        }
        return result;
    }

    /*
     *保存并且上送候选人信息
     * */
    @Transactional
    @Override
    public DataResult saveAndAddCandidateInfo(InfoAddReqVO vo) throws Exception {
        DataResult<RecruitmentNeeds> result = null;
        //获得请求数据
        String resp = customerReqService.addCandidateInfo(vo);
        //解密
        String res= AESUtils.decrypt(resp,AESUtils.KEY);
        JSONObject jsonObject = JSONObject.parseObject(res);
        int code = jsonObject.getInteger("code");
        String msg = jsonObject.getString("message");
        if (code == 200) {
            result = DataResult.success();
            CandidateInformation information = new CandidateInformation();
            BeanUtils.copyProperties(vo, information);
            information.setId(UUID.randomUUID().toString());
            information.setDeleted(1);
            information.setUpdateTime(new Date());
            information.setStatus(1);
            information.setCreateTime(new Date());
            candidateInformationMapper.insertSelective(information);
        } else {
            result = new DataResult(code, msg);
        }
        return result;

    }

    /*
     * 分页获取需求信息接口
     * */
    @Override
    public PageVO<RecruitmentNeeds> pageInfo(needsPageReqVO vo) {
        PageHelper.startPage(vo.getPageNum(),vo.getPageSize());
        List<RecruitmentNeeds> needs = recruitmentNeedsMapper.selectAll(vo);
        return PageUtils.getPageVO(needs);

    }
    /*
     * 删除需求
     * */
    @Override
    public void deletedNeeds(List<String> ids) {
        RecruitmentNeeds needs=new RecruitmentNeeds();
        needs.setUpdateTime(new Date());
        needs.setDeleted(0);
        int i = recruitmentNeedsMapper.deletedNeeds(ids);
        if (i==0){
            throw new BusinessException(BaseResponseCode.OPERATION_ERRO);
        }
    }
    /*
     * 分页获取已上传候选人信息接口
     * */
    @Override
    public PageVO<CandidateInformation> getPageCandidates(infoPageReqVO vo) {
        PageHelper.startPage(vo.getPageNum(),vo.getPageSize());
        List<CandidateInformation> needs = candidateInformationMapper.selectAll(vo);
        return PageUtils.getPageVO(needs);
    }
    /*
     * 获得供应商信息列表
     * */
    @Override
    public PageVO<RecSupplier> getPageSupplier(supplierPageReqVO vo) {
        PageHelper.startPage(vo.getPageNum(),vo.getPageSize());
        List<RecSupplier> list = recSupplierMapper.selectAll(vo);
        return PageUtils.getPageVO(list);
    }
    /*
     * 更新选择状态
     * */
    @Override
    public void updateSwitch(UpdateSwitchVO vo) {
        RecruitmentNeeds needs=new RecruitmentNeeds();
        needs.setUpdateTime(new Date());
        needs.setStatus(vo.getStatus());
        needs.setId(vo.getId());
        int i = recruitmentNeedsMapper.updateByPrimaryKeySelective(needs);
        if (i==0){
            throw new BusinessException(BaseResponseCode.OPERATION_ERRO);
        }
    }


}
