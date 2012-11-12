<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link media="screen" type="text/css" href="css/main.css" rel="stylesheet" />
<link media="screen" type="text/css" href="css/products.css" rel="stylesheet" />
<script type="text/javascript" language="javascript">
	var res = /^[1-9]*$/;
	function checkEmpty(){
		if(document.form1.num.value==""){
			alert("数目不能为空");
			return false;
		}else if(document.form1.address.value==""){
			alert("请填写地址");
			return false;
		}else if(document.form1.phone.value==""){
			alert("请填写电话");
			return false;
		}else if(!res.test(document.form1.phone.value)){
			alert("电话必须是数字");
			return false;
		}else{
			return true;
		}
	}
</script>
<title>商品展示</title>
</head>

<body>
<div class="contain">
<%@ include file="hand.jsp" %><!-- 插入头文件 -->

<div class="body_porducts">
	<div class="body_list">
    <p>店家的其他货物</p>
    <div class="list_itemBlock">
    <%@ include file="jspTool/config.jsp" %>
    <%
	 request.setCharacterEncoding("utf-8");
	 response.setCharacterEncoding("utf-8");
	 
	 String ha = request.getParameter("owners");
	 String haID= request.getParameter("pro");
	 String sql = "select * from products where owner = '" + ha + "'";
	 
	 Class.forName(driver);
	 Connection conn = DriverManager.getConnection(url,user,password);
	 Statement stmt = conn.createStatement();
	 ResultSet rs= stmt.executeQuery(sql);//执行SQL语句

	while(rs.next()){
		%>
            <div class="list_item">
        	<div class="item_img"><img width="85px" height="85px" src="<%= rs.getString("pageSmallImg") %>" /></div>
            <p><%= rs.getString("ProductPrice")%>.00</p>
       		</div>
        <%
	}
	%>
    </div>
    </div>
    <div class="body_information">
        	<%
				sql = "select * from products where ProductID = '" + haID + "'";
				rs= stmt.executeQuery(sql);//执行SQL语句	
				while(rs.next()){
			%>
        <div class="information_detailMap" ><img class="mImg" src="<%= rs.getString("PageBigImg") %>" /></div>
        <div class="information_detaiWords">
            <p class="words_title"><%= rs.getString("owner") %></p>
            <p class="words_title"><%= rs.getString("ProductName") %></p>
            <p class="words_dio">------------------------------------------</p>
            <p class="words_pros">宝贝价格: <span><%= rs.getString("ProductPrice") %></span> 元</p>
            <p class="words_someThing">库存数目：<%= rs.getString("ProductNum") %> 件</p>
            <p class="words_someThing">卖出数目：<%= rs.getString("Sold") %> 件</p>
            <p class="words_someThing">宝贝编号：<%= rs.getString("ProductID") %></p>
            <p class="words_someThing">宝贝品牌：<%= rs.getString("ProductBrand") %></p>
            <p class="words_someThing">宝贝店主：<%= rs.getString("owner") %></p>
            <p class="words_someThing">上货日期：<%= rs.getString("Data") %></p>

            <form method="post" name="form1" action="jspTool/newOrder.jsp?PID=<%= rs.getString("ProductID") %>&sold=<%= rs.getString("Sold") %>" onsubmit="return checkEmpty()">
            <div class="set_block">
            <p>我想要买<input type="text" name="num"  onkeyup="this.value=this.value.replace(/[^0-9]/g,'')" />件,<span>热销中，赶快抢购</span></p>
            <p>我的地址<input type="text" name="address" class="inputLang" /></p>
            <p>我的电话<input type="text" name="phone" class="inputLang" /></p>
            </div>
            <input class="BuySubmit" type="submit" value="" /></form>
         </div>
    </div>
    <div class="information_imgs">
    	<img class="bImg" src="<%= rs.getString("pageMap") %>" />
        <p class="pro_tit">商品描述</p>
        <p class="pro_der"><%= rs.getString("desc_T") %></p>
    </div>
       <%
	}
	%>
</div>

<%@ include file="footer.jsp" %><!-- 插入尾文件 -->
</div>
</body>
</html>