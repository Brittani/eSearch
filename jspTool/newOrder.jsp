<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="org.dataBase.DataBase" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link media="screen" type="text/css" href="css/main.css" rel="stylesheet" />
<link media="screen" type="text/css" href="css/products.css" rel="stylesheet" />
<title>产品信息</title>
</head>
  <body>
  <jsp:useBean id="DB" class="org.dataBase.DataBase" scope="page" />
 <%
	String buyer = "";
	request.setCharacterEncoding("utf-8");
	String productID=request.getParameter("PID");
	String num=request.getParameter("num");
	String address=request.getParameter("address");
	String phone=request.getParameter("phone");
	
	if(num==""){
		out.print("<script language='javascript'>alert('数量不正确'); window.self.location='../index.jsp';</script>");
		num="0";
	}else if(address==""){
		out.print("<script language='javascript'>alert('地址未填'); window.self.location='../index.jsp';</script>");
	}else if(phone==""){
		out.print("<script language='javascript'>alert('电话未填'); window.self.location='../index.jsp';</script>");
	}
	
	int nums = Integer.parseInt(num);
	if(nums<1){
	 	out.print("<script language='javascript'>alert('数量不正确'); window.self.location='../index.jsp';</script>");
	 }
	 if(session.getAttribute("Emailxxx")==null){
	 	out.print("<script language='javascript'>alert('请登录'); window.self.location='../login.jsp';</script>");
	 }else{
	 	buyer = session.getAttribute("Emailxxx").toString();
		int results = 0;
 		results = DB.setOrder(buyer,productID,num,phone,address);
		if(results>=1){
    	 out.print("<script language='javascript'>alert('完成交易'); window.self.location='../myOrder.jsp';</script>");
		}else{
		 out.print("<script language='javascript'>alert('交易失败'); window.self.location='../index.jsp';</script>");
		}
	 }
  %>
  </body>
</html>