<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link media="screen" type="text/css" href="css/main.css" rel="stylesheet" />
<link media="screen" type="text/css" href="css/index.css" rel="stylesheet" />
<link media="screen" type="text/css" href="css/fy.css" rel="stylesheet" />
<title>产品列表</title>
</head>

<body>
<div id="All" class="all">
<%@ include file="hand.jsp" %><!-- 插入头文件 -->


<div id="pageBody" class="pageBody">
    <div class="body_porducts">
    	<%@ include file="jspTool/creatProduct.jsp" %>
    </div>
</div><!-- end infor -->

<%@ include file="footer.jsp" %><!-- 插入尾文件 -->
</div>
</body>
</html>