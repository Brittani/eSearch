<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%
	if(session.getAttribute("Emailxxx")==null){
	 	out.print("<script language='javascript'>alert('请登录'); window.self.location='../login.jsp';</script>");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link media="screen" type="text/css" href="css/main.css" rel="stylesheet" />
<link media="screen" type="text/css" href="css/products.css" rel="stylesheet" />
<script type="text/javascript" language="javascript">
	function checkEmpty(){
		if(document.form1.productBrand.value==""){
			alert("请填写完宝贝品牌");
			return false;
		}else if(document.form1.productsName.value==""){
			alert("请填写完宝贝名称");
			return false;
		}else if(document.form1.productPrice.value==""){
			alert("请填写完宝贝价格");
			return false;
		}else if(document.form1.productsNum.value==""){
			alert("请填写完宝贝数目");
			return false;
		}else if(document.form1.file1.value==""){
			alert("请上传宝贝展示图");
			return false;
		}else if(document.form1.file2.value==""){
			alert("请上传宝贝小图");
			return false;
		}else if(document.form1.file3.value==""){
			alert("请上传宝贝大图");
			return false;
		}else{
			return true;
		}
	}
</script>
<title>增加新宝贝</title>
</head>
<body>
<div class="contain">
<%@ include file="hand.jsp" %><!-- 插入头文件 -->
<div class="body_porducts">
	<form name="form1" method="post"
    enctype="multipart/form-data"
    action="jspTool/smartUpLoad.jsp"
    onsubmit="return checkEmpty()">
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
    <div class="body_information">
        <div class="information_detailMap" ><input type="file" name="file1" /><p>*仅支持jpg格式,尺寸420*420</p></div>
        <div class="information_detaiWords">
            <p class="words_title">宝贝名称<input type="text" name="productsName" /></p>
            <p class="words_dio">------------------------------------------</p>
            <p class="words_pros">宝贝价格<input type="text" name="productPrice" /> 元</p>
            <p class="words_someThing">缩略图片：<input type="file" name="file2" />*仅支持jpg格式,尺寸185*185</p>
            <p class="words_someThing">库存数目：<input type="text" name="productsNum" /></p>
            <p class="words_someThing">宝贝类型：<select name="productType" >
            <option value="1">时尚包包</option>
            <option value="2">美丽衣裳</option>
            <option value="3">珠光宝气</option>
            <option value="4">书籍文具</option>
            <option value="5">护肤美容</option>
            <option value="6">时尚鞋子</option>
			</select></p>
            <p class="words_someThing">宝贝品牌：<input type="text" name="productBrand" /></p>
         </div>
    </div>
    <div class="information_imgs">
    	<br />
    	<p>展示栏大图<input type="file" name="file3" />*仅支持jpg格式,尺寸宽度740</p>
        <br />
        <p>商品的描述</p>
        <br />
        <textarea class="textarea" name="dec" ></textarea>
        <br />
        <input type="submit" class="oksubmit" value="确认提交" />
        <br />
        <p>注意：上述的数据时必填的项目，必须填写，如果有一项漏写，系统将不予通过</p>
        <br />
    </div>
     </form>
</div>
<%@ include file="footer.jsp" %><!-- 插入尾文件 -->
</div>
</body>
</html>