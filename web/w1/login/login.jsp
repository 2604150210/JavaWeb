<%--
  Created by IntelliJ IDEA.
  User: jal
  Date: 2018/1/27 0027
  Time: 18:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LOGin</title>
</head>
<body>
<%
    String user = request.getParameter("name");
    out.println("hello " +user + "~");
%>
</body>
</html>
