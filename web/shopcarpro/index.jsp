<%@ page import="java.util.ArrayList" %>
<%@ page import="shopcarpro.GoodsSingle" %><%--
  Created by IntelliJ IDEA.
  User: jal
  Date: 2018/3/10 0010
  Time: 12:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>store</title>
</head>
<body>
    <%!
        static ArrayList goodsList = new ArrayList();
        static {
            String[] names = {"Æ»¹û","Ïã½¶","Àæ×Ó","éÙ×Ó"};
            float[] prices = {2.8f,3.1f,2.5f,2.3f};
            for (int i = 0; i < 4; i++){
                GoodsSingle fruit = new GoodsSingle();
                fruit.setName(names[i]);
                fruit.setPrice(prices[i]);
                fruit.setNum(1);
                goodsList.add(i,fruit);
            }
        }
    %>
<%
    session.setAttribute("goodsList",goodsList);
    response.sendRedirect("show.jsp");
%>
</body>
</html>
