<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<div id="header" class="header">
	<div class="headerLay1">
    	<div class="logo" ><img src="img/LOGO.jpg"/></div>
        <div class="infor">
        	<p class="freePhone"><img src="img/icoPhone.jpg" />400-800-11016</p>
        	<p>欢迎您来到网上商城，这里的东西物美价廉，欢迎买卖。</p>
        </div>
    </div>
    
    <div class="headerLay2">
    	<div class="headerButton">
        	<div class="button_index"><a href="../index.jsp"></a></div>
			<div class="button_wssc"><a href="index.jsp"></a></div>
            <div class="button_product"><a href="products.jsp"></a></div>
            <div class="button_prosonal"><a href="myOrder.jsp"></a></div>
            <div class="button_endBar"></div>
       </div>
       <%
	   	if(session.getAttribute("Emailxxx")!=null)
  		{
		%>
        <!-- 嵌套语句 -->
        <div class="login">
       		<a href="login.jsp"></a>
      	</div>
        <div class="out">
       		<a href="jspTool/outTool.jsp"></a>
      	</div>
        <%
		}else{

		%>
        <!-- 嵌套语句 -->
        <div class="login">
       		<a href="login.jsp"></a>
      	</div>
      	<div class="register">
       		<a href="regist.jsp"></a>
      	</div>
        <%
		}
	   %>
    </div>
    <div class="headerLay3">
    	<div class="search" >
        <form method="post" action="searchProducts.jsp">
        <div><input name="search" class="inputs" type="text" /></div>
        <div><input class="sureButton" type="submit" value="" /></div>
        </form>
   	 	</div>
        <div class="other">
        <div><span>分类:</span></div>
        <div><a href="searchProducts.jsp?type=1">时尚包包</a></div>
        <div><a href="searchProducts.jsp?type=2">美丽衣裳</a></div>
        <div><a href="searchProducts.jsp?type=3">珠光宝气</a></div>
        <div><a href="searchProducts.jsp?type=4">书籍文具</a></div>
        <div><a href="searchProducts.jsp?type=5">护肤美容</a></div>
        <div><a href="searchProducts.jsp?type=6">时尚鞋子</a></div>
        </div>
    </div>
</div><!-- end header -->