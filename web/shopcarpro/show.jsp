<%@ page import="java.util.ArrayList" %>
<%@ page import="shopcarpro.GoodsSingle" %><%--
  Created by IntelliJ IDEA.
  User: jal
  Date: 2018/3/10 0010
  Time: 12:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>Shop List</title>
    <style>
        .table{
            border: 1px;
            width: 450px;
            rules:"none";
            cellspacing:"0";
            cellpadding:"0";
            background-color: #cccccc;
        }
        .head{
            align-content: center;
            height: 30px;
            background-color: greenyellow;
        }
        tr{
            height: 100px;
            align-content: center;
        }
    </style>
</head>
<body>
<%
   ArrayList goodsList = (ArrayList) session.getAttribute("goodsList");
%>

<table class="table">
    <tr class="head">
        <th>名称</th>
        <th>价格（元/斤）</th>
        <th>购买</th>
    </tr>
    <%
        if(goodsList == null ||goodsList.size() == 0){
    %>
        <tr >
            <td colspan="3" align="center" >没有商品可显示！</td>
        </tr>
    <%
        }
        else{
            for(int i = 0; i < goodsList.size(); i++){
                GoodsSingle fruit = (GoodsSingle)goodsList.get(i);
    %>
                <tr>
                    <td>
                        <%=fruit.getName()%>
                    </td>
                    <td>
                        <%=fruit.getPrice()%>
                    </td>
                    <td>
                        <a href="doCar.jsp?action=buy&id=<%=i%>">购买</a>
                    </td>
                </tr>
    <%
            }
        }
    %>
    <tr style="height: 50px">
        <td align="center" colspan="3">
            <a href="myshopcar.jsp">查看我的购物车</a>
        </td>
    </tr>
</table>
</body>
</html>
