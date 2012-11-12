<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="config.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <body>
  <jsp:useBean id="DB" class="org.dataBase.DataBase" scope="page" />
<%
	 request.setCharacterEncoding("utf-8");
	 String db=request.getParameter("names");
	 String names= session.getAttribute("Emailxxx").toString();
	 String title=request.getParameter("title");
	 String inf=request.getParameter("inf");
	 
	 String sql="insert into "+db+"(information,name_table,title_table) values('"+inf+"','"+names+"','"+title+"')";
	 
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url,user,password);
	Statement stmt = conn.createStatement();
	stmt.executeUpdate(sql);

	 
	out.print("<script language='javascript'>alert('发布成功'); window.self.location='../other_"+db+".jsp';</script>");
%>
  </body>
  </head>
</html>