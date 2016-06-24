<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'main_left.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <body>
   <a href="inputcar.jsp" target="main_right">录入班车信息</a><br>
   <a href="timeprice.jsp" target="main_right">录入时间价格</a><br>
    <a href="/czgl/showTimePrice.action" target="main_right">查看班车时间表</a><br>
     <a href="/czgl/showPrice.action" target="main_right">修改价格</a><br>

  </body>
</html>
