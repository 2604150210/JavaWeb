<%--
  Created by IntelliJ IDEA.
  User: jal
  Date: 2018/1/27 0027
  Time: 19:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.Date,java.text.*" %>
<%
    Date nowday = new Date();
    int hour = nowday.getHours();
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String time = format.format(nowday);
%>
<html>
<head>
    <title>TIME</title>
</head>
<body>
<center>
    <table border="1" width="300" style="border-bottom-color: aqua">
        <tr height="30">
            <td align="center">meme...</td>
        </tr>
        <tr height="80">
            <td align="center">time<%=time%></td>
        </tr>
        <tr height="70">
            <td align="center"> zjal</td>
        </tr>
    </table>
</center>
</body>
</html>
