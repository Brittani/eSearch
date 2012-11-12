<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.FileItem"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.Date"%>
<%@ include file="config.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>File upload</title>
</head>
<body>
<%
	String names=session.getAttribute("Emailxxx").toString();
	Date thisDate = new Date();
	String date = String.valueOf(thisDate.getYear()) + String.valueOf(thisDate.getMonth())+String.valueOf(thisDate.getDate()+String.valueOf(thisDate.getHours())+String.valueOf(thisDate.getMinutes()));
	String inDate=String.valueOf(thisDate.getYear()) + String.valueOf(thisDate.getMonth())+String.valueOf(thisDate.getDate());
	String paths = localPath+"Products\\"+names+"\\"+date;
	String systemPath="Products/"+names+"/"+date+"/";
	int stpe = 0;
	//some prarameter
	String file1=systemPath;
	String file2=systemPath;
	String file3=systemPath;
	String productsName=request.getParameter("productsName");
	String ProductPrice=request.getParameter("ProductPrice");
	String productsNum=request.getParameter("productsNum");
	String ProductBrand=request.getParameter("ProductBrand");
	
    File uploadPath = new File(paths);
    if (!uploadPath.exists()) {
       uploadPath.mkdirs();
    }
    
    File tempPathFile = new File(paths+"\\temp");
    if (!tempPathFile.exists()) {
       tempPathFile.mkdirs();
    }
    try {
       // Create a factory for disk-based file items
       DiskFileItemFactory factory = new DiskFileItemFactory();
 
       // Set factory constraints
       factory.setSizeThreshold(4096);
       factory.setRepository(tempPathFile);
 
       // Create a new file upload handler
       ServletFileUpload upload = new ServletFileUpload(factory);
 
       // Set overall request size constraint
       upload.setSizeMax(4194304); 

       List<FileItem> items = upload.parseRequest(request);
       Iterator<FileItem> i = items.iterator();
       while (i.hasNext()) {
           FileItem fi = (FileItem) i.next();
           String fileName = fi.getName();
		  
           if (fileName != null) {
		   	
		   	if(stpe == 0){
		   		file1 = file1 + fileName;
		   }else if(stpe == 1){
		   		file2 = file2 + fileName;
		   }else{
		   		file3 = file3 + fileName;
		   }
      			File fullFile = new File(fi.getName());
      			File savedFile = new File(uploadPath, fullFile.getName());
       			fi.write(savedFile);
				 stpe++;
           }
       }
	   
	   	sql = "UPDATE orderTable (ProductName,ProductNum,ProductPrice,ProductBrand,Data,Owner,pageMap,pageSmallImg,PageBigImg)"
		+"values('"+productsName+"','"+productsNum+"','"+ProductPrice+"','"+ProductBrand+"','"+inDate+"','"+names+"','"+file3+"','"+file2+"','"+file1+"')";
	   
	   Class.forName(driver);
	   Connection conn = DriverManager.getConnection(url,user,password);
	   Statement stmt = conn.createStatement();
	   ResultSet rs= stmt.executeQuery(sql);//执行SQL语句	
	   
       out.print("upload succeed "+paths);
    } catch (Exception e) {
       e.printStackTrace();
    }
%>
</body>
</html>