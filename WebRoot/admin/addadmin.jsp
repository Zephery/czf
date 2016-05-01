<%--
  Created by IntelliJ IDEA.
  User: Zephery
  Date: 2016/4/5
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="head.jsp"/>
<h1>to add an admin</h1>
<form action="addadmin" method="post" enctype="multipart/form-data">
    <table>
        <tr>
            <td>Add Admin</td>
        </tr>
        <tr>
            <td>用户名：</td>
            <td><input type="text" id="name" name="admin.adminname" size=20/></td>
        </tr>
        <tr>
            <td>密&nbsp;码：</td>
            <td><input type="password" name="admin.password" size=20/></td>
        </tr>
        <tr>
            <td><input type="submit" value="注册"/></td>
            <td><input type="reset" value="Reset"/></td>
        </tr>
    </table>
</form>
</body>
</html>
