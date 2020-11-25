package com.pengpeng.v4.utils;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2020/1/2 9:35
 */
public class JsonUtils {
    private final static Gson GSON = new GsonBuilder().create();

    public static String toJson(Object obj){
        return GSON.toJson(obj);
    }

    public static <T> T fromJson(String json,Class<T> clazz){
        return GSON.fromJson(json, clazz);
    }
}
