<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: jal
  Date: 2018/3/16 0016
  Time: 8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GB2312" language="java" %>
<html>
<head>
    <title>����MySQL</title>
</head>
<body>
<%
    String driverClass = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://oj.ahstu.cc:3306/jal";
    String username = "remoter";
    String password = "ahsturemoter";
    Class.forName(driverClass);//�������ݿ�����
    Connection conn = DriverManager.getConnection(url,username,password);//��������
    Statement statement = conn.createStatement();
    ResultSet rs = statement.executeQuery("SELECT * FROM cms_user WHERE NAME = 'jal'");//ִ��SQL���
//    PreparedStatement ps = conn.prepareStatement("INSERT INTO cms_user (NAME ,PASSWORD,PHONE) VALUE (?,?,?)");
//    ps.setString(1,"Rainny");
//    ps.setString(2,"33333");
//    ps.setString(3,"18855031020");
//    int rtn = ps.executeUpdate();
//    ps = conn.prepareStatement("SELECT * FROM cms_user");
//
//    ResultSet rs = ps.executeQuery();
    while(rs.next()){
        out.println("<h3>�û�����" + rs.getString(2) + " �ֻ��ţ�" + rs.getString(8) + "</h3>");
    }
    rs.close();
//    ps.close();
    conn.close();
%>
</body>
</html>
