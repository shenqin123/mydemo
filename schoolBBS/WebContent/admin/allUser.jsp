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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="images/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.sbmbutton {
	text-align: center;
	margin: 30px 0px;
}

.td_course {
	height: auto;
	text-align: center;
}
#showCourse{
	margin-top: 70px;
	background: #fff;
}
</style>
</head>
  
  <body background="images/login_bg1.jpg">
  <div id="contentWrap">
		<div class="pageTitle"></div>
		<div class="pageColumn">
			<div class="pageButton"></div>
			<center>
			<table id="showCourse"  border="1"  cellspacing="0" cellpadding="0" width="85%" align="center">
				<h1>全部用户信息</h1>
				<thead>
					<th class="td_course">编号</th>
					<th  class="td_course">学号</th>
					<th  class="td_course">姓名</th>
					<th  class="td_course">密码</th>
					<th  class="td_course">权限</th>
					<th  class="td_course">讲座次数</th>
				</thead>
				<tbody>
				<c:forEach var="u" items="${requestScope.userList }" varStatus="user">
					<tr>
						<td class="td_course" width="5%">${u.id}</td>
						<td class="td_course"  width="20%">${u.usernumber }</td>
						<td class="td_course"  width="10%">${ u.username}</td>
						<td class="td_course"  width="10%">${u.userpassword }</td>
						<td class="td_course"  width="10%">${u.user_root }</td>
						<td class="td_course"  width="10%">${u.course_count }</td>
					</tr>
				</c:forEach>	
				</tbody>
			</table>
		</center>
  </body>
</html>
