package com.szxx.recruit.vo.resp;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;

/**
 * @ClassName: DeptRespNodeVO
 * TODO:类文件简单描述
 * @Author: yws
 * @CreateDate: 2020/9/19 22:01
 * @UpdateUser: yws
 * @UpdateDate: 2020/9/19 22:01
 * @Version: 0.0.1
 */
@Data
public class DeptRespNodeVO {
    @ApiModelProperty(value = "组织id")
    private String id;

    @ApiModelProperty(value = "组织编码")
    private String deptNo;

    @ApiModelProperty(value = "组织名称")
    private String title;

    @ApiModelProperty(value = "组织父级id")
    private String pid;

    @ApiModelProperty(value = "组织状态")
    private Integer status;

    @ApiModelProperty(value = "组织关系id")
    private String relationCode;

    @ApiModelProperty(value = "是否展开 默认不展开(false)")
    private boolean spread;


    @ApiModelProperty(value = "子集")
    private List<?> children;
}
