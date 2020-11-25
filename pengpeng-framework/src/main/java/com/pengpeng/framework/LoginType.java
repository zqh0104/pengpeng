package com.pengpeng.framework;


public enum LoginType {

    PHONE("phone"),
    WX("wx");
    private String value;

    LoginType(String value) {
        this.value = value;
    }

    public String getValue() {
        return this.value;
    }
}