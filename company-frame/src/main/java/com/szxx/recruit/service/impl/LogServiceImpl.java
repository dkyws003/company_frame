package com.szxx.recruit.service.impl;

import com.github.pagehelper.PageHelper;
import com.szxx.recruit.entity.SysLog;
import com.szxx.recruit.mapper.SysLogMapper;
import com.szxx.recruit.service.LogService;
import com.szxx.recruit.utils.PageUtils;
import com.szxx.recruit.vo.req.SysLogPageReqVO;
import com.szxx.recruit.vo.resp.PageVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName: LogServiceImpl
 * TODO:类文件简单描述
 * @Author: yws
 * @CreateDate: 2020/9/23 16:18
 * @UpdateUser: yws
 * @UpdateDate: 2020/9/23 16:18
 * @Version: 0.0.1
 */
@Service
public class LogServiceImpl implements LogService {
    @Autowired
    private SysLogMapper sysLogMapper;

    @Override
    public PageVO<SysLog> pageInfo(SysLogPageReqVO vo) {

        PageHelper.startPage(vo.getPageNum(),vo.getPageSize());
        List<SysLog> sysLogs = sysLogMapper.selectAll(vo);
        return PageUtils.getPageVO(sysLogs);
    }

    @Override
    public void deleted(List<String> logIds) {
        sysLogMapper.batchDeletedLog(logIds);
    }
}
