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
        <th>����</th>
        <th>����</th>
        <th>����</th>
        <th>�ܼ�</th>

    </tr>
    <%
        if(myCar.getBuyList().size() == 0 || myCar== null){
    %>
        <tr>
            <td colspan="3" align="center">���ﳵΪ�գ�</td>
            <td>
                <a href="index.jsp">����</a>
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
                    <a href="doCar.jsp?action=remove&name=<%=fruit.getName()%>">ɾ��</a>
                </td>
            </tr>
    <%
            }
    %>
    <tr>
        <td>���ܹ���Ҫ֧��<%=total%>Ԫ</td>
    </tr>
    <tr>
        <td>
            <a href="index.jsp">��������</a>
        </td>
        <td>
            <a href="doCar.jsp?action=clear">��չ��ﳵ</a>
        </td>
        <td>
            <a href="#">֧��</a>
        </td>
    </tr>
  <%
      }
  %>

</table>
</body>
</html>
