package com.szxx.recruit.vo.req;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @ClassName: PermissionPageReqVO
 * TODO:类文件简单描述
 * @Author: yws
 * @CreateDate: 2020/9/20 13:59
 * @UpdateUser: yws
 * @UpdateDate: 2020/9/20 13:59
 * @Version: 0.0.1
 */
@Data
public class PermissionPageReqVO {
    @ApiModelProperty(value = "第几页")
    private int pageNum=1;

    @ApiModelProperty(value = "分页数量")
    private int pageSize=10;
}
