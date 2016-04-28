<%--
  Created by IntelliJ IDEA.
  User: Zephery
  Date: 2016/4/26
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri='/struts-tags' prefix='s' %>
<jsp:include page="head.jsp"/>
<jsp:include page="left.jsp"/>
<div class="col-md-9 content_right">
    <s:set name="items" value="#session.cart.items"/>
    <s:if test="#items.size != 0">
        <h3><font color="blue">您购物车中图书</font></h3>
        <div class="info_bk1">
            <s:iterator value="items" id="item">
                <s:form action="updateCart" method="post">
                    <table width="600" border="0">
                        <tr align="left">
                            <td width="50">书名：</td>
                            <td width="100">
                                <s:property value="value.product.name"/>
                            </td>
                            <td width="50">价格：</td>
                            <td width="50">
                                <input type="text" name="price"
                                       style="border:0px;background:rgba(0, 0, 0, 0);"
                                       value="<s:property value="value.product.price" />" readonly/>
                            </td>
                            <td width="50">数量：</td>
                            <td width="50">
                                <input type="text" name="quantity" value="<s:property value="value.quantity"/>"
                                       size="4"/>
                                <input type="hidden" name="productid"
                                       value="<s:property value="value.product.productid"/>"/>
                            </td>
                            <td width="50">
                                <input type="submit" value="更新"/>
                            </td>
                        </tr>
                    </table>
                </s:form>
            </s:iterator>
        </div>
        消费金额:<s:property value="#session.cart.totalPrice"/>元&nbsp;&nbsp;&nbsp;
        <a href="checkout.action"><img src="images/count.gif"/></a>
    </s:if>
    <s:else>
        对不起,您还没有选购任何书籍!
    </s:else>
</div>
</div>
</div>
<jsp:include page="foot.jsp"/>