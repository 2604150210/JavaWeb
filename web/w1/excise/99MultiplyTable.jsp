<%--
  Created by IntelliJ IDEA.
  User: jal
  Date: 2018/1/27 0027
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>99 Multiply Table</title>
</head>
<body>
<%
    for (int i = 1; i <= 9; i++){
        for(int j = 1;  j <= i; j++){
            out.println(String.format("%d * %d = %2d &nbsp &nbsp",j,i,i*j));
        }
        out.println("<br/>");
    }
%>
</body>
</html>
