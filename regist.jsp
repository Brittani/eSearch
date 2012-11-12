<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="org.dataBase.DataBase" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link media="screen" type="text/css" href="css/main.css" rel="stylesheet" />
<link media="screen" type="text/css" href="css/loginRegister.css" rel="stylesheet" />
<script type="text/javascript" language="javascript">
	function checkEmpty(form){
		if(document.form.Email.value==""){
			document.form.Email.value=""
			alert("请填写您的邮件地址");
			return false;
		}else if(document.form.PW.value==""){
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
<title>regist</title>
</head>

<body>
<div class="contain">
<%@ include file="hand.jsp" %><!-- 插入头文件 -->
<div class="pageBody">
	<div class="body_img"><img src="img/products/register.jpg" /></div>
    <div class="body_block">
   		<jsp:useBean id="DB" class="org.dataBase.DataBase" scope="page" />
    	<form name="form" method="post" 
        onsubmit="checkEmpty(form)"
        action="jspTool/regesiterTool.jsp"
        >
        
    	<div class="body_title"><img src="img/products/title.jpg" /></div>
        <div class="body_item">
        	<div class="item_str"><span>您的Email地址：</span></div>
            <div><input name="Email" type="text" /></div>
            <div class="item_tip"><p>*用于找回密码，发送订单通知。</p></div>
        </div>
        <div class="body_item">
        	<div class="item_str"><span>设置密码：</span></div>
            <div><input name="PW" type="password" /></div>
            <div class="item_tip"><p>*请输入密码仅限6~12位。</p></div>
        </div>
        <div class="body_item">
        	<div class="item_str"><span>验证密码：</span></div>
            <div><input name="PWcheck" type="password" /></div>
            <div class="item_tip"><p>*再次输入密码，验证密码是否正确。</p></div>
        </div>
        <div class="item_sureBtn"><input name="submit" class="input_btn" type="submit" value="" /></div>
        </form>
    </div>
    <div class="body_molis"><img src="img/products/molis.jpg" /></div>
</div>

<%@ include file="footer.jsp" %><!-- 插入尾文件 -->
</div>
</body>
</html>