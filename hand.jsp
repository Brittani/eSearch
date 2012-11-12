<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<div id="header" class="header">
	<div class="headerLay1">
    	<div class="logo" ><a href="index.jsp"><img src="img/index_title.jpg"/></a></div>
        <div class="infor">
        	<p class="freePhone"><img src="img/icoPhone.jpg" />400-800-11016</p>
        	<p>欢迎您来到大学生e网搜，这里的东西物美价廉，欢迎买卖。</p>
        </div>
    </div>
    
    <div class="headerLay2">
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
    </div>
</div><!-- end header -->