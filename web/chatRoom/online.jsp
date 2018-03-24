<%@ page import="java.util.Vector" %>
<%@ page import="chatRoom.UserForm" %><%--
  Created by IntelliJ IDEA.
  User: jal
  Date: 2018/3/22 0022
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Online</title>
</head>
<body>

    <%
        Vector myuser = (Vector)application.getAttribute("myuser");
        System.out.println("myuser.length : " + myuser.size());
    %>
    <table width="100%" border="0" cellspacing="0" cellspacing="0">
        <tr>
            <td height="32" align="center" class="word_orange">欢迎来到611聊天室！</td>
        </tr>
        <tr>
            <td height="23" align="center">
                <a href="#" onclick="set('所有人')">所有人</a>
            </td>
        </tr>
        <%
            for (int i = 0; i < myuser.size(); i++){
                UserForm mylist = (UserForm)myuser.elementAt(i);
        %>
                <tr>
                    <td height="23" align="center">
                        <a href="#" onclick="set('<%=mylist.username%>')"> <%=mylist.username%></a>
                    </td>
                </tr>
        <%
            }
        %>
        <tr>
            <td height="30" align="center">
                当前在线
                [
                    <font color="#FF6600">
                            <%=myuser.size()%>
                    </font>
                ]
                人
            </td>
        </tr>
    </table>
</body>
</html>
