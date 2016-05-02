<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<jsp:include page="head.jsp"/>
<form action="searchProduct" method="post" enctype="multipart/form-data">
    <table>
        <tr>
            <td>product:<input type="text" name="name"></td>
            <td><input type="submit" value="Submit"/></td>
        </tr>
    </table>
</form>
<a href="toaddProduct">add Product</a>

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
                <img height="105" width="80" src="/images/<s:property value="#product.picture"/>"/></td>
            <td><h4><s:property value="#product.name"/></h4></td>
            <td><h4><s:property value="#product.brief"/></h4></td>
            <td><a href="productdetail?id=<s:property value="#product.productid"/>"><b><s:property
                    value="#product.name"/></b></a></td>
            <td><a href="deleteProduct.action?product.id=<s:property value="#product.productid"/>"
                   onClick="if(!confirm('确定删除该product吗？'))return false;else return true;">删除</a></td>
            <td><a href="updateProduct.action?product.id=<s:property value="#product.productid"/>">修改</a></td>
        </tr>
    </s:iterator>
</table>


<s:set name="pager" value="#request.pager"/>
<s:if test="#pager.hasFirst">
    <s:a href="showproduct.action?pageNow=1">首页</s:a>
</s:if>
<s:if test="#pager.hasPre">
    <a href="showproduct.action?pageNow=<s:property value="#pager.pageNow-1"/>">上一页</a>
</s:if>
<s:if test="#pager.hasNext">
    <a href="showproduct.action?pageNow=<s:property value="#pager.pageNow+1"/>">下一页</a>
</s:if>
<s:if test="#pager.hasLast">
    <a href="showproduct.action?pageNow=<s:property value="#pager.totalPage"/>">尾页</a> <br>

    当前第<s:property value="#pager.pageNow"/>页, 总共<s:property value="#pager.totalPage"/>页
</s:if>
<s:if test="#pager.pageNow>1">
    <a href="showproduct.action?pageNow=<s:property value="#pager.pageNow-1"/>"><s:property
            value="#pager.pageNow-1"/></a>
</s:if>
<a href="showproduct.action?pageNow=<s:property value="#pager.pageNow"/>"><s:property
        value="#pager.pageNow"/></a>
<s:if test="#pager.hasNext">
    <a href="showproduct.action?pageNow=<s:property value="#pager.pageNow+1"/>"><s:property
            value="#pager.pageNow+1"/></a>
</s:if>