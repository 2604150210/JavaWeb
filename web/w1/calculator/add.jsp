<%--
  Created by IntelliJ IDEA.
  User: jal
  Date: 2018/1/27 0027
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sum of all integer form a to b</title>
</head>
<body>
    <%
        String sa = request.getParameter("A");
        String sb = request.getParameter("B");
        int ret = 0;
        for(int i = Integer.parseInt(sa); i <= Integer.parseInt(sb); i++){
            ret+=i;
        }
        out.println(ret);
    %>
    <a href="add.html"><br>返回继续计算a---b~</a>
</body>
</html>
