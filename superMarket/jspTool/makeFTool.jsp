<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <body>
  <jsp:useBean id="DB" class="org.dataBase.DataBaseSuper" scope="page" />
<%
	 request.setCharacterEncoding("utf-8");
	 String names= session.getAttribute("Emailxxx").toString();
	 String title=request.getParameter("title");
	 String inf=request.getParameter("inf");

	 DB.makeFriends(inf,names,title);
	 
	out.print("<script language='javascript'>alert('发布成功'); window.self.location='../makeFriends.jsp';</script>");
%>
  </body>
  </head>
</html>