package com.szxx.recruit.service.impl;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.szxx.recruit.constants.Constant;
import com.szxx.recruit.utils.AESUtils;
import com.szxx.recruit.vo.req.InfoAddReqVO;
import com.szxx.recruit.service.CustomerReqService;
import io.itit.itf.okhttp.FastHttpClient;
import io.itit.itf.okhttp.Response;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;


@Service
public class CustomerReqServiceImpl implements CustomerReqService {

    /*
     * 发送招聘需求
     * */
    @Override
    public String sendRecruitRequest(String providerCode) throws Exception {

        String url= Constant.SEND_RECRUIT_REQUEST;
        //String resp= FastHttpClient.post().url(url).build().execute().string();

        JSONObject jsonObject=new JSONObject();
        jsonObject.put("providerCode",providerCode);
        String bodyciphertext= AESUtils.encrypt(jsonObject.toJSONString(),AESUtils.KEY);
        Response response=FastHttpClient.
                post().
                addHeader("Content-Type","application/json").
                body(bodyciphertext).
                url(url).
                build().
                execute();
          String resp=response.body().string().toString();
          return resp;
    }
    /*
     *需要先上传简历压缩包，再上送候选人信息
     * */
    @Override
    public String uploadZipFile(MultipartFile file) throws Exception {
        String url= Constant.UPLOAD_ZIP_FILE;
        InputStream is=file.getInputStream();//new FileInputStream(file.getInputStream());
        Response response = FastHttpClient.newBuilder().
                connectTimeout(10, TimeUnit.SECONDS).
                build().
                post().
                url(url).
                addFile("file", file.getName(),is).
                build().
                execute();
       // logger.info(response.body().string());
        return response.body().string();
    }
    /*
     *上送候选人信息
     * */
    @Override
    public String addCandidateInfo(InfoAddReqVO info) throws Exception {
       /* String url= Constant.ADD_CANDIDATE_INFO;
        Map<String,Object> paramMap=objectToMap(info);
        String resp= FastHttpClient.post().url(url).addParams(paramMap).build().execute().string();
        return resp;*/
        String url= Constant.ADD_CANDIDATE_INFO;
      /*  Map<String,Object> paramMap=objectToMap(info);
        String bodyciphertext= AESUtils.encrypt(paramMap.toString(),AESUtils.KEY);
   */
        List<InfoAddReqVO> list=new ArrayList<>();
        list.add(info);
        //2.将list转换为json格式
        String json = JSONArray.toJSONString(list).toString();
        String bodyciphertext= AESUtils.encrypt(json,AESUtils.KEY);

        Response response=FastHttpClient.
                post().
                addHeader("Content-Type","application/json").
                body(bodyciphertext).
                url(url).
                build().
                execute();
        String resp=response.body().string().toString();
        return resp;

    }
    /**
     * 将Object对象里面的属性和值转化成Map对象
     *
     * @param obj
     * @return
     * @throws IllegalAccessException
     */
    public static Map<String, Object> objectToMap(Object obj) throws IllegalAccessException {
        Map<String, Object> map = new HashMap<String,Object>();
        Class<?> clazz = obj.getClass();
        for (Field field : clazz.getDeclaredFields()) {
            field.setAccessible(true);
            String fieldName = field.getName();
        /*  Object value = StringUtils.nvl(field.get(obj));*/
            map.put(fieldName, field.get(obj));
        }
        return map;
    }
}
