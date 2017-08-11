<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="admin/images/style.css" rel="stylesheet" type="text/css" />
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
			<div class="pageButton"></div>
			<table style="margin-bottom: 40px;">
				<thead>
					<th width="10%">编号</th>
					<th width="10%">主题</th>
					<th width="20%">主讲人</th>
					<th width="10%">单位</th>
					<th width="10%">时间</th>
					<th width="20%">地点</th>
					<th width="10%">人数</th>
					<th width="10%">操作</th>
				</thead>
				<tbody>
					<c:forEach var="cour" items="${requestScope.courseList }">
						<tr>
							<td>${cour.getId() }</td>
							<td>${cour.getCourse_content() }</td>
							<td>${cour.getBaogaoren() }</td>
							<td>${cour.getDanwei() }</td>
							<td>${cour.getCourse_time() }</td>
							<td>${cour.getCourse_place() }</td>
							<td>${cour.getAnpairenshu() }</td>
							<td><a
								href="/schoolBBS/ShowOneCoursesAction?id=${cour.getId()}">修改</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
