<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <body>
  <jsp:useBean id="DB" class="org.dataBase.DataBaseSuper" scope="page" />
<%
	 request.setCharacterEncoding("utf-8");
	 String names= session.getAttribute("Emailxxx").toString();
	 String pw=request.getParameter("PWcheck");
	 int results = 0;
	 results = DB.updateStatus(pw,names);
	 
	if(results>=1){
    	out.print("<script language='javascript'>alert('密码修改成功！'); window.self.location='../index.jsp';	</script>");
	}else{
		out.print("<script language='javascript'>alert('密码修改失败，密码为原密码！'); window.self.location='../regist.jsp';</script>");
	}
%>
  </body>
  </head>
</html>