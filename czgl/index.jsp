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

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/style.css">
	
</head>
<body>
	<center>
	<form action="login"  method="post">
	 <table bgColor="#84caff">
	 <tr>
		 <td align="center" bgcolor="#46a3ff" colspan=2><font color=white>车票管理系统</font></td>
	 </tr>
	 <tr>
	<td><font color=white>账号</font></td>
	<td><input type="text" name="name" size=10 value="admin"/></td>
	</tr>
	<tr>
	<td><font color=white>密码</font></td>
	<td><input type="password" name="password" size=11 value="admin"></td>
	</tr>
	<tr>
	<td><td align="center" colspan="2" ><input type="submit"  value="登录">&nbsp;&nbsp; <input
				type="reset"  value="重置"></td></tr>
	</table>
	 </form>
    </center>
</body>
</html>
