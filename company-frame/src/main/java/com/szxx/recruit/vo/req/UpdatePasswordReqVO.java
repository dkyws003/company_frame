package com.szxx.recruit.vo.req;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @ClassName: UpdatePasswordReqVO
 * TODO:类文件简单描述
 * @Author: yws
 * @CreateDate: 2020/10/27 0:27
 * @UpdateUser: yws
 * @UpdateDate: 2020/10/27 0:27
 * @Version: 0.0.1
 */
@Data
public class UpdatePasswordReqVO {
    @ApiModelProperty(value = "旧密码")
    private String oldPwd;
    @ApiModelProperty(value = "新密码")
    private String newPwd;
}
