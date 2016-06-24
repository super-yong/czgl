<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'inputstuinfo.jsp' starting page</title>

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
	<center>
		<form action="car" method="post">
			<table bgColor="#84caff">
				<tr>
					<td align="center" bgcolor="#46a3ff" colspan=2><font color=white>班车信息录入</font></td>
				</tr>
				<tr>
					<td><font color=white>班次：</font></td>
					<td><input type="text" size=20 name="car_id"></td>
				</tr>
				<tr>
					<td><font color=white>出发地：</font></td>
					<td><input type="text" size=20 name="from_sp"></td>
				</tr>
				<tr>
					<td><font color=white>目的地</font></td>
					<td><input type="text" size=20 name="to_sp"></td>
				</tr>
				<tr>
					<td><font color=white>座位数：</font></td>
					<td><input type="text" size=20 name="number" ></td>
				</tr>
				<tr ><td align="center" colspan="2" ><input type="submit"  value="提交">&nbsp;&nbsp; <input
				type="reset"  value="重置"></td></tr>				
			</table>
			
		</form>
	</center>
</body>
</html>
