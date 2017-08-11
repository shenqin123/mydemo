<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="[!--pagedes--]" />
<meta name="keywords" content="[!--pagekey--]" />
<link href="/schoolBBS/css/master.css" type="text/css" rel="stylesheet" />
<link href="/schoolBBS/css/base.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="/schoolBBS/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript"
	src="/schoolBBS/js/jquery.SuperSlide.2.1.1.js"></script>
<title>讲座安排系统</title>
<style type="text/css">
#showTable {
	padding: 0px;
	margin: 5px;
}
</style>

</head>
<body>
	<div class="head clearfix yh">
		<!--logo-->
		<div class="logo block clearfix">
			<img src="/schoolBBS/images/logo.png" class="fleft">
			<div class="fright">
				<p class="tright">
				<div class="fright">
					<p class="tright">
					<p>
						${sessionScope.user.username}&nbsp;欢迎您！&nbsp;&nbsp;<a
							href="/schoolBBS/LogoutAction">退出系统</a>
					</p>
				</div>
			</div>
		</div>

		<!--nav-->
		<div class="nav clearfix">
			<ul class="block">
				<li><a href="/schoolBBS/main.jsp">网站首页</a>
				</li>
				<li><a href="/schoolBBS/UserInfoCourses" class="L">我的讲座</a>
				</li>
				<li><a href="/schoolBBS/con_user/apply.jsp" class="L">报名入口</a>
				</li>
				</li>
				<li><a href="/schoolBBS/ShowCourseAction?id=6" class="L">所有讲座</a>
				</li>
				<li><a href="/schoolBBS/con_user/newsList.jsp" class="L">青大新闻</a>
				</li>
				<li><a href="/schoolBBS/con_user/picturesList.jsp" class="L">关于我们</a>
				</li>
			</ul>
		</div>
		<div class="focusBox">
			<ul class="pic">
				<li><a href="#" target="_blank"><img
						src="/schoolBBS/images/banner.jpg" /> </a>
				</li>
				<li><a href="#" target="_blank"><img
						src="/schoolBBS/images/banner1.jpg" /> </a>
				</li>
				<li><a href="#" target="_blank"><img
						src="/schoolBBS/images/banner2.jpg" /> </a>
				</li>
				<li><a href="#" target="_blank"><img
						src="/schoolBBS/images/banner3.jpg" /> </a>
				</li>
			</ul>

		</div>

	</div>

	<div class="main clearfix ofHidden block yh">

		<!--左侧-->
		<div class="sidebar fleft">
			<div class="title">友情链接</div>
			<ul class="menu">
				<li><a href="http://www.qhu.edu.cn/">青海大学</a></li>
				<li><a href="http://xxgk.qhu.edu.cn//">信息公开</a></li>
				<li><a href="http://eol.qhu.edu.cn//">教育在线</a></li>
				<li><a href="http://jwc1.qhu.edu.cn/">成绩查询</a></li>
				<li><a href="http://lib.qhu.edu.cn/">图书资源</a></li>
			</ul>
			<div class="title mt10">联系我们 Contact</div>
			<div class="contact_nr">
				<p>
					<b class="f15">青海大学计算机系</b>
				</p>
				<p>电话：0971-5315609</p>
				<p>地址：青海省西宁市宁大路251号</p>
				<p>网址：http://cs.qhu.edu.cn</p>
			</div>

		</div>
		<!--右侧-->
		<div class="main_right fright">
			<div class="title clearfix">
				<font class="yh f16">讲座安排名单</font>
			</div>

			<div class="newsnr">
				<h1 class="bt"></h1>
				<div class="nr">
					<center>
						<h1>小学期讲座</h1>
						<table border="2" style="margin-bottom: 40px;">
							<thead>
								<th width="10%">编号</th>
								<th>主题</th>
								<th width="10%">主讲人</th>
								<th width="20%">单位</th>
								<th width="10%">时间</th>
								<th width="10%">地点</th>
								<th width="10%">人数</th>
							</thead>
							<tbody>
								<h3>
									<c:forEach var="cour" items="${requestScope.courseList }">
										<tr>
											<td align="center">${cour.getId() }</td>
											<td>${cour.getCourse_content() }</td>
											<td>${cour.getBaogaoren() }</td>
											<td>${cour.getDanwei() }</td>
											<td>${cour.getCourse_time() }</td>
											<td>${cour.getCourse_place() }</td>
											<td>${cour.getAnpairenshu() }</td>
										</tr>
									</c:forEach>
								</h3>
							</tbody>
						</table>
					</center>
				</div>
			</div>
			<script src="../js/all.js" type="text/javascript"></script>
		</div>
	</div>
</body>
</html>