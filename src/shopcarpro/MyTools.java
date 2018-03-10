package shopcarpro;

import java.io.UnsupportedEncodingException;

/**
 * Created by jal on 2018/3/10 0010.
 */
public class MyTools {
    public static int strToint(String str){
        //将string类型转化为int型
        if(str == null || str == ""){
            str = "0";
        }
        int i = 0;
        try {
            i = Integer.parseInt(str);
        }catch (NumberFormatException e){
            i = 0;
            e.printStackTrace();
        }
        return i;
    }

    public static String toChinese(String str){
        if(str == null){
            str="";
        }
        try {
            str = new String (str.getBytes("ISO-8859-1"),"gb2312");
        }catch (UnsupportedEncodingException e){
            str="";
            e.printStackTrace();
        }
        return str;
    }
}
