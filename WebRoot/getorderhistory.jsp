<%--
  Created by IntelliJ IDEA.
  User: Zephery
  Date: 2016/4/29
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri='/struts-tags' prefix='s' %>
<s:iterator value="#request['orders']" id="order">
    <h1>order.allprice<s:property value="#order.allprice"/></h1>
    <h1>order.orderdatetime<s:property value="#order.orderdatetime"/></h1>
    <h1>order.send<s:property value="#order.send"/></h1>
</s:iterator>
<s:iterator value="#request['orderitems']" id="orderitem">
    <h1>orderitem.quantity<s:property value="#orderitem.quantity"/></h1>
</s:iterator>
<s:iterator value="#request['soldproducts']" id="soldproduct">
    <h1><s:property value="#soldproduct.name"/></h1>
    <img src="images/<s:property value="#soldproduct.picture"/> "/>
</s:iterator>