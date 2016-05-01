<%--
  Created by IntelliJ IDEA.
  User: Zephery
  Date: 2016/4/11
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<s:set name="product" value="#request.product"/>
<s:form action="update" method="post" enctype="multipart/form-data">
    <table border="0" cellspacing="1" cellpadding="8" width="500">
        <tr>
            <td>
                id:<input type="text" name="product.id" value="<s:property value="#product.id"/>" readonly/>
            </td>
        </tr>
        <tr>
            <td>
                name:<input type="text" name="product.name" value="<s:property value="#product.name"/>"/>
            </td>
        </tr>
        <tr>
            <td>
                number:<input type="text" name="product.number" value="<s:property value="#product.number"/>"/>
            </td>
        </tr>
        <tr>
            <td>
                standard:<input type="text" name="product.standard" value="<s:property value="#product.standard"/>"/>
            </td>
        </tr>
        <tr>
            <td>
                casing:<input type="text" name="product.casing" value="<s:property value="#product.casing"/>"/>
            </td>
        </tr>
        <tr>
            <td>
                price:<input type="text" name="product.price" value="<s:property value="#product.price"/>"/>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="修改"/>
            </td>
            <!-- 返回上一界面 -->
            <td>
                <input type="button" value="返回" onclick="javascript:history.back();"/>
            </td>
        </tr>
    </table>
</s:form>
</body>
</html>