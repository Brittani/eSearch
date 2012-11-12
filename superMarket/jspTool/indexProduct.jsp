<%@ include file="config.jsp" %>
<%
	 String sql = "select * from products limit 10 ";
	 
	 Class.forName(driver);
	 Connection conn = DriverManager.getConnection(url,user,password);
	 Statement stmt = conn.createStatement();
	 ResultSet rs= stmt.executeQuery(sql);//Ö´ÐÐSQLÓï¾ä		
	
	while(rs.next()){
		%>
            <div class="body_sigleBorder">
        		<div class="body_img"><img class="sImg" src="<%= rs.getString("pageSmallImg") %>" /></div>
            	<a href="DetailsProduct.jsp?owners=<%= rs.getString("owner") %>&pro=<%= rs.getString("ProductID") %>"><p><%= rs.getString("ProductName") %></p></a>
            	<a href="DetailsProduct.jsp?owners=<%= rs.getString("owner") %>&pro=<%= rs.getString("ProductID") %>"><span><%= rs.getString("ProductPrice")%>.00</span></a>
       	 	</div>
        <%
	}
%>