<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
</head>
<body>
<jsp:include page="head.jsp"/>
<form action="adminlogin" method="post">
    用户登录
    <br>
    用户名：
    <input type="text" name="admin.adminname" size=20>
    <br>
    密&nbsp;&nbsp;&nbsp;&nbsp;码：
    <input type="password" name="admin.password" size=21>
    <br>
    <input type="submit" value="登录">

</form>
</body>
</html>
