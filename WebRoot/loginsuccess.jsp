<%--
  Created by IntelliJ IDEA.
  User: Zephery
  Date: 2016/4/23
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri='/struts-tags' prefix='s' %>
<jsp:include page="head.jsp"/>
<jsp:include page="searchbyname.jsp"/>
<s:iterator value="#request['user']" id="user">
    <h1><s:property value="#user.userid"/></h1>
    <h1><s:property value="#user.ussername"/></h1>
    <h1><s:property value="#user.email"/></h1>
    <h1><s:property value="#user.age"/></h1>
    <h1><s:property value="#user.phonenumbber"/></h1>
    <h1><s:property value="#user.sex"/></h1>
    <img src="images/<s:property value="#user.picture"/>" style="height: 50px;width: 50px;"/>
</s:iterator>
<jsp:include page="foot.jsp"/>