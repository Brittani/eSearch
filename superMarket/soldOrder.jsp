<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link media="screen" type="text/css" href="css/main.css" rel="stylesheet" />
<link media="screen" type="text/css" href="css/change.css" rel="stylesheet" />
<link media="screen" type="text/css" href="css/fy.css" rel="stylesheet" />
<title>我的订单</title>
</head>
<body>
<div class="contain">
<%@ include file="hand.jsp" %><!-- 插入头文件 -->
<div class="body_porducts">
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
    <div class="information_imgs">
    	<div class="bar">
       	 	<div class="bar_item"><p>订单号</p></div>
            <div class="bar_item"><p>商品名称</p></div>
            <div class="bar_item"><p>单价</p></div>
            <div class="bar_item"><p>商品数量</p></div>
            <div class="bar_item"><p>交货地址</p></div>
            <div class="bar_item"><p>交易日期</p></div>
            <div class="bar_item"><p>电话</p></div>
        </div>
        <%@ include file="jspTool/config.jsp" %>
        <%
 	if(session.getAttribute("Emailxxx")==null){
	 	out.print("<script language='javascript'>alert('请登录'); window.self.location='../login.jsp';</script>");
	}else{
	 request.setCharacterEncoding("utf-8");
	 String owner = session.getAttribute("Emailxxx").toString();
	 String sql = "select * from orderTable where owner='"+ owner+"'";
	 Class.forName(driver);
	 Connection conn = DriverManager.getConnection(url,user,password);
	 Statement stmt = conn.createStatement();
	 ResultSet rs= stmt.executeQuery(sql);//执行SQL语句
	 
	 //new for 分页
	 rs.last();
	 int currentPage = 0;
	 int pageSize = 5;
	 int totalNum = rs.getRow();
	 Integer n = 0;
	 String pages = request.getParameter("currentPage");
	 if(pages==null){
	 	 currentPage = 1;
		 n=0;
	 }else{
		currentPage = Integer.parseInt(pages);
		n =(currentPage -1)*pageSize;
		if(n<0){
			n=0;
		}
	 }
	
	sql = "select * from ordertable where owner = '"+owner+"'" + " limit "+n+","+pageSize;
	stmt = conn.createStatement();
	rs= stmt.executeQuery(sql);
	
	while(rs.next()){
		%>
            <div class="bar_inf">
            <div class="bar_item"><span><%= rs.getString("PID") %></span></div>
           	 <div class="bar_item"><span><%= rs.getString("productName") %></span></div>
           	 <div class="bar_item"><span><%= rs.getString("price") %></span></div>
           	 <div class="bar_item"><span><%= rs.getString("quantity") %></span></div>
           	 <div class="bar_item"><span><%= rs.getString("address_T") %></span></div>
           	 <div class="bar_item"><span><%= rs.getString("thisDate") %></span></div>
             <div class="bar_item"><span><%= rs.getString("phone_T") %></span></div>
        	</div>
        <%
		}
	%>
        	</div>
         	<div class="lit_words" >
        <%
		
	if(currentPage!=1){
		%>
        	<p><a href="soldOrder.jsp?currentPage=<%= currentPage-1 %>" >上一页</a></p>
        <%
	}
	if(currentPage*pageSize<totalNum){
		%>
        	<span><a href="soldOrder.jsp?currentPage=<%= currentPage+1 %>" >下一页</a></span>
        <%
	}
	
	}
	%>
    	</div>
   
</div>

<%@ include file="footer.jsp" %><!-- 插入尾文件 -->
</div>
</body>
</html>