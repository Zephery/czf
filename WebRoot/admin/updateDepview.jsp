<%--
  Created by IntelliJ IDEA.
  User: Zephery
  Date: 2016/4/15
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<s:set name="department" value="#request.department"/>
<s:form action="updateDepartment" method="post" enctype="multipart/form-data">
    <table border="0" cellspacing="1" cellpadding="8" width="500">
        <tr>
            <td>
                id:<input type="text" name="department.id" value="<s:property value="#department.id"/>" readonly/>
            </td>
        </tr>
        <tr>
            <td>
                name:<input type="text" name="department.name" value="<s:property value="#department.name"/>"/>
            </td>
        </tr>
        <tr>
            <td>
                address:<input type="text" name="department.address" value="<s:property value="#department.address"/>"/>
            </td>
        </tr>
            <%--
            <tr>
                <td>
                    <s:textfield name="department.phoneNumber" label="phoneNumber" value="${department.phoneNumber}"/>
                </td>
            </tr>
            <tr>
                <td>
                    <s:textfield name="department.mobileNumber" label="mobileNumber" value="${department.mobileNumber}"/>
                </td>
            </tr>

            <tr>
                <td>
                    <s:textfield name="department.brief" label="brief" value="${department.brief}"/>
                </td>
            </tr>
            <tr>
                <td>
                    Picture:<s:file name="zpFile" label="picture" value="${department.picture}"/>
                </td>
            </tr>
            --%>
        <tr>
            <td>
                <input type="submit" value="Submit"/>
            </td>
            <td>
                <input type="reset" value="Reset"/>
            </td>
        </tr>
    </table>
</s:form>
</body>
</html>
