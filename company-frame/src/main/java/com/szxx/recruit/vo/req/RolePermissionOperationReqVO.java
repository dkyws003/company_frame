package com.szxx.recruit.vo.req;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import java.util.List;

/**
 * @ClassName: RolePermissionOperationReqVO
 * TODO:类文件简单描述
 * @Author: yws
 * @CreateDate: 2020/9/20 15:47
 * @UpdateUser: yws
 * @UpdateDate: 2020/9/20 15:47
 * @Version: 0.0.1
 */
@Data
public class RolePermissionOperationReqVO {
    @ApiModelProperty(value = "角色id")
    @NotBlank(message = "角色id不能为空")
    private String roleId;
    @ApiModelProperty(value = "菜单权限集合")
    @NotEmpty(message = "菜单权限集合不能为空")
    private List<String> permissionIds;
}
