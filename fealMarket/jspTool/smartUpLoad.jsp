<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="com.jspsmart.upload.*"%>
<%@ page import="java.io.File"%>
<%@ include file="config.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<jsp:useBean id="DB" class="org.dataBase.DataBase" scope="page" />
<%
		request.setCharacterEncoding("utf-8");
		SmartUpload su = new SmartUpload();
		su.initialize(pageContext);
		su.setAllowedFilesList("jpg");
		su.setMaxFileSize(1024*1024*2);
		su.setContentDisposition(null);
		
		//时间
		Date thisDate = new Date();
		String names=session.getAttribute("Emailxxx").toString();
		String date = String.valueOf(thisDate.getYear()+1900) + String.valueOf(thisDate.getMonth()+1)+String.valueOf(thisDate.getDate())+String.valueOf(thisDate.getHours())+String.valueOf(thisDate.getMinutes());
		String inDate= String.valueOf(thisDate.getYear()+1900)+"/" + String.valueOf(thisDate.getMonth()+1)+"/" +String.valueOf(thisDate.getDate())+"/" +String.valueOf(thisDate.getHours())+":"+String.valueOf(thisDate.getMinutes());
		
		//图片路径
		String paths = localPath+"Products\\"+names+"\\"+date+"\\";
		String systemPath="Products/"+names+"/"+date+"/";
		
		File uploadPath = new File(paths);
		if (!uploadPath.exists()) {
      		 uploadPath.mkdirs();
   		}
		

		

		
		int stpe = 0;
		try{
			su.upload();
		}catch (Exception e){
			out.print("<script language='javascript'>alert('你选择的文件不允许上传或者文件过大，请返回检查！'); window.self.location='../checkProducts.jsp';</script>");
		}
		int ints = 0;
		
		//图片文件
		String file1=systemPath;
		String file2=systemPath;
		String file3=systemPath;
		
		String productsName = su.getRequest().getParameter("productsName");
		
		String productPrice = su.getRequest().getParameter("productPrice");
		
		String productsNum = su.getRequest().getParameter("productsNum");
		
		String productBrand = su.getRequest().getParameter("productBrand");
		
		String productType = su.getRequest().getParameter("productType");
		
		String dec = su.getRequest().getParameter("dec");
		
		for(int i = 0; i < su.getFiles().getCount(); i++){
			com.jspsmart.upload.File file = su.getFiles().getFile(i);
			if(file.isMissing())continue;
			String filename = String.valueOf(ints)+"."+ file.getFileExt();
			ints++;
			//写入一个文件夹
			file.saveAs(paths+filename);
			
			if(stpe == 0){
		   		file1 = file1 + filename;
		    }else if(stpe == 1){
		   		file2 = file2 + filename;
		    }else{
		   		file3 = file3 + filename;
		    }
		    stpe++;
		}
		DB.setProduct(productsName,productsNum,productPrice,productBrand,inDate,names,file3,file2,file1,productType,dec);
		out.print("<script language='javascript'>alert('添加成功！'); window.self.location='../checkProducts.jsp';</script>");
%>
</body>  
</html>