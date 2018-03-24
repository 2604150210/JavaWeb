<%@ page import="java.util.Vector" %>
<%@ page import="chatRoom.UserForm" %><%--
  Created by IntelliJ IDEA.
  User: jal
  Date: 2018/3/23 0023
  Time: 9:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Leave</title>
</head>
<body>
<%
    Vector temp = (Vector)application.getAttribute("myuser");
    for (int i = 0; i < temp.size(); i++){
        UserForm mylist = (UserForm)temp.elementAt(i);
        if (mylist.username.equals(session.getAttribute("username"))){
            temp.removeElementAt(i);
            session.setAttribute("username","null");
        }
        if (temp.size() == 0){
            application.removeAttribute("message");
        }
    }
    response.sendRedirect("index.jsp");
%>
</body>
</html>
