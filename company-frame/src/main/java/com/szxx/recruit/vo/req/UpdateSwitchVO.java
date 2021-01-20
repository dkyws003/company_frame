package com.szxx.recruit.vo.req;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Data
public class UpdateSwitchVO {
    @ApiModelProperty(value = "需求id")
    @NotBlank(message = "id不能为空")
    private String id;
    @ApiModelProperty(value = "需求状态(1:正常；0:弃用)")
    @NotNull(message = "状态不为空")
    private int status;


}
