package leaveanmessage;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by jal on 2018/3/11 0011.
 */
public class MyTools {
    public static String changeHTML(String source){
        String changeStr="";
        changeStr = source.replace("&","&amp;");
        changeStr = source.replace(" ","&nbsp;");
        changeStr = source.replace("<","&lt;");
        changeStr = source.replace(">","&gt;");
        changeStr = source.replace("\r\n","<br>");
        return changeStr;
    }

    /**
     * 将日期转换成指定格式
     * @param date
     * @return String类型值
     */
    public static String changeTime(Date date){
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return format.format(date);
    }

    public static String toChinese(String str){
        if(str == null)str = "";
        try {
            str = new String(str.getBytes("ISO-8859-1"),"gb2312");
        }catch (UnsupportedEncodingException e){

        }
        return str;
    }
}
