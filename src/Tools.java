/**
 * Created by jal on 2018/1/27 0027.
 */

public class Tools {
    public static int sum(String a,String b){
        int ret = 0;
        for(int i = Integer.parseInt(a); i <= Integer.parseInt(b); i++){
            ret+=i;
        }
        return ret;
    }
}
