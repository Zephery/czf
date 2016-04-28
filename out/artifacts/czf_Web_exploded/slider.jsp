<%--
  Created by IntelliJ IDEA.
  User: Zephery
  Date: 2016/4/24
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri='/struts-tags' prefix='s' %>


<div class="slider">
    <div class="callbacks_container">
        <ul class="rslides" id="slider">
            <s:action name="getNewProduct" namespace="/" executeResult="true"/>
        </ul>
    </div>
</div>