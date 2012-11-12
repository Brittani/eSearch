<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%
	if(session.getAttribute("Emailxxx")==null){
	 	out.print("<script language='javascript'>alert('请登录'); window.self.location='../login.jsp';</script>");
	}
	String proID = request.getParameter("pro");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link media="screen" type="text/css" href="css/main.css" rel="stylesheet" />
<link media="screen" type="text/css" href="css/products.css" rel="stylesheet" />
<title>修改宝贝</title>
</head>

<body>
<div class="contain">
<%@ include file="hand.jsp" %><!-- 插入头文件 -->
<div class="body_porducts">
    <form name="form1" method="post"
    enctype="multipart/form-data"
    action="jspTool/smartUpDate.jsp">
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
    <div class="body_information">
        <div class="information_detailMap" ><input type="file" name="file1" /><p>*仅支持jpg格式,尺寸420*420</p></div>
        <div class="information_detaiWords">
            <p class="words_title">修改名称<input type="text" name="productsName" /></p>
            <p class="words_dio">------------------------------------------</p>
            <p class="words_pros">修改价格<input type="text" name="productPrice" /> 元</p>
            <p class="words_someThing">修改图片：<input type="file" name="file2" />*仅支持jpg格式,尺寸185*185</p>
            <p class="words_someThing">修改数目：<input type="text" name="productsNum" /></p>
            <p class="words_someThing">修改类型：<select name="productType" >
            <option value="1">时尚包包</option>
            <option value="2">美丽衣裳</option>
            <option value="3">珠光宝气</option>
            <option value="4">书籍文具</option>
            <option value="5">护肤美容</option>
            <option value="6">时尚鞋子</option>
			</select></p>
            <p class="words_someThing">修改品牌：<input type="text" name="productBrand" /></p>
         </div>
    </div>
    <div class="information_imgs">
    	<br />
    	<p>修改大图<input type="file" name="file3" />*仅支持jpg格式,尺寸宽度740</p>
        <br />
        <p>商品的描述修改</p>
        <br />
        <textarea class="textarea" name="dec" ></textarea>
         <input type="hidden" value="<%= proID %>" name="pro" />
        <br />
        <input type="submit" class="oksubmit" value="确认提交" />
        <br />
        <br />
    </div>
     </form>
</div>
<%@ include file="footer.jsp" %><!-- 插入尾文件 -->
</div>
</body>
</html>