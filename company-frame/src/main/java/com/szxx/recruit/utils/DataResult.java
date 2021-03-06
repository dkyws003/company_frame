package com.szxx.recruit.utils;

import com.szxx.recruit.exception.code.BaseResponseCode;
import com.szxx.recruit.exception.code.ResponseCodeInterface;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @ClassName: DataResult
 * TODO:类文件简单描述
 * @Author: yws
 * @CreateDate: 2020/9/3 18:02
 * @UpdateUser: yws
 * @UpdateDate: 2020/9/3 18:02
 * @Version: 0.0.1
 */
@Data
public class DataResult <T>{

    /**
     * 请求响应code，0为成功 其他为失败
     */
    @ApiModelProperty(value = "请求响应code，0为成功 其他为失败", name = "code")
    private int code;

    /**
     * 响应异常码详细信息
     */
    @ApiModelProperty(value = "响应异常码详细信息", name = "msg")
    private String message;

    /**
     * 响应内容 ， code 0 时为 返回 数据
     */
    @ApiModelProperty(value = "需要返回的数据", name = "data")
    private T data;

    public DataResult(int code, T data) {
        this.code = code;
        this.data = data;
        this.message=null;
    }

    public DataResult(int code, String msg, T data) {
        this.code = code;
        this.message = msg;
        this.data = data;
    }

    public DataResult(int code, String msg) {
        this.code = code;
        this.message = msg;
        this.data=null;
    }


    public DataResult() {
        this.code= BaseResponseCode.SUCCESS.getCode();
        this.message=BaseResponseCode.SUCCESS.getMsg();
        this.data=null;
    }

    public DataResult(T data) {
        this.data = data;
        this.code=BaseResponseCode.SUCCESS.getCode();
        this.message=BaseResponseCode.SUCCESS.getMsg();
    }

    public DataResult(ResponseCodeInterface responseCodeInterface) {
        this.data = null;
        this.code = responseCodeInterface.getCode();
        this.message = responseCodeInterface.getMsg();
    }

    public DataResult(ResponseCodeInterface responseCodeInterface, T data) {
        this.data = data;
        this.code = responseCodeInterface.getCode();
        this.message = responseCodeInterface.getMsg();
    }
    /**
     * 操作成功 data为null
     * @Author:      yws
     * @CreateDate:  2020/9/4 23:08
     * @UpdateUser:
     * @UpdateDate:  2020/9/4 23:08
     * @Version:     0.0.1
     * @param
     * @return       com.szxx.recruit.utils.DataResult<T>
     * @throws
     */
    public static <T>DataResult success(){
        return new <T>DataResult();
    }
    /**
     * 操作成功 data 不为null
     * @Author:      yws
     * @CreateDate:  2020/9/4 23:09
     * @UpdateUser:
     * @UpdateDate:  2020/9/4 23:09
     * @Version:     0.0.1
     * @param data
     * @return       com.szxx.recruit.utils.DataResult<T>
     * @throws
     */
    public static <T>DataResult success(T data){
        return new <T>DataResult(data);
    }
    /**
     * 自定义 返回操作 data 可控
     * @Author:      yws
     * @CreateDate:  2020/9/4 23:15
     * @UpdateUser:
     * @UpdateDate:  2020/9/4 23:15
     * @Version:     0.0.1
     * @param code
     * @param msg
     * @param data
     * @return       com.szxx.recruit.utils.DataResult
     * @throws
     */
    public static <T>DataResult getResult(int code,String msg,T data){
        return new <T>DataResult(code,msg,data);
    }
    /**
     *  自定义返回  data为null
     * @Author:      yws
     * @CreateDate:  2020/9/4 23:15
     * @UpdateUser:
     * @UpdateDate:  2020/9/4 23:15
     * @Version:     0.0.1
     * @param code
     * @param msg
     * @return       com.szxx.recruit.utils.DataResult
     * @throws
     */
    public static <T>DataResult getResult(int code,String msg){
        return new <T>DataResult(code,msg);
    }
    /**
     * 自定义返回 入参一般是异常code枚举 data为空
     * @Author:      yws
     * @CreateDate:  2020/9/4 23:16
     * @UpdateUser:
     * @UpdateDate:  2020/9/4 23:16
     * @Version:     0.0.1
     * @param responseCode
     * @return       com.szxx.recruit.utils.DataResult
     * @throws
     */
    public static <T>DataResult getResult(BaseResponseCode responseCode){
        return new <T>DataResult(responseCode);
    }
    /**
     * 自定义返回 入参一般是异常code枚举 data 可控
     * @Author:      yws
     * @CreateDate:  2020/9/4 23:16
     * @UpdateUser:
     * @UpdateDate:  2020/9/4 23:16
     * @Version:     0.0.1
     * @param responseCode
     * @param data
     * @return       com.szxx.recruit.utils.DataResult
     * @throws
     */
    public static <T>DataResult getResult(BaseResponseCode responseCode,T data){

        return new <T>DataResult(responseCode,data);
    }
}
