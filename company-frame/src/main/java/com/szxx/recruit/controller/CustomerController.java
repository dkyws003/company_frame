package com.szxx.recruit.controller;

import com.szxx.recruit.aop.annotation.LogAnnotation;
import com.szxx.recruit.constants.Constant;
import com.szxx.recruit.entity.CandidateInformation;
import com.szxx.recruit.entity.RecSupplier;
import com.szxx.recruit.entity.RecruitmentNeeds;
import com.szxx.recruit.exception.code.BaseResponseCode;
import com.szxx.recruit.service.CustomerService;
import com.szxx.recruit.utils.DataResult;
import com.szxx.recruit.utils.JwtTokenUtil;
import com.szxx.recruit.vo.req.*;
import com.szxx.recruit.vo.resp.PageVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import lombok.extern.log4j.Log4j2;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

@Log4j2
@RequestMapping("/customer")
@RestController
@Api(tags = "客户模块-招聘管理")
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @PostMapping("/sendRecruitRequest")
    @ApiOperation(value = "发送招聘需求接口")
    @LogAnnotation(title = "客户模块", action = "招聘需求")
    //@RequiresPermissions("sys:dept:add")
    public DataResult<RecruitmentNeeds> sendRecruitRequest(@Valid @RequestBody RequestDataReqVO vo,BindingResult bindingResult)
            throws Exception {
        DataResult<RecruitmentNeeds> result=null;
        if(bindingResult.hasErrors()){
            result=new DataResult(BaseResponseCode.OPERATION_ERRO.getCode(),bindingResult.getFieldError().getDefaultMessage());
            return result;
        }
        log.info("=====");
        result = customerService.getAndSaveReq(vo.getProviderCode());
        return result;
    }


    @PostMapping("/uploadZipFile")
    @ApiOperation(value = "上传简历压缩包")
    @LogAnnotation(title = "客户模块", action = "上传简历压缩包")
    //@RequiresPermissions("sys:dept:add")
    public DataResult uploadZipFile(MultipartFile file,
         HttpServletRequest request) throws Exception {
         log.info("=====");
         DataResult result = customerService.uploadZipFile(file);
         return result;
    }

    @PostMapping("/addCandidateInfo")
    @ApiOperation(value = "上送候选人信息接口")
    @LogAnnotation(title = "客户模块", action = "上送候选人信息")
    //@RequiresPermissions("sys:dept:add")
    public DataResult addCandidateInfo(@RequestBody @Valid InfoAddReqVO vo, BindingResult bindingResult) throws Exception {
        DataResult result=null;
        if(bindingResult.hasErrors()){
            result=new DataResult(BaseResponseCode.OPERATION_ERRO.getCode(),bindingResult.getFieldError().getDefaultMessage());
            return result;
        }
         result = customerService.saveAndAddCandidateInfo(vo);
         return result;
    }
    //----------------------------------------------------    * */
   /*
    *
    * 获得需求列表
    */
    @PostMapping("/needs")
    @ApiOperation(value = "分页获取需求信息接口")
    @LogAnnotation(title = "客户管理",action = "分页获取需求信息")
    @RequiresPermissions("sys:infos:list")
    public DataResult<PageVO<RecruitmentNeeds>> pageInfo(
            @RequestBody needsPageReqVO vo){
        DataResult<PageVO<RecruitmentNeeds>> result=DataResult.success();
        result.setData(customerService.pageInfo(vo));
        return result;
    }

    /*
     *
     * 需求列表更新状态
     */
    @PostMapping("/update")
    @ApiOperation(value = "更改需求状态接口")
    @LogAnnotation(title = "客户管理",action = "更改需求状态")
    // @RequiresPermissions("sys:infos:deleted")
    public DataResult update(@RequestBody @Valid UpdateSwitchVO vo,BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            DataResult result=new DataResult(BaseResponseCode.OPERATION_ERRO,bindingResult.getFieldError().getDefaultMessage());
            return result;
        }
        customerService.updateSwitch(vo);
        return DataResult.success();
    }


    /*===========*/

    /*
     *
     * 需求列表删除
     */
    @DeleteMapping("/delete")
    @ApiOperation(value = "删除需求接口")
    @LogAnnotation(title = "客户管理",action = "删除需求")
   // @RequiresPermissions("sys:infos:deleted")
    public DataResult delete(
          @RequestBody @ApiParam(value = "id集合")
          List<String> ids, HttpServletRequest request){
          if(ids==null||ids.size()==0){
              DataResult result=new DataResult(BaseResponseCode.OPERATION_ERRO,BaseResponseCode.OPERATION_ERRO.getMsg());
              return result;
          }
          String operationId= JwtTokenUtil.getUserId(request.getHeader(Constant.ACCESS_TOKEN));
          customerService.deletedNeeds(ids);
          return DataResult.success();
    }


    /*
     *
     * 获得候选列表
     */
    @PostMapping("/getcandidates")
    @ApiOperation(value = "分页获取候选信息接口")
    @LogAnnotation(title = "客户管理",action = "分页获取候选信息")
    @RequiresPermissions("sys:infos:list")
    public DataResult<PageVO<CandidateInformation>> getPageCandidates(
            @RequestBody infoPageReqVO vo ){
        DataResult<PageVO<CandidateInformation>> result=DataResult.success();
        result.setData(customerService.getPageCandidates(vo));
        return result;
    }
    /*
     *
     * 获得候选列表
     */
    @PostMapping("/getsupplier")
    @ApiOperation(value = "分页获取供应商信息接口")
    @LogAnnotation(title = "客户管理",action = "分页获取应商信息")
    @RequiresPermissions("sys:infos:list")
    public DataResult<PageVO<RecSupplier>> getPageSupplier(
            @RequestBody supplierPageReqVO vo ){
        DataResult<PageVO<RecSupplier>> result=DataResult.success();
        result.setData(customerService.getPageSupplier(vo));
        return result;
    }




}
