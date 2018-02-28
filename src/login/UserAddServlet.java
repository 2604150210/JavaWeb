package login;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;

import java.io.IOException;
import java.util.Date;
import java.sql.Timestamp;

/**
 * Created by jal on 2018/2/28 0028.
 */
public class UserAddServlet extends HttpServlet {
    public UserAddServlet(){
        super();
    }

    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
       {
            //获取客户端（浏览器）提交的数据
            String name = req.getParameter("name");
            String password = req.getParameter("password");
            String valid = req.getParameter("valid");
            String email = req.getParameter("email");
            String phone = req.getParameter("phone");
            //把数据封装到User对象里面去
            User user = new User();
            user.setName(name);
            user.setPassword(password);
            user.setEmail(email);
            user.setPhone(phone);
            //获取系统当前时间，作为注册时间
            user.setTime_stamp(new Timestamp(new Date().getTime()));

            //这里要进行插入数据库
           UserService us = new UserService();
           us.addUser(user);

           this.getServletContext().getRequestDispatcher("user_list.jsp").forward(req,res);
        }
    }
}
