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
	 ResultSet rs= stmt.executeQuery(sql);//执行SQL语句
	 if(type!=null){
	 	searchs = type;
		resultstr = "type_table";
	 }else{
	 	searchs = searchTxt;
		resultstr = "ProductName";
	 }
	 
	 //new for 分页
	 rs.last();
	 int currentPage = 0;
	 int pageSize = 5;
	 int totalNum = rs.getRow();
	 Integer n = 0;
	 String pages = request.getParameter("currentPage");
	 if(pages==null){
	 	 currentPage = 1;
		 n=0;
	 }else{
		currentPage = Integer.parseInt(pages);
		n =(currentPage -1)*pageSize-1;
		if(n<0){
			n=0;
		}
	 }
	
	sql = "select * from products limit "+n+","+pageSize;
	stmt = conn.createStatement();
	rs= stmt.executeQuery(sql);
	
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
        <div class="lit_words" >
        <%
		
	if(currentPage!=1){
		%>
        	<p><a href="searchProducts.jsp?currentPage=<%= currentPage-1 %>" >上一页</a></p>
        <%
	}
	if(currentPage*5<totalNum){
		%>
        	<span><a href="searchProducts.jsp?currentPage=<%= currentPage+1 %>" >下一页</a></span>
        <%
	
	}
	
	
	%>
    	</div>