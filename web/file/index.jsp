<%--
  Created by IntelliJ IDEA.
  User: jal
  Date: 2018/3/15 0015
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>File</title>
</head>
<body>
<form action="UploadServlet" method="post" enctype="multipart/form-data" name="form1" id="form1" onsubmit="return validate()">
   <ul>
       <li>请选择要上传的文件</li>
       <li>
           上传文件：<input type="file" name="file"> <!--文件上传组件-->
       </li>
       <li>
           <input type="submit" name="Submit" value="上传">
           <input type="reset" name="Sumit2" value="重置">
       </li>
   </ul>
    <%
        if(request.getAttribute("result") != null){
            out.println("<script>aler('" + request.getAttribute("result") + "')</script>");
        }
    %>
</form>
</body>
</html>
