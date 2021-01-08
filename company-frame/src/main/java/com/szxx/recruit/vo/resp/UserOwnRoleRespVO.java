package com.szxx.recruit.vo.resp;

import com.szxx.recruit.entity.SysRole;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;

/**
 * @ClassName: UserOwnRoleRespVO
 * TODO:类文件简单描述
 * @Author: yws
 * @CreateDate: 2020/11/3 21:50
 * @UpdateUser: yws
 * @UpdateDate: 2020/11/3 21:50
 * @Version: 0.0.1
 */
@Data
public class UserOwnRoleRespVO {
    @ApiModelProperty("所有角色集合")
    private List<SysRole> allRole;
    @ApiModelProperty(value = "用户所拥有角色集合")
    private List<String> ownRoles;
}
