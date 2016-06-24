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


<title>My JSP 'displaystuinfo.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="styles.css">


</head>

<body>
	
	
	<table>
		<tr>
			<td>班次</td>
			<td>出发地</td>
			<td>目的地</td>
			<td>出发时间</td>
			<td>预计到达时间</td>
			<td>剩余座位</td>
			<td>价格</td>
			<td>日期</td>
			<td>操作</td>
		</tr>
		<s:iterator value="list" id="list" status="status">
		<tr bgcolor="#F0F8FF">
			<td><s:property value="#list.car_id"/></td>
			<td><s:property value="#list.from_sp"/></td>
			<td><s:property value="#list.to_sp"/></td>
			<td><s:property value="#list.time_leave"/></td>
			<td><s:property value="#list.time_arrive"/></td>
			<td><s:property value="#list.rest"/></td>
			<td><s:property value="#list.price"/></td>
            <td><s:property value="#list.date"/></td>
			<td><a href="modifyprice.jsp?p_id=<s:property value="#list.p_id"/>&price=<s:property value="#list.price"/>">修改</a></td>
		</tr>
	    </s:iterator>

	</table>
</body>
</html>
