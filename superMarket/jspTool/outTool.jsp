<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%
session.removeAttribute("Emailxxx");
out.print("<script language='javascript'>alert('注销成功！'); window.self.location='../index.jsp';	</script>");
%>