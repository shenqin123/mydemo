<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理</title>
<link href="images/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
	background: #FFF
}
.sbmbutton {
	text-align: center;
	margin: 30px 0px;
}
</style>
</head>
<body>
<div id="contentWrap">
			<div class="pageTitle"></div>
		<div class="pageColumn">
			<table>
				<tr>
					<th class="td_course">id</th>
					<th  class="td_course">主题</th>
					<th  class="td_course">主讲人</th>
					<th  class="td_course">单位</th>
					<th  class="td_course">时间</th>
					<th  class="td_course">地点</th>
					<th  class="td_course">人数</th>
					<th  class="td_course">操作</th>
					<th  class="td_course">发布</th>
				</tr>
				<c:forEach var="message" items="${requestScope.courseList }">
					<tr>
						<td class="td_course" width="5%">${message.id}</td>
						<td class="td_course"  width="20%">${message.course_content }</td>
						<td class="td_course"  width="10%">${ message.baogaoren}</td>
						<td class="td_course"  width="10%">${message.danwei }</td>
						<td class="td_course"  width="10%">${message.course_time }</td>
						<td class="td_course"  width="10%">${message.course_place }</td>
						<td class="td_course"  width="5%">${message.anpairenshu }</td>
						<td class="td_course"  width="10%"><a href="AnPaiAction">抽取</a></td>
						<td class="td_course"  width="10%"><a href="#">发布</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>