<%--
  Created by IntelliJ IDEA.
  User: jal
  Date: 2018/1/27 0027
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>IP</title>
</head>
<body>
IP Address:
<%
out.println(java.net.InetAddress.getLocalHost().getHostAddress());
%>
</body>
</html>
