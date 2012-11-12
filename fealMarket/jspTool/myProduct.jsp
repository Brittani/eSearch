<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="config.jsp" %>
<%
	//request.setCharacterEncoding("utf8");
	if(session.getAttribute("Emailxxx")==null){
	 	out.print("<script language='javascript'>alert('ÇëµÇÂ¼'); window.self.location='../login.jsp';</script>");
	}else{
	 String names= session.getAttribute("Emailxxx").toString();
	 String sql = "select * from products where owner ='"+names+"'";
	 
	 Class.forName(driver);
	 Connection conn = DriverManager.getConnection(url,user,password);
	 Statement stmt = conn.createStatement();
	 ResultSet rs= stmt.executeQuery(sql);//Ö´ÐÐSQLÓï¾ä
	 
	  //new for ·ÖÒ³
	 rs.last();
	 int currentPage = 0;
	 int pageSize = 6;
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
	
	sql = "select * from products where owner = '"+names+"'" + " limit "+n+","+pageSize;
	stmt = conn.createStatement();
	rs= stmt.executeQuery(sql);
	
	while(rs.next()){
		%>
            <div class="body_sigleBorder">
        		<div class="body_img"><img class="sImg" src="<%= rs.getString("pageSmallImg") %>" /></div>
            	<a href="updataProducts.jsp?owners=<%= rs.getString("owner") %>&pro=<%= rs.getString("ProductID") %>"><p><%= rs.getString("ProductName") %></p></a>
            	<a href="updataProducts.jsp?owners=<%= rs.getString("owner") %>&pro=<%= rs.getString("ProductID") %>"><span><%= rs.getString("ProductPrice")%>.00</span></a>
       	 	</div>
        <%
	}
	%>
         	<div class="lit_words" >
        <%
		
	if(currentPage!=1){
		%>
        	<a href="MyProducts.jsp?currentPage=<%= currentPage-1 %>" ><p>>>></p></a>
        <%
	}
	if(currentPage*pageSize<totalNum){
		%>
        	<a href="MyProducts.jsp?currentPage=<%= currentPage+1 %>" ><span><<<</span></a>
        <%
	}
	
	}
	%>
    	</div>