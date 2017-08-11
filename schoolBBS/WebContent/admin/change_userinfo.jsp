<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>修改用户信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>
<body>
	<form action="addcourse.jsp" method="post" id="form1" style="margin-top: 50px;">
		<center>
			<h2>修改用户信息</h2>
			<table border="0">
				<tr>
					<td align="right">学号：</td>
					<td><input type="text" id="usernumber"
						name="usernumber" value="${ requestScope.User.usernumber}"
						class="td2">
					</td>
				</tr>
				<tr>
					<td align="right">姓名：</td>
					<td><input type="text" id="username" name="username"
						value="${ requestScope.User.username }" class="td2">
					</td>
				</tr>
				<tr>
					<td align="right">密码：</td>
					<td><input type="text" id="userpassword" name="userpassword"
						value="${ requestScope.User.userpassword }" class="td2">
					</td>
				</tr>
				<tr>
					<td align="right">出席讲座次数：</td>
					<td><input type="text" id="course_count" name="course_count"
						value="${ requestScope.User.course_count }" class="td2">
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						id="submit" name="submit" value="修改" width="80px"></td>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>
