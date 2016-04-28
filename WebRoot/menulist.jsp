<%--
  Created by IntelliJ IDEA.
  User: Zephery
  Date: 2016/4/26
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri='/struts-tags' prefix='s' %>
<ul class="cute">
    <s:iterator value="#request['catalogs00']" id="catalogs00" status="st">
        <li class="subitem1"><a
                href="catalogProductdetail?catalog.catalogid=<s:property value="#catalogs00.catalogid"/>">
            <s:property value="#catalogs00.catalogname"/>==</a></li>
    </s:iterator>
</ul>