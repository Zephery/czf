<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<table width="80%" align="center">
    <tr>
        <td colspan="2">
            <hr/>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">${product.declaration}</td>
        <td>
            <img height="105" width="80" src="images/${product.picture}"/>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">${product.declaration}</td>
    </tr>
    <tr>
        <td colspan="2" align="center">${product.declaration}</td>
    </tr>
    <tr>
        <td colspan="2">${product.remark}</td>
    </tr>
    <tr>
        <td colspan="2">
            <hr/>
        </td>
    </tr>
</table>