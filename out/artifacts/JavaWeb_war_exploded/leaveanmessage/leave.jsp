<%--
  Created by IntelliJ IDEA.
  User: jal
  Date: 2018/3/11 0011
  Time: 7:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Leave An Message</title>
    <style>
        div{
            background-color: aqua;
            width: 300px;
            height: 200px;
        }
    </style>
</head>
<body>
<form action="/aaa" method="post">
    <div>
        留&nbsp;&nbsp;言&nbsp;&nbsp;者：<input type="text" name="name"><br>
        留言标题：<input type="text" name="title"><br>
        <textarea name="content" id="" cols="30" rows="7"></textarea><br>
        <input type="submit" value="提交">
    </div>
</form>
</body>
</html>
