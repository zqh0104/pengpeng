package com.pengpeng.v4.utils;
import java.util.regex.Pattern;
import java.util.regex.Matcher;
/**
 * @author 微笑的你
 * @version 1.0
 * @date 2019/12/20 9:55
 *
 * 将富文本类型变成文本格式的工具类
 */

public class UeditorUtil {
    private static final Pattern p_html = Pattern.compile("<[a-zA-z]{1,9}((?!>).)*>", Pattern.CASE_INSENSITIVE);

    private static final Pattern t_html = Pattern.compile("</[a-zA-z]{1,9}>", Pattern.CASE_INSENSITIVE);

    public static String getTextByHtml(String html){

        Matcher m_script = p_html.matcher(html);

        html = m_script.replaceAll("");

        Matcher l_script = t_html.matcher(html);

        return l_script.replaceAll("");

    }

}
