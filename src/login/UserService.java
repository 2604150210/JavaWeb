package login;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;

/**
 * Created by jal on 2018/2/28 0028.
 */
//服务：是为了往数据库中操作（添加）来创建一个层
public class UserService {
    //------用户添加的方法
    public void addUser(User user){
        Connection conn = DB.getConnertion();//已经把事务提交给关闭了
        PreparedStatement pstmt = null;
        String sql = "insert into cms_user(name,password,valid,email,phone,time_stamp) values(?,?,?,?,?,?)";
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,user.getName());
            pstmt.setString(2,user.getPassword());
            pstmt.setInt(3,user.getValid());
            pstmt.setString(4,user.getEmail());
            pstmt.setString(5,user.getPhone());
            pstmt.setTimestamp(6,new Timestamp(new Date().getTime()));
            //执行到数据库
            pstmt.executeUpdate();
            DB.commit(conn);
        }catch (SQLException e){
            DB.rollback(conn);//回滚
            e.printStackTrace();
        }finally {
            DB.close(pstmt);
            DB.close(conn);
        }
    }

    //用户的查询方法
    public ArrayList getUser(String name){
        String sql = "select name,password,valid,time_stamp,email,phone,id from cms_user where name like ?";
        Connection conn = DB.getConnertion();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        ArrayList<User> list = new ArrayList<User>();
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,"%"+name+"%");
            rs = pstmt.executeQuery();
            while (rs.next()){
                User user = new User();
                user.setName(rs.getString(1));
                user.setPassword(rs.getString(2));
                user.setValid(rs.getInt(3));
                user.setTime_stamp(rs.getTimestamp(4));
                user.setEmail(rs.getString(5));
                user.setPhone(rs.getString(6));
                user.setId(rs.getInt(7));//------返回数据库，查看序列

                list.add(user);
            }
        }catch (SQLException e){
            DB.rollback(conn);
            e.printStackTrace();
        }finally {
            DB.close(rs);
            DB.close(pstmt);
            DB.commit(conn);
            DB.close(conn);
        }
        return list;
    }
}
