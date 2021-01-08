package com.szxx.recruit.vo.resp;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

/**
 * @ClassName: UserInfoRespVO
 * TODO:类文件简单描述
 * @Author: yws
 * @CreateDate: 2020/10/25 17:02
 * @UpdateUser: yws
 * @UpdateDate: 2020/10/25 17:02
 * @Version: 0.0.1
 */
@Data
public class UserInfoRespVO {
    @ApiModelProperty(value = "用户id")
    private String id;
    @ApiModelProperty(value = "账号")
    private String username;
    @ApiModelProperty(value = "手机号")
    private String phone;
    @ApiModelProperty(value = "昵称")
    private String nickName;
    @ApiModelProperty(value = "真实姓名")
    private String realName;
    @ApiModelProperty(value = "所属机构id")
    private String deptId;
    @ApiModelProperty(value = "所属机构名称")
    private String deptName;

}
