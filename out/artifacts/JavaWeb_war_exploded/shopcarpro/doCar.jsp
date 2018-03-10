<%@ page import="java.util.ArrayList" %>
<%@ page import="shopcarpro.MyTools" %>
<%@ page import="shopcarpro.GoodsSingle" %>
<%@ page import="shopcarpro.MyShopCar" %><%--
  Created by IntelliJ IDEA.
  User: jal
  Date: 2018/3/10 0010
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<jsp:useBean id="myCar" class="shopcarpro.MyShopCar" scope="session"/>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String action = request.getParameter("action");
    if(action == null){
        action = "";
    }
    if(action.equals("buy")){
        ArrayList goodsList = (ArrayList)session.getAttribute("goodsList");
        int id = MyTools.strToint(request.getParameter("id"));
        GoodsSingle single = (GoodsSingle)goodsList.get(id);
        myCar.addItem(single);
        response.sendRedirect("show.jsp");
    }
    else if(action.equals("remove")){
        myCar.removeItem(request.getParameter("name"));
        response.sendRedirect("myshopcar.jsp");
    }
    else if(action.equals("clear"))
        myCar.clearCar();
%>
</body>
</html>
