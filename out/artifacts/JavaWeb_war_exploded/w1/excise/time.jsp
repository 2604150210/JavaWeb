<%--
  Created by IntelliJ IDEA.
  User: jal
  Date: 2018/1/27 0027
  Time: 18:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TIME</title>
</head>
<body>
Current server time is:
<%=new java.util.Date().toLocaleString()
%>
</body>
</html>
