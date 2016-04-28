<%--
  Created by IntelliJ IDEA.
  User: Zephery
  Date: 2016/4/24
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri='/struts-tags' prefix='s' %>
<h1>Success</h1>
<span id="tiao">3</span><a
        href="javascript:countDown"></a>布丁足迹;秒后自动跳转……<meta http-equiv=refresh content=3;url="/login.jsp"/></ul>

<!--脚本开始-->
<script language="javascript" type="">
    function countDown(secs) {
        tiao.innerText = secs;
        if (--secs > 0)
            setTimeout("countDown(" + secs + ")", 1000);
        jump();
    }
    function jump() {
        if (top.location != self.location) {
            top.location = self.location;
        }
    }
    countDown(3);
</script>