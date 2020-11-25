package com.pengpeng.common.exception.user;

import com.pengpeng.common.exception.base.BaseException;

/**
 * 用户信息异常类
 * 
 * @author pengpeng
 */
public class UserException extends BaseException
{
    private static final long serialVersionUID = 1L;

    public UserException(String code, Object[] args)
    {
        super("user", code, args, null);
    }
}
