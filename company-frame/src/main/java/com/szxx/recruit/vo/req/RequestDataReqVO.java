package com.szxx.recruit.vo.req;

import lombok.Data;

import javax.validation.constraints.NotNull;

@Data
public class RequestDataReqVO {
    @NotNull(message = "供应商不为空")
    private String providerCode;
}
