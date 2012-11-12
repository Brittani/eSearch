<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.FileItem"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.File"%>
<%@ page import="java.util.Date"%>
<%@ include file="config.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
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
	String ProductPrice=request.getParameter("productPrice");
	String productsNum=request.getParameter("productsNum");
	String ProductBrand=request.getParameter("productBrand");
	
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
	   String sql = "insert into products (ProductName,ProductNum,ProductPrice,ProductBrand,Data,Owner,pageMap,pageSmallImg,PageBigImg)"
	   +"values('"+productsName+"','"+productsNum+"','"+ProductPrice+"','"+ProductBrand+"','"+inDate+"','"+names+"','"+file3+"','"+file2+"','"+file1+"')";
		
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url,user,password);
	Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	stmt.executeUpdate(sql);
	
	   out.print(productsName+" "+productsNum+" "+ProductPrice+" "+ProductBrand+" "+inDate+" "+names+" "+file3+" "+file2+" "+file1); 
    } catch (Exception e) {
       e.printStackTrace();
    }
	out.print("<script language='javascript'>alert('添加成功！'); window.self.location='../checkProducts.jsp';</script>");
%>
</body>
</html>