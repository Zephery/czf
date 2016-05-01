<%--
  Created by IntelliJ IDEA.
  User: Zephery
  Date: 2016/4/13
  Time: 19:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<table>
    <tr>
        <td>${department.id}</td>
    </tr>
    <tr>
        <td>${department.name}</td>
    </tr>
    <tr>
        <td>${department.address}</td>
    </tr>
    <tr>
        <td>${department.phoneNumber}</td>
    </tr>
    <tr>
        <td>${department.mobileNumber}</td>
    </tr>
    <tr>
        <td>${department.brief}</td>
    </tr>
    <tr>
        <td>${department.picture}</td>
    </tr>
    <tr>
        <td>
            <a href="deleteProduct.action?department.id=${department.id}"
               onClick="if(!confirm('delete product?'))return false;else return true;">delete</a>
        </td>
    </tr>
    <tr>
        <td>
            <a href="updateDepartment.action?department.id=${department.id}">update</a>
        </td>
    </tr>

</table>