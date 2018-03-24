<%@ page import="java.util.Vector" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="chatRoom.UserForm" %>
<%@ page import="login.User" %><%--
  Created by IntelliJ IDEA.
  User: jal
  Date: 2018/3/21 0021
  Time: 17:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chat Room</title>
    <script src="AjaxRequest.js"></script>
    <script>
        function set(selectPerson) {
            if(selectPerson!='<%=session.getAttribute("username")%>'){
                 form1.tempuser.value = selectPerson;
                //form1.tempuser.value="zj";
            }else {
                alert("请重新选择聊天对象！");
            }
        }
    </script>
</head>
<body onLoad="showOnline()">
<script>
    window.setInterval("showOnline();",10000);
    var curReqUrl="";
    function showOnline() {
        new net.AjaxRequest("online.jsp?nocache=" + new Date().getTime(),deal_online,onerror,"GET");

    }
    function onerror() {
        alert("很抱歉，服务器出现错误，当前窗口即将关闭!");
        window.opener = null;
        window.close();
    }
    function deal_online() {

       online.innerHTML = this.req.responseText;
    }
    window.setInterval("showContent();",10000);
    function showContent() {
        new net.AjaxRequest("content.jsp?nocache="+new Date().getTime(),deal_content,onerror,"GET");
    }
    function deal_content() {
        content.innerHTML = this.req.responseText;
    }
    function showAll() {
        showOnline();
        showContent();
    }

    function Exit() {
        window.location.href="leave.jsp";
        alert("欢迎您下次光临！")
    }

</script>
    <table width="778" height="276" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td width="165" valign="top" bgcolor="#FDF7E9" id="online" style="padding: 5px">
                在线人员列表

            </td>
            <td width="613" valign="top" bgcolor="#FFFFFF" id="content" style="padding: 5px">
                聊天内容
            </td>
        </tr>
        <tr>
            <td>
                <form action="send.jsp" name="form1" method="post" onsubmit="return check()">
                    [<%=session.getAttribute("username")%>]对
                    <input type="text" name="tempuser" value="" size="35" >
                    表情
                    <select name="select" class="wenbenkuang">
                        <option value="无表情的">无表情的</option>
                        <option value="微笑着" selected>微笑着</option>
                        <option value="笑呵呵地">笑呵呵地</option>
                    </select>
                    说：
                    字体颜色：
                    <select name="color" id="select" size="1" class="wenbenkuang">
                        <option value="" selected>默认颜色</option>
                        <option value="FF0000" style="color:#FF0000">红色热情</option>
                        <option value="0000FF" style="color: #0000FF">蓝色开朗</option>
                        <option value="999999" style="color: #999999">烟雨蒙蒙</option>
                    </select>
                    <input type="text" name="message" size="70">
                    <input type="submit" name="Submit2" class="btn_blank" value="发送">
                </form>
            </td>
        </tr>
    </table>
<input type="button" name="button_exit" class="btn_ orange" value="退 出 聊 天 室" onclick="Exit()" >

</body>
</html>
