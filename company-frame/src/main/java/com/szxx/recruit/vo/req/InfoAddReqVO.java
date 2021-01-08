package com.szxx.recruit.vo.req;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NonNull;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Date;

@Data
public class InfoAddReqVO implements Serializable {

    @ApiModelProperty(value = "需求主键")
    @NotNull(message = "需求id不为空")
    private String needsId;
    @ApiModelProperty(value = "流程编号")
    private String processCode;
    @ApiModelProperty(value = "姓名")
    @NotNull(message = "姓名不为空")
    private String candidateName;
    @ApiModelProperty(value = "学校")
    @NotNull(message = "学校不为空")
    private String school;
    @ApiModelProperty(value = "岗位名称")
    @NotNull(message = "岗位名称不为空")
    private String personWork;
    @ApiModelProperty(value = "联系方式")
    @NotNull(message = "联系方式不为空")
    private String phone;
    @ApiModelProperty(value = "身份证号")
    private String idCard;
    @ApiModelProperty(value = "可入职时间")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @NotNull(message = "可入职时间不为空")
    private Date entryDate;
    @ApiModelProperty(value = "毕业时间")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @NotNull(message = "毕业时间不为空")
    private Date graduatedDate;
    @ApiModelProperty(value = "专业")
    @NotNull(message = "专业不为空")
    private String profession;
    @ApiModelProperty(value = "性别")
    @NotNull(message = "性别不为空")
    private int sex;
    @ApiModelProperty(value = "供应商名称")
    @NotNull(message = "供应商名称不为空")
    private String pravidorName;
    @ApiModelProperty(value = "合同性质")
    @NotNull(message = "合同性质不为空")
    private int contractNature;
    @ApiModelProperty(value = "到岗日期")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @NotNull(message = "到岗日期不为空")
    private Date arriveDate;
    @ApiModelProperty(value = "在职状态")
    @NotNull(message = "在职状态不为空")
    private String isLeave;
    @ApiModelProperty(value = "报价")
    @NotNull(message = "报价不为空")
    private String price;
    @ApiModelProperty(value = "文件夹名")
    @NotNull(message = "文件夹名不为空")
    private String fileName;
    @ApiModelProperty(value = "简历名称")
    @NotNull(message = "简历名称不为空")
    private String pathName;
}
