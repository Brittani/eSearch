<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="org.dataBase.DataBase" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <body>
  <jsp:useBean id="DB" class="org.dataBase.DataBase" scope="page" />
   <%
  	String Email=request.getParameter("Email");
	String PW=request.getParameter("PW");
	
	String results = "";
 	results = DB.login(Email,PW);
	if(Email == ""){
		out.print("<script language='javascript'>alert('登陆失败！'); window.self.location='../login.jsp';</script>");
	}else{
		if(results=="登陆成功"){
	   	 session.setAttribute("Emailxxx",Email);
    	 out.print("<script language='javascript'>alert('登陆成功！'); window.self.location='../index.jsp';	</script>");
		}else{
		 out.print("<script language='javascript'>alert('登陆失败！'); window.self.location='../login.jsp';</script>");
		}
	}
 	%>
  </body>
  </head>
</html>