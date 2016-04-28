<%--
  Created by IntelliJ IDEA.
  User: Zephery
  Date: 2016/4/28
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri='/struts-tags' prefix='s' %>
<div class="col-md-9 single_right">
    <div class="single_top">


        <div class="top_grid2">
            <s:iterator value="#request['products']" id="product" status="st">
            <div class="col-md-4 top_grid1-box1">
                <a href="single?product.productid=<s:property value="#product.productid"/> ">
                    <div class="grid_1">
                        <div class="b-link-stroke b-animate-go  thickbox">
                            <img src="images/<s:property value="#product.picture"/> " class="img-responsive"
                                 alt=""/></div>
                        <div class="grid_2">
                            <p>There are many variations of passages</p>
                            <ul class="grid_2-bottom">
                                <li class="grid_2-left">
                                    <p>$99
                                        <small>.33</small>
                                    </p>
                                </li>
                                <li class="grid_2-right"><a href="single.jsp" title="Get It"
                                                            class="btn btn-primary btn-normal btn-inline "
                                                            target="_self">Get It</a></li>
                                <div class="clearfix"></div>
                            </ul>
                        </div>
                    </div>
                </a></div>

            <s:if test="#st.count%3==0">
            <div class="clearfix"></div>
        </div>
        <div class="top_grid2">
            </s:if>
            </s:iterator>


            <s:set name="pager" value="#request.pager"/>
            <s:if test="#pager.hasFirst">
                <s:a href="showproduct.action?pageNow=1">��ҳ</s:a>
            </s:if>
            <s:if test="#pager.hasPre">
                <a href="showproduct.action?pageNow=<s:property value="#pager.pageNow-1"/>">��һҳ</a>
            </s:if>
            <s:if test="#pager.hasNext">
                <a href="showproduct.action?pageNow=<s:property value="#pager.pageNow+1"/>">��һҳ</a>
            </s:if>
            <s:if test="#pager.hasLast">
                <a href="showproduct.action?pageNow=<s:property value="#pager.totalPage"/>">βҳ</a> <br>

                ��ǰ��<s:property value="#pager.pageNow"/>ҳ, �ܹ�<s:property value="#pager.totalPage"/>ҳ
            </s:if>
            <s:if test="#pager.pageNow>1">
                <a href="showproduct.action?pageNow=<s:property value="#pager.pageNow-1"/>"><s:property
                        value="#pager.pageNow-1"/></a>
            </s:if>
            <a href="showproduct.action?pageNow=<s:property value="#pager.pageNow"/>"><s:property
                    value="#pager.pageNow"/></a>
            <s:if test="#pager.hasNext">
                <a href="showproduct.action?pageNow=<s:property value="#pager.pageNow+1"/>"><s:property
                        value="#pager.pageNow+1"/></a>
            </s:if>


        </div>
    </div>
</div>
</div>