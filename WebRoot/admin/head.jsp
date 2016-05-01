<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<jsp:include page="head.jsp"/>
<s:if test="#session.admin==null">
    <jsp:forward page="/admin/index.jsp"/>
</s:if>
<s:else>
    <s:set name="admin" value="#session['admin']"/>
    <a><s:property value="admin.adminname"/> </a>
    <a href="adminlogout">
        <li>Logout</li>
    </a>
</s:else>
<a href="department">department</a>
<a href="addProduct">addProduct</a>
<a href="addAdmin">addAdmin</a>
<a href="updateDepview">updateDepview</a>