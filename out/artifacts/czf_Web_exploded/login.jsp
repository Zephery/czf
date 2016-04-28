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
<jsp:include page="searchbyname.jsp"/>
<div class="about">
    <div class="container">
        <div class="register">
            <div class="col-md-6 login-left">
                <h3>NEW CUSTOMERS</h3>
                <p>By creating an account with our store, you will be able to move through the checkout process faster,
                    store multiple shipping addresses, view and track your orders in your account and more.</p>
                <a class="acount-btn" href="register.jsp">Create an Account</a>
            </div>
            <div class="col-md-6 login-right">
                <h3>REGISTERED CUSTOMERS</h3>
                <p>If you have an account with us, please log in.</p>
                <form action="login.action" method="post" enctype="multipart/form-data">
                    <div>
                        <span>Email Address<label>*</label></span>
                        <input type="text" name="user.username">
                    </div>
                    <div>
                        <span>Password<label>*</label></span>
                        <input type="password" name="user.password">
                    </div>
                    <a class="forgot" href="#">Forgot Your Password?</a>
                    <input type="submit" value="Login">
                </form>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<jsp:include page="foot.jsp"/>