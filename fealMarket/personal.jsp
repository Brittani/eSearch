<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="org.dataBase.DataBase" %>
<%	if(session.getAttribute("Emailxxx")==null){
	 	out.print("<script language='javascript'>alert('请登录'); window.self.location='login.jsp';</script>");
	}
	String names = session.getAttribute("Emailxxx").toString();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link media="screen" type="text/css" href="css/main.css" rel="stylesheet" />
<link media="screen" type="text/css" href="css/loginRegister.css" rel="stylesheet" />
<link media="screen" type="text/css" href="css/change.css" rel="stylesheet" />
<script type="text/javascript" language="javascript">
	function checkEmpty(form){
		if(document.form.PW.value==""){
			document.form.Email.value=""
			alert("请填写您的密码");
			return false;
		}else if(document.form.PWcheck.value==""){
			document.form.Email.value=""
			alert("请填写您的密码验证");
			return false;
		}else if(document.form.PWcheck.value!=document.form.PW.value){
			document.form.Email.value=""
			alert("密码不同，验证失败");
			return false;
		}else{
			return true;
		}
	}
</script>
<title>个人信息</title>
</head>

<body>
<div class="contain">
<%@ include file="hand.jsp" %><!-- 插入头文件 -->
<div class="pageBody">
	<div class="body_list">
    <p>会员中心</p>
    <div class="list_itemBlock">
 		<div class="list_words"><a href="checkProducts.jsp">添加商品</a></div>
        <div class="list_words"><a href="myOrder.jsp">我的订单</a></div>
        <div class="list_words"><a href="soldOrder.jsp">我的卖出</a></div>
        <div class="list_words"><a href="MyProducts.jsp">我的商品</a></div>
        <div class="list_words"><a href="personal.jsp">个人信息修改</a></div>
    </div>
    </div>
    <div class="body_infs">
    	<form name="form" method="post" 
        onsubmit="checkEmpty(form);"
        action="jspTool/personalTool.jsp"
        >
        
    	<div class="body_title"><img src="img/products/title_personal.jpg" /></div>
        <div class="body_item">
        	<div class="item_str"><span>新的密码：</span></div>
            <div><input name="PW" type="password" /></div>
            <div class="item_tip"><p>*请输入密码仅限6~12位。</p></div>
        </div>
        <div class="body_item">
        	<div class="item_str"><span>验证密码：</span></div>
            <div><input name="PWcheck" type="password" /></div>
            <div class="item_tip"><p>*再次输入密码，验证密码是否正确。</p></div>
        </div>
        <div class="item_sureBtn"><input name="submit" class="input_sureBT" type="submit" value="" /></div>
        </form>
    </div>
    <div class="body_molis"><img src="img/products/molis.jpg" /></div>
</div>

<%@ include file="footer.jsp" %><!-- 插入尾文件 -->
</div>
</body>
</html>