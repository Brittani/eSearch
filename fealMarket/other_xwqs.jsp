<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%
	if(session.getAttribute("Emailxxx")==null){
		out.print("<script language='javascript'>alert('请登录！'); window.self.location='../index.jsp';	</script>");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link media="screen" type="text/css" href="css/makefriends.css" rel="stylesheet" />
<title>header-footer</title>
</head>

<body bgcolor="#d5f6f6">
<div id="all" class="all">
<div class="logo_swzl"><img src="img/LOGO_XWQS.jpg" /></div>
<div class="bar_swzl"></div>
<div class="contain">
<%@ include file="jspTool/config.jsp" %>
<%
	 request.setCharacterEncoding("utf-8");
	 String sql = "select * from xwqs";
	 
	 Class.forName(driver);
	 Connection conn = DriverManager.getConnection(url,user,password);
	 Statement stmt = conn.createStatement();
	 ResultSet rs= stmt.executeQuery(sql);//执行SQL语句		
	
	while(rs.next()){
%>
	<div class="block">
    	<p class="title"><%= rs.getString("title_table") %></p>
        <p class="names"><%= rs.getString("name_table") %></p>
        <span class="texts"><%= rs.getString("information") %></span>
    </div>
<%
	}
%>
    
    
</div>
<div class="inputInfor">
	
	<form method="post" action="jspTool/makeFTool.jsp?names=xwqs">
    	<p>发布主题</p>
    	<input type="text" class="text_t" name="title" /><br/>
        <p>发布内容</p>
        <textarea  class="text_a" name="inf"></textarea><br/>
        <input type="submit" value="提交" />
    </form>
</div>
<div class="footer" ><p>© 2007-2011 FleaMarket All Rights Reserved. 杭州工大网络科技有限公司版权所有，禁止非法复制 经营许可证编号:浙B2-20100425</p></div>
</div>
</body>
</html>