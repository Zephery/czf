<%--
  Created by IntelliJ IDEA.
  User: Zephery
  Date: 2016/4/26
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri='/struts-tags' prefix='s' %>
<div class="column_center">
    <div class="container">
        <div class="search">
            <div class="stay">Search Product</div>
            <div class="stay_right">
                <form action="searchbyname" method="post">
                    <input type="text" value="" name="name" onfocus="this.value = '';"
                           onblur="if (this.value == '') {this.value = '';}">
                    <input type="submit" value="">
                </form>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
