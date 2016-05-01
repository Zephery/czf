<%--
  Created by IntelliJ IDEA.
  User: Zephery
  Date: 2016/4/11
  Time: 17:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="addProduct" method="post" enctype="multipart/form-data">
    <table>
        <tr>
            <td>
                <s:textfield name="product.id" label="Id"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:textfield name="product.name" label="Name"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:textfield name="product.number" label="Number"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:textfield name="product.barCode" label="Barcode"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:textfield name="product.category" label="Category"/>
            </td>
        </tr>

        <tr>
            <td>
                <s:textfield name="product.standard" label="Standard"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:textfield name="product.casing" label="Casing"/>
            </td>
        </tr>
        <tr>
            <td>
                Price:<input type="text" name="product.price"/>
            </td>
        </tr>
        <tr>
            <td>
                Brief:<input type="text" name="product.brief"/>
            </td>
        </tr>
        <tr>
            <td>
                Declaration:<input type="text" name="product.declaration"/>
            </td>
        </tr>
        <tr>
            <td>
                Remark:<input type="text" name="product.remark"/>
            </td>
        </tr>
        <tr>
            <td>
                Picture:<s:file name="zpFile" label="picture"/>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Submit"/>
            </td>
            <td>
                <input type="reset" value="Reset"/>
            </td>
        </tr>
    </table>
</form>

</body>
</html>
