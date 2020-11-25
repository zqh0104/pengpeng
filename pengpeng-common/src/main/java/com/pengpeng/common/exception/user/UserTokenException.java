package com.pengpeng.common.exception.user;

/**
 * 自定义异常(CustomException)
 * @author dolyw.com
 * @date 2018/8/30 13:59
 */
public class UserTokenException extends RuntimeException {

    public UserTokenException(String msg){
        super(msg);
    }

    public UserTokenException() {
        super();
    }
}
