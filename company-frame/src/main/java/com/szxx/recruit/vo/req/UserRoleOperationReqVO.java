package com.szxx.recruit.vo.req;

        import io.swagger.annotations.ApiModelProperty;
        import lombok.Data;

        import javax.validation.constraints.NotBlank;
        import javax.validation.constraints.NotEmpty;
        import java.util.List;

/**
 * @ClassName: UserRoleOperationReqVO
 * TODO:类文件简单描述
 * @Author: yws
 * @CreateDate: 2020/9/20 14:40
 * @UpdateUser: yws
 * @UpdateDate: 2020/9/20 14:40
 * @Version: 0.0.1
 */
@Data
public class UserRoleOperationReqVO {
    @ApiModelProperty(value = "用户id")
    @NotBlank(message = "用户id不能为空")
    private String userId;
    @ApiModelProperty(value = "角色id集合")
    @NotEmpty(message = "角色id集合不能为空")
    private List<String> roleIds;
}
