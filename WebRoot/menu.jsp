<%--
  Created by IntelliJ IDEA.
  User: Zephery
  Date: 2016/4/26
  Time: 1:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri='/struts-tags' prefix='s' %>
<ul class="menu">
    <s:iterator value="#request['totalcatalogs']" id="totalcatalog" status="st">
        <li class="item1"><a href="#"><img class="arrow-img" src="images/f_menu.png" alt=""/>
            <s:property value="#totalcatalog.totalcatalogname"/></a>
            <s:action name="tomenulist" namespace="/" executeResult="true">
                <s:param name="totalcatalogid"><s:property value="#totalcatalog.totalcatalogid"/></s:param>
            </s:action>
        </li>
    </s:iterator>
</ul>
