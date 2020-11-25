package com.pengpeng.v4.utils;

import java.util.Calendar;
import java.util.Date;

/**
 * @author 微笑的你
 * @version 1.0
 * @date 2019/12/18 9:32
 * 时间工具类
 */
public class DateMemberUtils {


    /**
     * 获取这个月有多少天
     * @param year
     * @param month
     * @return
     */
    public static int getDayOfMonth(int year,int month){
        Calendar c = Calendar.getInstance();
        c.set(year,month,0);
        return c.get(Calendar.DAY_OF_MONTH);
    }

    /**
     * 当前时间相加减
     * @param date
     * @param day
     * @return
     */
    public static Date addDate(Date date, int day,String timeType) {
        Calendar rightNow = Calendar.getInstance();
        rightNow.setTime(date);

        //年
        if (timeType.equals("year")){
            rightNow.add(Calendar.YEAR,day);
        }

        //月
        if (timeType.equals("month")){
            rightNow.add(Calendar.MONTH,day);
        }

        //天
        if(timeType.equals("day")){
            rightNow.add(Calendar.DAY_OF_YEAR,day);
        }

        //小时
        if (timeType.equals("hour")){

            rightNow.add(Calendar.HOUR,day);
        }

        Date dt1=rightNow.getTime();
        System.out.println(dt1);
        return dt1;
    }



}
