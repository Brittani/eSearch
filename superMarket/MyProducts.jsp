<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link media="screen" type="text/css" href="css/main.css" rel="stylesheet" />
<link media="screen" type="text/css" href="css/myPor.css" rel="stylesheet" />
<title>产品列表</title>
</head>

<body>
<div id="All" class="all">
<%@ include file="hand.jsp" %><!-- 插入头文件 -->


<div id="pageBody" class="pageBody">
	<div class="body_list">
    <p>会员中心</p>
    <div class="list_itemBlock">
 		<div class="list_words"><a href="checkProducts.jsp">添加商品</a></div>
        <div class="list_words"><a href="myOrder.jsp">我的订单</a></div>
        <div class="list_words"><a href="soldOrder.jsp">我的卖出</a></div>
        <div class="list_words"><a href="MyProducts.jsp">我的商品</a></div>
        <div class="list_words"><a href="personal.jsp">个人信息修改</a></div>
    </div>
    </div>

    <div class="body_porducts">
    	<%@ include file="jspTool/myProduct.jsp" %>
    </div>
</div><!-- end infor -->

<%@ include file="footer.jsp" %><!-- 插入尾文件 -->
</div>
</body>
</html>