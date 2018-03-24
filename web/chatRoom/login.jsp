<%@ page import="java.util.Vector" %>
<%@ page import="chatRoom.UserForm" %><%--
  Created by IntelliJ IDEA.
  User: jal
  Date: 2018/3/21 0021
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Log In</title>
</head>
<body>
    <%
        String username = request.getParameter("username");
        boolean flag = true;
        Vector temp = (Vector)application.getAttribute("myuser");
        if(application.getAttribute("myuser") == null){
            temp = new Vector();
        }
        //判断用户是否在线
        for(int i = 0; i < temp.size(); i++){
            UserForm tempuser = (UserForm)temp.elementAt(i);
            if(tempuser.username.equals(username)){
                out.println("<script language = 'javascript'>alert('该用户已登录');window.location.href='index.jsp';</script>");
                System.out.println("该用户已登录");
                flag = false;
            }
        }
        UserForm mylist = new UserForm();
        mylist.username = username;
        //保存当前登录的用户名
        session.setAttribute("username",username);
        application.setAttribute("ul",username);
        Vector myuser = (Vector)application.getAttribute("myuser");
        if(myuser == null){//当第一位用户登录时
            myuser = new Vector();
        }
        if(flag){//当输入的用户名不存在时，将该用户添加到在线人员列表
            myuser.add(mylist);
            out.println(myuser);
        }
        application.setAttribute("myuser",myuser);//更新在线人员列表库
        response.sendRedirect("main.jsp");//重定向页面到聊天室主页面
    %>
</body>
</html>
