<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'modifyOneStu.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body>
	<form action="updatePrice" method="post">
	<center>
		<table bgColor="#84caff">
			<tr>
				<td align="center" bgcolor=#46a3ff colspan=2><font color=white>价格修改</font></td>
			</tr>
			<tr>
				<td><font color=white>价格：</font></td>
				<td><input type="text" size=20 name="price"
					value=<%=request.getParameter("price")%> ></td>
			</tr>
			<tr>
				<td align="center" colspan="2">
				    <input type="hidden" name="p_id" value="<%=request.getParameter("p_id")%>"/>
				    <input type="submit" value="提交">&nbsp;&nbsp;
					<input type="reset" value="重置"></td>
			</tr>
		</table>
</center>
	</form>

</body>
</html>
