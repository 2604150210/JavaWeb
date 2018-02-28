<%--
  Created by IntelliJ IDEA.
  User: jal
  Date: 2018/1/28 0028
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="point24.Tools" %>

<html>
<head>
    <title>Point24</title>
    <style>
        body{
            text-align: center;
        }
        form>input{
            width: 80px;
            height: 60px;
            display: inline-block;
            border: 1px solid #ccc;
            text-align: center;
            font-size: 16px;
        }
        input[type=submit]{
            width: 100px;
            height: 60px;
            background-color: #337ab7;
            border: 1px solid #2e6da4;
            color: #fff;
            font-size: 14px;
            -webkit-box-shadow: inset 0 -4px 0 #2a6496;
            box-shadow: inset 0 -4px 0 #2a6496;
        }
        form{
            height: 60px;
            text-align: center;
            margin-top: 10px;
        }
        h2{
            text-align: center;
            color: #666;
            letter-spacing: 5px;
            margin-top: 150px;
        }
        #show{
            font-size: 18px;
            margin-top: 20px;
        }
        @media(max-width:992px){
            form>input{
                width: 17%;
            }
            input[type=submit]{
                width: 20%;
            }
        }
        input{
            -webkit-appearance : none ;
            border-radius:1px;
        }
    </style>

</head>
<body>
<h2>Point24</h2>
<form action="index.jsp">
    <input type="text" name="A">
    <input type="text" name="B">
    <input type="text" name="C">
    <input type="text" name="D">
    <input type="submit" name="submit" value="submit">
</form>

<span style="color: #357634;">result:&nbsp &nbsp</span>
<span id="rec">
    <%
        try {
            int a = Integer.parseInt(request.getParameter("A"));
            int b = Integer.parseInt(request.getParameter("B"));
            int c = Integer.parseInt(request.getParameter("C"));
            int d = Integer.parseInt(request.getParameter("D"));
            out.println(Tools.solve24(a,b,c,d)+"=24");
        }catch (Exception e){
            out.println("wrong answer~");
        }
    %>
</span>
</body>
</html>
