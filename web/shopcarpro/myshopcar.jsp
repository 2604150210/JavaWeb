<%@ page import="shopcarpro.GoodsSingle" %><%--
  Created by IntelliJ IDEA.
  User: jal
  Date: 2018/3/10 0010
  Time: 13:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<jsp:useBean id="myCar" class="shopcarpro.MyShopCar" scope="session"/>

<html>
<head>
    <title>My Shop Car</title>
    <style>
        .table{
            border: 1px;
            width: 450px;
            rules:"none";
            cellspacing:"0";
            cellpadding:"0";
            background-color:yellow;
        }
        .head{
            align-content: center;
            height: 30px;
            background-color: greenyellow;
        }
        tr{
            height: 100px;

        }
        td{
            align-content: center;
        }
    </style>
</head>
<body>
<table class="table">
    <tr class="head">
        <th>名称</th>
        <th>数量</th>
        <th>数量</th>
        <th>总价</th>

    </tr>
    <%
        if(myCar.getBuyList().size() == 0 || myCar== null){
    %>
        <tr>
            <td colspan="3" align="center">购物车为空！</td>
            <td>
                <a href="index.jsp">购物</a>
            </td>
        </tr>
    <%
        }
        else{
            float total = 0;
            for(int i = 0; i < myCar.getBuyList().size(); i++){
                GoodsSingle fruit = (GoodsSingle)myCar.getBuyList().get(i);
                float prices = fruit.getNum()*fruit.getPrice();
                total += prices;
    %>
            <tr>
                <td><%=fruit.getName()%></td>
                <td><%=fruit.getPrice()%></td>
                <td><%=fruit.getNum()%></td>
                <td><%=prices%></td>
                <td>
                    <a href="doCar.jsp?action=remove&name=<%=fruit.getName()%>">删除</a>
                </td>
            </tr>
    <%
            }
    %>
    <tr>
        <td>您总共需要支付<%=total%>元</td>
    </tr>
    <tr>
        <td>
            <a href="index.jsp">继续购买</a>
        </td>
        <td>
            <a href="doCar.jsp?action=clear">清空购物车</a>
        </td>
        <td>
            <a href="#">支付</a>
        </td>
    </tr>
  <%
      }
  %>

</table>
</body>
</html>
