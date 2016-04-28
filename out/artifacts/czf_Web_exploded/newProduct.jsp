<%@ page language="java" import="java.util.*" pageEncoding="GBK" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri='/struts-tags' prefix='s' %>
<s:iterator value="#request.newproducts" id="newproducts">
    <li><img src="images/<s:property value="#newproducts.picture"/>" class="img-responsive" alt=""/>
        <div class="banner_desc">
            <h1>We Provide Worlds top fashion for less fashionpress.</h1>
            <h2>FashionPress the name of the of hi class fashion Web FreePsd.</h2>
        </div>
    </li>
</s:iterator>
