<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增加讲座信息</title>
<style>
.td2 {
	width: 300px;
}
.error{
	color:red;
	font-size:10px;
}
#t_login{
	padding: 10px;
}
</style>
<script type="text/javascript">
	window.onload = function(){
		var ousernumber = document.getElementById("usernumber");
		var ousername = document.getElementById("username");
		var ouserpassword = document.getElementById("userpassword");
		var ot_login = document.getElementById("t_login");
		var ot_submit = document.getElementById("submit");
		
		var oErr1 = document.getElementById("err1");
		var oErr2 = document.getElementById("err2");
		var oErr3 = document.getElementById("err3");
		
		ot_login.onmousemove = function(){
			if (ousernumber.value == '' || ousernumber.value.length!=10){
				oErr1.innerHTML='x 学号格式出错！长度应为10';
			}else if (ousername.value == ''){
				oErr1.innerHTML='';
				oErr2.innerHTML='x 姓名不能为空！';
			}else if (ouserpassword.value == ''){
				oErr1.innerHTML=oErr2.innerHTML='';
				oErr3.innerHTML='x 密码不能为空！';
			}else{
				oErr1.innerHTML=oErr2.innerHTML=oErr3.innerHTML='';
				ouserpassword.value =ousernumber.value;
				ot_submit.disabled=false;
			}
		};
			ouserpassword.onmousemove = function(){
			ouserpassword.value =ousernumber.value;
		};
	};
</script>
</head>
<body>
	<form action="/schoolBBS/AddUserAction" method="post" id="form1" name="form1" style="margin-top: 50px;">
		<center>
			<h2>添加用户</h2>
			<table border="0">
				<tr>
					<td align="right">学号：</td>
					<td><input type="text" id="usernumber"
						name="usernumber" class="td2">
					</td>
					<td id="err1" class="error"></td>
				</tr>
				<tr>
					<td align="right">姓名：</td>
					<td><input type="text" id="username" name="username" class="td2">
					</td>
					<td id="err2" class="error"></td>
				</tr>
				<tr>
					<td align="right">密码：</td>
					<td><input type="text" id="userpassword" name="userpassword" onfocus="getdata()"
						class="td2">
					</td>
					<td id="err3" class="error"></td>
				</tr>
				</tr>
				<tr align="center" >
					<td colspan="2" id="t_login"><input type="submit" id="submit" name="submit" value="添加" disabled="disabled">
					&nbsp;<input type="reset" id="reset" name="reset" value="重置" style="margin-left:30px;">
					</td>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>