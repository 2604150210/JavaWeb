<%--
  Created by IntelliJ IDEA.
  User: jal
  Date: 2018/2/28 0028
  Time: 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style type="text/css">
        body,table,td,select,textarea,input{
            font-family:Verdana,Arial,Helvetica,sans-serif;
            font-size: 11px;
        }
    </style>
    <title>用户添加</title>
</head>
<body>
<div id="main">
    <form name = "backuserform" method="post" action="admin/UserAddServlet">
        <table class="standard">
            <thead>
                <tr>
                    <th align="center" colspan="2">用户添加</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td align="left">用户名</td>
                    <td align="left">
                        <input name="name" type="text" tabindex="1" id="name">
                        <div class="Info">
                            <div id="name_info"></div>
                        </div>
                    </td>

                </tr>

                <tr>
                    <td align="left">用户密码</td>
                    <td><input type="password" name="password" value="" tabindex="2" id="password"></td>
                    <div class="Info">
                        <div id="password_info"></div>
                    </div>
                </tr>

                <tr>
                    <td align="left">角色</td>
                    <td align="left">
                        <select name="role" id="role" tabindex="4">
                            <option value="1">超级管理员</option></select>
                        <div class="Info">
                            <div id="role_info"></div>
                        </div>
                    </td>
                </tr>

                <tr>
                    <td align="left">是否有效</td>
                    <td align="left">
                        <select name="valid" id="valid" tabindex="3">
                            <option value="1">有效</option>
                            <option value="0">无效</option>
                        </select>
                        <div class="Info">
                            <div id="valid_info"></div>
                        </div>
                    </td>
                </tr>

                <tr>
                    <td align="left">email</td>
                    <td align="left">
                        <input type="text" name="email" value="" tabindex="5" id="email">
                        <div class="Info">
                            <div id="email_info"></div>
                        </div>
                    </td>
                </tr>

                <tr>
                    <td align="left">电话</td>
                    <td>
                        <input type="text" name="phone" value="" id="phone" tabindex="6">
                    </td>
                    <div class="Info">
                        <div id="phone_info"></div>
                    </div>
                </tr>

                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" class="submitButton" tabindex="7" name="submit" value="提交">
                        <input type="button" name="返回" class="submitButton" value="返回" onclick="history.back();">

                    </td>
                </tr>

            </tbody>

            <tfoot>
                <tr>
                    <td colspan="2" style="text-align: left"></td>
                </tr>
            </tfoot>
        </table>
    </form>
</div>
</body>
</html>
