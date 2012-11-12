<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link media="screen" type="text/css" href="css/main.css" rel="stylesheet" />
<link media="screen" type="text/css" href="css/index.css" rel="stylesheet" />
<title>跳蚤市场</title>
</head>

<body>
<%@ include file="hand.jsp" %><!-- 插入头文件 -->

<div id="pageBody" class="pageBody">
	<div class="body_Ad" >
    	<div class="body_Ads" ><img src="img/index/AD.jpg" /></div>
        <div class="logos">
        	<img src="img/index/LOGO1.jpg" />
            <img src="img/index/LOGO2.jpg" />
            <img src="img/index/LOGO3.jpg" />
            <img src="img/index/LOGO4.jpg" />
            <img src="img/index/LOGO5.jpg" />
            <img src="img/index/LOGO6.jpg" />
        </div>
    </div>
    <div class="body_porducts">
    	<%@ include file="jspTool/indexProduct.jsp" %>
    </div>
</div><!-- end pageBody -->

<%@ include file="footer.jsp" %><!-- 插入尾文件 -->
</div>
</body>
</html>