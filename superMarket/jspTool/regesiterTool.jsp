<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <body>
  <jsp:useBean id="DB" class="org.dataBase.DataBase" scope="page" />
  <%
  	String Email=request.getParameter("Email");
	String PWcheck=request.getParameter("PWcheck");
	String hasEmail=DB.checkEmail(Email);
	if(Email == ""){
		out.print("<script language='javascript'>alert('注册失败！'); window.self.location='../regist.jsp';</script>");
	}else if(hasEmail == "yes"){
		out.print("<script language='javascript'>alert('邮箱已存在！'); window.self.location='../regist.jsp';</script>");
	}
	else{
		int results = 0;
 		results = DB.setStatus("noID",PWcheck,Email);
	
		if(results>=1){
    	 out.print("<script language='javascript'>alert('注册成功！'); window.self.location='../index.jsp';	</script>");
		}else{
		 out.print("<script language='javascript'>alert('注册失败！'); window.self.location='../regist.jsp';</script>");
		}
	}
  %>
  </body>
  </head>
</html>