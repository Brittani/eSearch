<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="config.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	// response.setCharacterEncoding("utf-8");
	 String searchTxt = request.getParameter("search");
	 String searchs = "";
	 String resultstr = "";
	 String type = request.getParameter("type");
	 String sql = "select * from products ";

	 
	 Class.forName(driver);
	 Connection conn = DriverManager.getConnection(url,user,password);
	 Statement stmt = conn.createStatement();
	 ResultSet rs= stmt.executeQuery(sql);//Ö´ÐÐSQLÓï¾ä
	 if(type!=null){
	 	searchs = type;
		resultstr = "type_table";
	 }else{
	 	searchs = searchTxt;
		resultstr = "ProductName";
	 }
	
	while(rs.next()){
		String needs = rs.getString(resultstr);
		int hasB =  needs.indexOf(searchs);
		if(hasB!=-1){
		%>
            <div class="body_sigleBorder">
        		<div class="body_img"><img src="<%= rs.getString("pageSmallImg") %>" /></div>
            	<a href="DetailsProduct.jsp?owners=<%= rs.getString("owner") %>&pro=<%= rs.getString("ProductID") %>"><p><%= rs.getString("ProductName") %></p></a>
            	<a href="DetailsProduct.jsp?owners=<%= rs.getString("owner") %>&pro=<%= rs.getString("ProductID") %>"><span><%= rs.getString("ProductPrice")%>.00</span></a>
       	 	</div>
        <%
		}
	}
%>