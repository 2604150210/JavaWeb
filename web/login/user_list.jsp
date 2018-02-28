<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="login.User" %><%--
  Created by IntelliJ IDEA.
  User: jal
  Date: 2018/2/28 0028
  Time: 20:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>backuser</title>
    <style type="text/css">
        body,table,td,select,textarea,input{
            font-family: Verdana,Arial,Helvetica,sans-serif;
            font-size: 11px;
        }
    </style>

    <script type="text/javascript">
        function turn(frm,oper,totalpage,curpage,msg){

            if(oper=='first'){

                if(curpage==1){
                    return;
                }
                frm.pagenum.value = 1;
                frm.submit();
                return;
            }else if(oper=='prev'){
                if(curpage==1){
                    return;
                }
                frm.pagenum.value = (curpage-1);
                frm.submit();
                return;
            }else if(oper=='next'){
                if(curpage>=totalpage){
                    return;
                }
                frm.pagenum.value = (curpage+1);
                frm.submit();
                return;
            }else if(oper=='last'){
                if(curpage>=totalpage){
                    return;
                }
                frm.pagenum.value = totalpage;
                frm.submit();
                return;
            }else if(oper=='jump'){
                var jpage = document.getElementById("jumpto");
                var jpagev = curpage;
                if(jpage.value==""||!(jpage.value.search(/^(-|\+)?\d+$/) != -1)){
                    alert(msg);
                    jpage.focus();
                    jpage.select();
                    return;
                }else{
                    jpagev = parseInt(jpage.value);
                }
                if(jpagev==curpage||jpagev>totalpage||jpagev<=0){
                    return;
                }
                frm.pagenum.value = jpagev;
                frm.submit();
                return;
            }
        }
    </script>
</head>
<%
    ArrayList userList = (ArrayList)request.getAttribute("userList");
    if(userList == null){
        userList = new ArrayList();
    }
%>
<body>
    <div>
        <form action="/userListServlet" name="sportform" method="post">
            <table class="sadminheading" style="top-margin:10">
                <tr>
                    <td nowrap class="admintitle" colspan="3" align="center">用户列表</td>
                </tr>

                <tr>
                    <td align="left" width="40%">用户名:</td>
                    <td align="left" width="40%">
                        <input type="text" name="name">
                    </td>
                    <td align="right">
                        <input type="submit" name="提交" value="提交">&nbsp;&nbsp;&nbsp;
                        <input type="hidden" name="pagenum" value="">
                        <input type="hidden" name="pagerows"  value="">
                    </td>
                </tr>
            </table>
        </form>
        <table class="standard">
            <thead>
            <tr>
                <th>
                    id
                </th>
                <th>
                    用户名
                </th>
                <th>
                    用户密码
                </th>
                <th>
                    角色
                </th>
                <th>
                    email
                </th>
                <th>
                    是否有效
                </th>
                <th>
                    &nbsp;
                </th>
            </tr>
            </thead>
        </table>

        <tbody>
            <!-- 循环遍历除每个用户信息 -->
            <%
                for(Iterator i = userList.iterator(); i.hasNext();){
                    User user = (User)i.next();
            %>
            <tr>
                <td>
                    <%=user.getId()%>
                </td>
                <td>
                    <%=user.getName()%>
                </td>
                <td>
                    <%=user.getPassword()%>
                </td>
                <td>
                    --Null--
                </td>
                <td>
                    <%=user.getPassword()%>
                </td>
                <td>
                    <%=user.getEmail()%>
                </td>
                <td>
                    <%=user.getValid()%>
                </td>
                <td>
                    <a href="#" onclick="location.href='user_update.html';">修改</a>
                    <a href="#" onclick="if(confirm('delete'))location.href='user_list.html?id=1';">修改</a>
                </td>
            </tr>
        <%
            }
        %>
        <!-- 循环结束-->
        <tr>
            <td colspan="7">
                No data found
            </td>
        </tr>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="3" style="text-align: left">
                    1/1 total rows 1
                </td>
                <td>

                </td>
            </tr>
        </tfoot>
    </div>
</body>
</html>
