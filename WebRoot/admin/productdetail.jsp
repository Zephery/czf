<%--
  Created by IntelliJ IDEA.
  User: Zephery
  Date: 2016/5/2
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<jsp:include page="head.jsp"/>
<s:iterator value="#request['product']" id="product">
    <table width="80%" align="center">
        <tr>
            <td><h4><s:property value="#product.productid"/></h4></td>
        </tr>
        <tr>
            <td><h4><s:property value="#product.name"/></h4></td>
        </tr>
        <tr>
            <td><img src="/images/<s:property value="#product.picture"/>"/></td>
        </tr>
        <tr>
            <td><h4><s:property value="#product.price"/></h4></td>
        </tr>
        <tr>
            <td><h4><s:property value="#product.brief"/></h4></td>
        </tr>
    </table>
</s:iterator>