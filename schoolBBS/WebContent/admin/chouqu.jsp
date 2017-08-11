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
    <title>抽取名单</title>    
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
	margin-top: 30px;
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
			<table id="showCourse" border="1"  cellspacing="0" cellpadding="0" width="85%" align="center" style="margin-bottom: 40px;">
				<h1>全部讲座的信息</h1>
				<thead>
					<th class="td_course">编号</th>
					<th  class="td_course">主题</th>
					<th  class="td_course">主讲人</th>
					<th  class="td_course">单位</th>
					<th  class="td_course">时间</th>
					<th  class="td_course">地点</th>
					<th  class="td_course">人数</th>
					<th  class="td_course">状态</th>
					<th  class="td_course">发布</th>
				</thead>
				<tbody>
				<c:forEach var="c" items="${requestScope.courseList }" varStatus="course">
					<tr>
						<td class="td_course" width="5%">${c.id}</td>
						<td class="td_course"  width="20%">${c.course_content }</td>
						<td class="td_course"  width="10%">${ c.baogaoren}</td>
						<td class="td_course"  width="10%">${c.danwei }</td>
						<td class="td_course"  width="10%">${c.course_time }</td>
						<td class="td_course"  width="10%">${c.course_place }</td>
						<td class="td_course"  width="5%">${c.anpairenshu }</td>
						<td class="td_course"  width="10%">${c.course_state }</td>
						<td class="td_course"  width="10%">
						<a href="/schoolBBS/AnPaiAction?cid=${c.id}&anpairenshu=${c.anpairenshu}">抽取</a></td>
					</tr>
				</c:forEach>	
				</tbody>
			</table>
		</center>
  </body>
</html>
