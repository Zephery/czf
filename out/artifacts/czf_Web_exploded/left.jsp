<%--
  Created by IntelliJ IDEA.
  User: Zephery
  Date: 2016/4/23
  Time: 19:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri='/struts-tags' prefix='s' %>
<jsp:include page="searchbyname.jsp"/>
<div class="main">
    <div class="content_top">
        <div class="container">
            <div class="col-md-3 sidebar_box">
                <div class="sidebar">
                    <div class="menu_box">
                        <h3 class="menu_head">Products Menu</h3>
                        <s:action name="tomenu" namespace="/" executeResult="true"/>
                    </div>
                    <!--initiate accordion-->
                    <script type="text/javascript">
                        $(function () {
                            var menu_ul = $('.menu > li > ul'),
                                    menu_a = $('.menu > li > a');
                            menu_ul.hide();
                            menu_a.click(function (e) {
                                e.preventDefault();
                                if (!$(this).hasClass('active')) {
                                    menu_a.removeClass('active');
                                    menu_ul.filter(':visible').slideUp('normal');
                                    $(this).addClass('active').next().stop(true, true).slideDown('normal');
                                } else {
                                    $(this).removeClass('active');
                                    $(this).next().stop(true, true).slideUp('normal');
                                }
                            });

                        });
                    </script>
                </div>
                <div class="delivery">
                    <img src="images/delivery.jpg" class="img-responsive" alt=""/>
                    <h3>Delivering</h3>
                    <h4>World Wide</h4>
                </div>
                <div class="twitter">
                    <h3>Latest From Twitter</h3>
                    <ul class="twt1">
                        <i class="twt"> </i>
                        <li class="twt1_desc"><span class="m_1">@Contrary</span> to popular belief, Lorem Ipsum is<span
                                class="m_1"> not simply</span></li>
                        <div class="clearfix"></div>
                    </ul>
                    <ul class="twt1">
                        <i class="twt"> </i>
                        <li class="twt1_desc"><span class="m_1">There are many</span> variations of passages of Lorem
                            Ipsum available, but the majority <span class="m_1">have suffered</span></li>
                        <div class="clearfix"></div>
                    </ul>
                    <ul class="twt1">
                        <i class="twt"> </i>
                        <li class="twt1_desc"><span class="m_1">Lorem Ipsum</span> is simply dummy text of the printing
                            and typesetting industry. Lorem Ipsum has <span class="m_1">been the industry's standard dummy text ever</span>
                        </li>
                        <div class="clearfix"></div>
                    </ul>
                </div>
                <div class="clients">
                    <h3>Our Happy Clients</h3>
                    <h4>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque
                        laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto
                        beatae.</h4>
                    <ul class="user">
                        <i class="user_icon"></i>
                        <li class="user_desc"><a href="#"><p>John Doe, Company Info</p></a></li>
                        <div class="clearfix"></div>
                    </ul>
                </div>
            </div>

            <!--在right.jsp记得把div补上-->


