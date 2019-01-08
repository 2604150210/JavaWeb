package login;

import java.sql.*;

/**
 * Created by jal on 2018/2/28 0028.
 */
public class DB {// 是一个JDBC链接类.只是一个工具类
    //用来获取数据库链接
    public static Connection getConnertion(){
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql//oj.ahstu.cc:3306/jal","user","password");
            conn.setAutoCommit(false);
        }catch (SQLException|ClassNotFoundException e){
            e.printStackTrace();
        }
        return conn;
    }
    //关闭语句对象
    public static void close(PreparedStatement pstmt){
        try {
            if(pstmt != null){
                pstmt.close();
            }
        }catch (SQLException e){
            System.out.println("关闭异常-语句对象DB------");
            e.printStackTrace();
        }
    }

    //关闭返回集
    public static void close(ResultSet rs){
        try {
            if(rs != null){
                rs.close();
            }
        }catch (SQLException e){
            System.out.println("关闭异常-返回集DB------");
            e.printStackTrace();
        }
    }

    //关闭链接
    public static void close(Connection conn){
        try {
            if(conn != null){
                conn.close();
            }
        }catch (SQLException e){
            System.out.println("关闭异常-资源DB------");
            e.printStackTrace();
        }
    }

    //事务回滚的方法
    public static void rollback(Connection conn){
        try {
            conn.rollback();
        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    //设置手动提交方法
    public static void commit(Connection conn){
        if(conn != null){
            try {
                conn.commit();
            }catch (SQLException e){
                e.printStackTrace();
            }
        }
    }
}
