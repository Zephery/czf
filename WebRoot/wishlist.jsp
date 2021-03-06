<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" import="java.util.*" pageEncoding="GBK" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri='/struts-tags' prefix='s' %>
<jsp:include page="head.jsp"/>
<div class="column_center">
    <div class="container">
        <div class="search">
            <div class="stay">Search Product</div>
            <div class="stay_right">
                <input type="text" value="" onfocus="this.value = '';"
                       onblur="if (this.value == '') {this.value = '';}">
                <input type="submit" value="">
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<div class="about">
    <div class="container">
        <div class="register">
            <h4 class="title">Shopping cart is empty</h4>
            <p class="cart">You have no items in your shopping cart.<br>Click<a href="index.jsp"> here</a> to continue
                shopping</p>
        </div>
    </div>
</div>
<jsp:include page="foot.jsp"/>