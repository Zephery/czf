<%--
  Created by IntelliJ IDEA.
  User: Zephery
  Date: 2016/4/13
  Time: 20:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="addDepartment" method="post" enctype="multipart/form-data">
    <table>
        <tr>
            <td>
                <s:textfield name="department.id" label="Id"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:textfield name="department.name" label="Name"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:textfield name="department.address" label="Number"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:textfield name="department.phoneNumber" label="phoneNumber"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:textfield name="department.mobileNumber" label="mobileNumber"/>
            </td>
        </tr>

        <tr>
            <td>
                <s:textfield name="department.brief" label="brief"/>
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