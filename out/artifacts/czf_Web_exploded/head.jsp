<%--
  Created by IntelliJ IDEA.
  User: Zephery
  Date: 2016/4/23
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri='/struts-tags' prefix='s' %>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
    <title>Fashionpress an E-Commerce online Shopping Category Flat Bootstarp responsive Website Template| Single ::
        w3layouts</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Fashionpress Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- Custom Theme files -->
    <link href="css/style.css" rel='stylesheet' type='text/css'/>
    <!-- Custom Theme files -->
    <!--webfont-->
    <link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet'
          type='text/css'>
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="js/hover_pack.js"></script>
    <link rel="stylesheet" href="css/etalage.css">
    <script src="js/jquery.etalage.min.js"></script>
    <script>
        jQuery(document).ready(function ($) {

            $('#etalage').etalage({
                thumb_image_width: 300,
                thumb_image_height: 400,
                source_image_width: 900,
                source_image_height: 1200,
                show_hint: true,
                click_callback: function (image_anchor, instance_id) {
                    alert('Callback example:\nYou clicked on an image with the anchor: "' + image_anchor + '"\n(in Etalage instance: "' + instance_id + '")');
                }
            });

        });
    </script>
    <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#horizontalTab').easyResponsiveTabs({
                type: 'default', //Types: default, vertical, accordion
                width: 'auto', //auto or any width like 600px
                fit: true   // 100% fit in a container
            });
        });
    </script>







    <meta name="keywords" content="Fashionpress Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- Custom Theme files -->
    <link href="css/style.css" rel='stylesheet' type='text/css'/>
    <!-- Custom Theme files -->
    <!--webfont-->
    <link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet'
          type='text/css'>
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <script src="js/responsiveslides.min.js"></script>
    <script>
        $(function () {
            $("#slider").responsiveSlides({
                auto: true,
                nav: true,
                speed: 500,
                namespace: "callbacks",
                pager: true,
            });
        });
    </script>


</head>
<body>
<div class="header">
    <div class="header_top">
        <div class="container">
            <div class="logo">
                <a href="index.jsp"><img src="images/logo.png" alt=""/></a>
            </div>
            <ul class="shopping_grid">
                <s:if test="#session.user==null">
                    <a href="register.jsp">
                        <li>Register</li>
                    </a>
                    <a href="login.jsp">
                        <li>Sign In</li>
                    </a>
                </s:if>
                <s:else>
                    <s:set name="user" value="#session['user']"/>
                    <a>
                        <li><img src="images/<s:property value="#user.picture"/>" style="height: 35px;width:35px;"></li>
                    </a>
                    <a href="logout.action">
                        <li>Logout</li>
                    </a>
                </s:else>
                <jsp:include page="shoppingbutton.jsp"/>
            </ul>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="h_menu4"><!-- start h_menu4 -->
        <div class="container">
            <a class="toggleMenu" href="#">Menu</a>
            <ul class="nav">
                <li><a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                <li><a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                <li class="active"><a href="index.jsp" data-hover="Home">Home</a></li>

                <li><a href="showproduct" data-hover="Products">Products</a></li>

                <li><a href="register.jsp" data-hover="Registration">Company Registration</a></li>

                <li><a href="wishlist.jsp" data-hover="Wish List">Wish List</a></li>

                <li><a href="mymessage.jsp" data-hover="My Message">My Message</a></li>

                <li><a href="404.jsp" data-hover="Company Profile">Company Profile</a></li>

                <li><a href="contact.jsp" data-hover="Contact Us">Contact Us</a></li>

                <li><a href="about.jsp" data-hover="About Us">About Us</a></li>

                <li><a href="help.jsp" data-hover="help">Help</a></li>
            </ul>
            <script type="text/javascript" src="js/nav.js"></script>
        </div><!-- end h_menu4 -->
    </div>
</div>
