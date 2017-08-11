<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改讲座信息</title>
<style>
.td2 {
	width: 300px;
}
</style>
</head>
<body>
	<form action="UpdateCoursesAction" method="post" id="form1" style="margin-top: 50px;">
		<center>
			<h2>修改讲座的相关信息</h2>
			<table border="0">
			<tr>
					<td align="right">讲座id：</td>
					<td><input type="text" id="cid" 
						name="cid" value="${  requestScope.course.id}"
						class="td2"  disabled="disabled">
					</td>
				</tr>
				<tr>
					<td align="right">讲座主题：</td>
					<td><input type="text" id="course_content"
						name="course_content" value="${  requestScope.course.course_content}"
						class="td2">
					</td>
				</tr>
				<tr>
					<td align="right">单位：</td>
					<td><input type="text" id="danwei" name="danwei"
						value="${requestScope.course.danwei }" class="td2">
					</td>
				</tr>
				<tr>
					<td align="right">主讲人：</td>
					<td><input type="text" id="baogaoren" name="baogaoren"
						value="${requestScope.course.baogaoren }" class="td2">
					</td>
				</tr>
				<tr>
					<td align="right">时间：</td>
					<td><input type="text" id="course_time" name="course_time"
						value="${requestScope.course.course_time }" class="td2">
					</td>
				</tr>
				<tr>
					<td align="right">地点：</td>
					<td><input type="text" id="course_place" name="course_place"
						value="${requestScope.course.course_place }" class="td2">
					</td>
				</tr>
				<tr>
					<td align="right">安排人数：</td>
					<td><input type="text" id="anpairenshu" name="anpairenshu"
						value="${requestScope.course.anpairenshu }" class="td2">
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