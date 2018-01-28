<%--
  Created by IntelliJ IDEA.
  User: jal
  Date: 2018/1/27 0027
  Time: 20:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>circle</title>
</head>
<body>
<form action="circle2.jsp">
    <input type="text" name="radius">
    <input type="submit" value="get Area">
</form>

<%
String radius = request.getParameter("radius");
double r = 0;
boolean flag = false;
try {
    r = Double.parseDouble(radius);

}catch (Exception e){
    flag = true;
}

if (flag == false){
    out.println("<input type=text value=" + Math.PI*r*r+">");
}else{
    out.println("<input type=text value='Wrong Answer~'>");
}

%>
</body>
</html>
