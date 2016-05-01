<%--
  Created by IntelliJ IDEA.
  User: Zephery
  Date: 2016/4/13
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="head.jsp"/>
<h1>部门表</h1>
<table>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>address</th>
        <th>delete?</th>
        <th>update?</th>
    </tr>
    <s:iterator value="#request['department']" id="department">
        <tr>
            <td>
                <h4><s:property value="#department.id"/></h4></td>
            <td>
                <h4><s:property value="#department.name"/></h4></td>
            <td>
                <h4><s:property value="#department.address"/></h4></td>
            <td>
                <a href="detail?id=<s:property value="#department.id"/>"><s:property
                        value="#department.name"/></a></td>
            <td>
                <a href="deleteDepartment.action?department.id=<s:property value="#department.id"/>"
                   onClick="if(!confirm('确定删除该product吗？'))return false;else return true;">删除</a></td>
            <td>
                <a href="ToUpdateDepView.action?department.id=<s:property value="#department.id"/>">修改</a></td>
        </tr>
    </s:iterator>
</table>
</body>
</html>
