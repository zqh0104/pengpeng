package com.pengpeng.common.exception.user;

public class UserLoginPhoneException extends UserException{

    public UserLoginPhoneException() {
        super("user.phone.exists",null);
    }
}
