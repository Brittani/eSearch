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
			out.println("你选择的文件不允许上传或者文件过大，请返回检查！");
		}
		int ints = 0;
		
		//图片文件
		String file1=systemPath;
		String file2=systemPath;
		String file3=systemPath;
		
		String words = su.getRequest().getParameter("productsName")+"1";	
		String productsName = new String(words.getBytes(),"utf-8");
		productsName = productsName.substring(0,productsName.length()-1); 
		
		words = su.getRequest().getParameter("productPrice")+"1";
		String productPrice = new String(words.getBytes(),"utf-8");
		productPrice = productPrice.substring(0,productPrice.length()-1);
		
		words = su.getRequest().getParameter("productsNum")+"1";
		String productsNum = new String(words.getBytes(),"utf-8");
		productsNum = productsNum.substring(0,productsNum.length()-1);
		
		words = su.getRequest().getParameter("productBrand")+"1";
		String productBrand = new String(words.getBytes(),"utf-8");
		productBrand = productBrand.substring(0,productBrand.length()-1);
		
		words = su.getRequest().getParameter("productType")+"1";
		String productType = new String(words.getBytes(),"utf-8");
		productType = productType.substring(0,productType.length()-1);
		
		words = su.getRequest().getParameter("dec")+"1";
		String dec = new String(words.getBytes(),"utf-8");
		dec = dec.substring(0,dec.length()-1);
		
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
		DB.setProduct(productsName,productPrice,productsNum,productBrand,inDate,names,file3,file2,file1,productType,dec);
		out.print("<script language='javascript'>alert('添加成功！'); window.self.location='../checkProducts.jsp';</script>");
%>
</body>  
</html>