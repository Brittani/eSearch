<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="config.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	if(session.getAttribute("Emailxxx")==null){
	 	out.print("<script language='javascript'>alert('ÇëµÇÂ¼'); window.self.location='../login.jsp';</script>");
	}else{
	 String names= session.getAttribute("Emailxxx").toString();
	 String sql = "select * from products where owner ='"+names+"'";
	 
	 Class.forName(driver);
	 Connection conn = DriverManager.getConnection(url,user,password);
	 Statement stmt = conn.createStatement();
	 ResultSet rs= stmt.executeQuery(sql);//Ö´ÐÐSQLÓï¾ä		
	
	while(rs.next()){
		%>
            <div class="body_sigleBorder">
        		<div class="body_img"><img src="<%= rs.getString("pageSmallImg") %>" /></div>
            	<a href="../updataProducts.jsp?owners=<%= rs.getString("owner") %>&pro=<%= rs.getString("ProductID") %>"><p><%= rs.getString("ProductName") %></p></a>
            	<a href="../updataProducts.jsp?owners=<%= rs.getString("owner") %>&pro=<%= rs.getString("ProductID") %>"><span><%= rs.getString("ProductPrice")%>.00</span></a>
       	 	</div>
        <%
	}
	}
%>