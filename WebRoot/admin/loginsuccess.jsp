<%--
  Created by IntelliJ IDEA.
  User: Zephery
  Date: 2016/4/4
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Hello</title>
</head>
<body>
<h1>Hello world</h1>
<a href="department.action?">点击这里进入部门</a>
<a href="addadmin.jsp">点我添加管理</a>
<form action="searchProduct" method="post">
    <table>
        <tr>
            <td>product:<input type="text" name="name"></td>
            <td><input type="submit" value="Submit"/></td>
        </tr>
    </table>
</form>
<h4><s:property value="user.username"/></h4>
<a href="logout">注销</a>
<a href="addProduct.jsp">Add product</a><br>
<s:action name="department" executeResult="true"/>
<s:action name="newProduct" executeResult="true"/>
</body>
</html>
