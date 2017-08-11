<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 实现页面的定时刷新 -->
<!-- <meta http-equiv="refresh" content="1"> -->
<style type="text/css">
body {
	background: url(images/91.jpg);
}

.sbmbutton {
	text-align: center;
	margin: 30px 0px;
}

table {
	margin-top: 70px;
}
</style>
<script type="text/javascript">
	function show() {
		var oTime = document.getElementById("time");
		var d = new Date();
		oTime.innerHTML = "<h3>当前时间为:&nbsp;" + d.getFullYear() + "年"
				+ (d.getMonth() + 1) + "月" + d.getUTCDate() + "日    "
				+ d.getHours() + "时" + d.getMinutes() + "分" + d.getSeconds()
				+ "秒</h3>";
	}
	setInterval("show()", 1);
</script>
</head>
<body>
	<center>
		<table>
			<thead>
				<th><h2>管理员界面</h2></th>
			</thead>
			<tbody>
				<tr>
					<td><h3>欢迎您使用讲座安排系统</h3></td>
				</tr>
				<tr>
					<td id="time"></td>
				</tr>
			</tbody>
		</table>
	</center>
</body>
</html>