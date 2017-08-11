<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	padding: 20px;
}
</style>
<script type="text/javascript">
	window.onload = function(){
		var oCourse_content = document.getElementById("course_content");
		var oDanwei = document.getElementById("danwei");
		var oBaogaoren = document.getElementById("baogaoren");
		var oCourse_time = document.getElementById("course_time");
		var oCourse_place = document.getElementById("course_place");
		var oAnpairenshu = document.getElementById("anpairenshu");
		
		var ot_login = document.getElementById("t_login");
		var ot_submit = document.getElementById("submit");
		
		var oErr1 = document.getElementById("err1");
		var oErr2 = document.getElementById("err2");
		var oErr3 = document.getElementById("err3");
		var oErr4 = document.getElementById("err4");
		var oErr5 = document.getElementById("err5");
		var oErr6 = document.getElementById("err6");
		
		ot_login.onmousemove = function(){
			//主题1
			if (oCourse_content.value == ''){
				oErr1.innerHTML='x 讲座主题不能为空！';
			}else  if (oBaogaoren.value == ''){
				oErr3.innerHTML='x 报告人不能为空！';
			}else if (oCourse_time.value == ''){
				oErr4.innerHTML='x 讲座时间不能为空！';
			}else if (oCourse_place.value == ''){
				oErr5.innerHTML='x 讲座地点不能为空！';
			}else if (oAnpairenshu.value == '' || oAnpairenshu.value.match("[^0-9]+")){
				oErr6.innerHTML='x 填写出错！';
			}else{
				oErr1.innerHTML=oErr3.innerHTML=oErr4.innerHTML=oErr5.innerHTML=oErr6.innerHTML='';
				ot_submit.disabled=false;
			}
		/* oAnpairenshu.onfocus=function(){
				oErr6.innerHTML='';
		}; */
		};
		
		
		/* //主题1
		oCourse_content.onblur=function(){
			if (oCourse_content.value == ''){
				oErr1.innerHTML='x 讲座主题不能为空！';
			}
		};
		oCourse_content.onfocus=function(){
				oErr1.innerHTML='';
		};
		
		//报告人3
		oBaogaoren.onblur=function(){
			if (oBaogaoren.value == ''){
				oErr3.innerHTML='x 报告人不能为空！';
			}
		};
		oBaogaoren.onfocus=function(){
				oErr3.innerHTML='';
		};
		//讲座时间4
		oCourse_time.onblur=function(){
			if (oCourse_time.value == ''){
				oErr4.innerHTML='x 讲座时间不能为空！';
			}
		};
		oCourse_time.onfocus=function(){
				oErr4.innerHTML='';
		};
		//地点5
		oCourse_place.onblur=function(){
			if (oCourse_place.value == ''){
				oErr5.innerHTML='x 讲座地点不能为空！';
			}
		};
		oCourse_place.onfocus=function(){
				oErr5.innerHTML='';
		};
		//安排人数
		oAnpairenshu.onblur=function(){
			if (oAnpairenshu.value == '' || oAnpairenshu.value.match("[^0-9]+")){
				oErr6.innerHTML='x 填写出错！';
			}
		};
		oAnpairenshu.onfocus=function(){
				oErr6.innerHTML='';
		}; */
		
	};
</script>
</head>
<body>
	<form action="/schoolBBS/AddCourseAction" method="post" id="form1" style="margin-top: 50px;">
		<center>
			<h2>增加讲座</h2>
			<table border="0">
				<tr>
					<td align="right">讲座主题：</td>
					<td><input type="text" id="course_content"
						name="course_content" class="td2">
					</td>
					<td id="err1" class="error"></td>
				</tr>
				<tr>
					<td align="right">单位：</td>
					<td><input type="text" id="danwei" name="danwei" class="td2">
					</td>
					<td id="err2" class="error"></td>
				</tr>
				<tr>
					<td align="right">主讲人：</td>
					<td><input type="text" id="baogaoren" name="baogaoren"
						class="td2">
					</td>
					<td id="err3" class="error"></td>
				</tr>
				<tr>
					<td align="right">时间：</td>
					<td><input type="text" id="course_time" name="course_time"
						class="td2">
					</td>
					<td id="err4" class="error"></td>
				</tr>
				<tr>
					<td align="right">地点：</td>
					<td><input type="text" id="course_place" name="course_place"
						class="td2">
					</td>
					<td id="err5" class="error"></td>
				</tr>
				<tr>
					<td align="right">安排人数：</td>
					<td><input type="text" id="anpairenshu" name="anpairenshu"
						class="td2">
					</td>
					<td id="err6" class="error"></td>
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