package com.pengpeng.common.utils.randomUsername;

import java.util.*;

public class randomUsernameUtil  {
    private static Random rand;
    static{
        rand=new Random();
    }
    private randomUsernameUtil(){};
    /**
     * 生成一批用户id
     * <br>生成规则：
     * 字母加数字的固定5位，前三位为小写字母，后两位为数字
     * @param oldUserIds 系统中原有的用户id列表，避免重复
     * @param num 要获取多少个用户编号
     * @return
     */
    public static List<String> getUserIds(List<String> oldUserIds,int num){
        List<String> ids=new ArrayList<String>();
        while(ids.size()<num){
            StringBuffer sb=new StringBuffer();
            for(int j=1;j<=5;j++){
                if(j<=3){//前三位获取字母
                    sb.append(getLetter());
                }else{//后两位用数字
                    sb.append(getNum());
                }
            }
            String userName=sb.toString();
            if(oldUserIds.contains(userName)||ids.contains(userName)){
                //已存在，重新生成一个
            }else{
                ids.add(userName);
            }
        }
        return ids;
    }

    /**
     * 生成一批密码
     * <br>生成规则：
     * 大写字母+小写字母+数字
     * @param num 要生成多少个密码
     * @param wordNum 要生成的密码长度是多少
     * @return
     */
    public static List<String> getPasswords(int num,Integer wordNum){
        int total=wordNum;//密码总位数
        List<String> passwords=new ArrayList<String>();
        while(passwords.size()<num){
            StringBuffer sb=new StringBuffer();
            int upperNum=getRadomInt(1,total-2);//大写字母位数，保留至少两位，用来放小写和数字
            int lowerNum=getRadomInt(1, total-upperNum-1);//小写字母位数，为总数减去大写字母占用的数量，再为数字区域保留至少1
            int nnum=total-upperNum-lowerNum;//最后剩余数字的位数，为总数减去大写和小写字母位数之后剩余的位数
            //随机获取到每个类型的位置index
            Map<Integer,String> indexMap=new HashMap<Integer,String>();
            while(indexMap.size()<upperNum){
                //确定大写字母的索引号
                int rint=getRadomInt(0, total-1);
                if(indexMap.get(rint)==null){
                    indexMap.put(rint, "upper");
                }
            }
            while(indexMap.size()<upperNum+lowerNum){
                //确定小写字母的索引号
                int rint=getRadomInt(0, total-1);
                if(indexMap.get(rint)==null){
                    indexMap.put(rint, "lower");
                }
            }
            while(indexMap.size()<total){
                //确定数字的索引号
                int rint=getRadomInt(0, total-1);
                if(indexMap.get(rint)==null){
                    indexMap.put(rint, "nnum");
                }
            }
            //组装密码
            for(int i=0;i<total;i++){
                if("upper".equals(indexMap.get(i))){
                    sb.append(getUpper());
                }else if("lower".equals(indexMap.get(i))){
                    sb.append(getLetter());
                }else{
                    sb.append(getNum());
                }
            }
            passwords.add(sb.toString());
        }
        return passwords;
    }
    /**
     * 随机获取一个小写字母
     * @param args
     */
    public static char getLetter(){
        char c=(char)getRadomInt(97, 122);
        return c;
    }

    /**
     * 随机获取一个大写字母
     * @param args
     */
    public static char getUpper(){
        char c=(char)getRadomInt(65, 90);
        return c;
    }

    /**
     * 随机获取一个0-9的数字
     * @return
     */
    public static int getNum(){
        return getRadomInt(0, 9);
    }

    /**
     * 获取一个范围内的随机数字
     * @return
     */
    public static int getRadomInt(int min,int max){
        return rand.nextInt(max-min+1)+min;
    }

    public static void main(String[] args) {
        List<String> list=getUserIds(new ArrayList(), 100);
        for(String s:list){
            System.out.println(s);
        }
//		List<String> list=getPasswords(100,8);
//		for(String s:list){
//			System.out.println(s);
//		}
    }


}
