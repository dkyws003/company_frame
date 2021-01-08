package com.szxx.recruit.service;

import com.szxx.recruit.entity.SysLog;
import com.szxx.recruit.vo.req.SysLogPageReqVO;
import com.szxx.recruit.vo.resp.PageVO;

import java.util.List;

/**
 * @ClassName: LogService
 * TODO:类文件简单描述
 * @Author: yws
 * @CreateDate: 2020/9/23 16:17
 * @UpdateUser: yws
 * @UpdateDate: 2020/9/23 16:17
 * @Version: 0.0.1
 */
public interface LogService {

    PageVO<SysLog> pageInfo(SysLogPageReqVO vo);

    void deleted(List<String> logIds);
}
