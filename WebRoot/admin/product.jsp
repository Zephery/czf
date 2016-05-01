<%@ page language="java" import="java.util.*" pageEncoding="GBK" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<form action="searchProduct" method="post">
    <table>
        <tr>
            <td>product:<input type="text" name="name"></td>
            <td><input type="submit" value="Submit"/></td>
        </tr>
    </table>
</form>


<table>
    <tr>
        <th>image</th>
        <th>brief</th>
        <th>name</th>
        <th>delete</th>
        <th>update</th>
    </tr>
    <s:iterator value="#request['products']" id="product">
        <tr>
            <td>
                <img height="105" width="80" src="images/<s:property value="#product.picture"/>"/></td>
            <td><h4><s:property value="#product.name"/></h4></td>
            <td><h4><s:property value="#product.brief"/></h4></td>
            <td><a href="test?id=${product.id}"><b>${product.name}</b></a></td>
            <td><a href="deleteProduct.action?product.id=${product.id}"
                   onClick="if(!confirm('确定删除该product吗？'))return false;else return true;">删除</a></td>
            <td><a href="updateProduct.action?product.id=<s:property value="#product.id"/>">修改</a></td>
        </tr>
    </s:iterator>
</table>


<s:set name="pager" value="#request.pager"/>
<s:if test="#pager.hasFirst">
    <s:a href="newProduct.action?pageNow=1">首页</s:a>
</s:if>
<s:if test="#pager.hasPre">
    <a href="newProduct.action?pageNow=<s:property value="#pager.pageNow-1"/>">上一页</a>
</s:if>
<s:if test="#pager.hasNext">
    <a href="newProduct.action?pageNow=<s:property value="#pager.pageNow+1"/>">下一页</a>
</s:if>
<s:if test="#pager.hasLast">
    <a href="newProduct.action?pageNow=<s:property value="#pager.totalPage"/>">尾页</a> <br>

    当前第<s:property value="#pager.pageNow"/>页, 总共<s:property value="#pager.totalPage"/>页
</s:if>
<s:if test="#pager.pageNow>1">
    <a href="newProduct.action?pageNow=<s:property value="#pager.pageNow-1"/>"><s:property
            value="#pager.pageNow-1"/></a>
</s:if>
<a href="newProduct.action?pageNow=<s:property value="#pager.pageNow"/>"><s:property value="#pager.pageNow"/></a>
<s:if test="#pager.hasNext">
    <a href="newProduct.action?pageNow=<s:property value="#pager.pageNow+1"/>"><s:property
            value="#pager.pageNow+1"/></a>
</s:if>