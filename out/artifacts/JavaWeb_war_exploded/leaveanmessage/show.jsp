<%@ page import="java.util.ArrayList" %>
<%@ page import="leaveanmessage.WordSingle" %><%--
  Created by IntelliJ IDEA.
  User: jal
  Date: 2018/3/11 0011
  Time: 8:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show Messages</title>
    <style>
        table{
            background-color: antiquewhite;
            align-content: center;
            font-family: "Arial Black";
        }
    </style>
</head>
<body>
    <%
        ArrayList messages = (ArrayList) application.getAttribute("messages");
        if(messages == null){
    %>
            <p>没有任何留言！</p>
    <%
        }else{

    %>
            <div>
                <table>
                    <tr>
                        <th>姓名</th>
                        <th>标题</th>
                        <th>内容</th>
                        <th>留言时间</th>
                    </tr>
    <%
            for(int i = 0; i < messages.size(); i++){
                 WordSingle single = (WordSingle)messages.get(i);
    %>
                    <tr>
                        <td>
                            <%=single.getName()%>
                        </td>
                        <td>
                            <%=single.getTitle()%>
                        </td>
                        <td>
                            <%=single.getContent()%>
                        </td>
                        <td>
                            <%=single.getTime()%>
                        </td>
                    </tr>
                </table>
                </div>
    <%
            }
        }
    %>
    <h3>
        <a href="leave.jsp">继续留言</a>
    </h3>
</body>
</html>
