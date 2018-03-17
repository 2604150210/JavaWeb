package mysql;
import java.sql.*;
/**
 * Created by jal on 2018/3/16 0016.
 */
public class TestJDBC {
    public static void main(String[] args) throws Exception{
        String driverClass = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://oj.ahstu.cc:3306/jal";
        String username = "remoter";
        String password = "ahsturemoter";
        Class.forName(driverClass);//加载数据库驱动
        Connection conn = DriverManager.getConnection(url,username,password);//建立连接
        Statement statement = conn.createStatement();
        ResultSet rs = statement.executeQuery("SELECT * FROM cms_user");//执行SQL语句
        while(rs.next()){
            System.out.println("<h3>用户名：" + rs.getString(2) + " 密码：" + rs.getString(7) + "</h3>");
        }
        rs.close();
        statement.close();
        conn.close();
    }
}
