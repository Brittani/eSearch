<%@ include file="config.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	 String sql = "select * from products ";
	 
	 Class.forName(driver);
	 Connection conn = DriverManager.getConnection(url,user,password);
	 Statement stmt = conn.createStatement();
	 ResultSet rs= stmt.executeQuery(sql);//Ö´ÐÐSQLÓï¾ä
	 
	//new for ·ÖÒ³
	 rs.last();
	 int currentPage = 0;
	 int pageSize = 10;
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
	
	sql = "select * from products limit "+n+","+pageSize;
	stmt = conn.createStatement();
	rs= stmt.executeQuery(sql);
	
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
        <div class="big_words" >
        <%
		
	if(currentPage!=1){
		%>
        	<p><a href="products.jsp?currentPage=<%= currentPage-1 %>" ><<<</a></p>
        <%
	}
	if(currentPage*pageSize<totalNum){
		%>
        	<span><a href="products.jsp?currentPage=<%= currentPage+1 %>" >>>></a></span>
        <%
	
	}
	%>
    	</div>