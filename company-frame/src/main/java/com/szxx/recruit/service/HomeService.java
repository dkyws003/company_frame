package com.szxx.recruit.service;

import com.szxx.recruit.vo.resp.HomeRespVO;

/**
 * @ClassName: HomeService
 * TODO:类文件简单描述
 * @Author: yws
 * @CreateDate: 2020/10/25 21:27
 * @UpdateUser: yws
 * @UpdateDate: 2020/10/25 21:27
 * @Version: 0.0.1
 */
public interface HomeService {

    HomeRespVO getHomeInfo(String userId);
}
