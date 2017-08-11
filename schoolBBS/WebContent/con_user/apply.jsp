<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>自主报名入口</title>
<meta name="description" content="[!--pagedes--]" />
<meta name="keywords" content="[!--pagekey--]" />
<link href="../css/master.css" type="text/css" rel="stylesheet" />
<link href="../css/base.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/js/jquery.SuperSlide.2.1.1.js"></script>
</head>
<body>

<div class="head clearfix yh">
	<!--logo-->
    <div class="logo block clearfix">
    	<a href="/" class="fleft"><img src="../images/logo.png"></a>
			<div class="fright">
				<p class="tright">
					${sessionScope.user.username}&nbsp;欢迎您！&nbsp;&nbsp;<a
						href="/schoolBBS/LogoutAction">退出系统</a>
				</p>
				<br>
			</div>
			</div>
		</div>
    
    <!--nav-->
	<div class="nav clearfix">
    	<ul class="block">
				<li><a href="/schoolBBS/main.jsp">网站首页</a></li>
				<li><a href="/schoolBBS/UserInfoCourses" class="L">我的讲座</a></li>
				<li><a href="/schoolBBS/con_user/apply.jsp" class="L">报名入口</a></li>
				</li>
				<li><a href="/schoolBBS/ShowCourseAction?id=6" class="L">所有讲座</a>
				</li>
				<li><a href="/schoolBBS/con_user/newsList.jsp" class="L">青大新闻</a></li>
				<li><a href="/schoolBBS/con_user/picturesList.jsp" class="L">关于我们</a></li>
				<!-- <li><a href="" class="L">联系我们</a></li> -->
			</ul>
    </div>
    
    <div class="focusBox">
			<ul class="pic">
					<li><a href="#" target="_blank"><img src="../images/banner.jpg"/></a></li>
					<li><a href="#" target="_blank"><img src="../images/banner1.jpg"/></a></li>
					<li><a href="#" target="_blank"><img src="../images/banner2.jpg"/></a></li>
					<li><a href="#" target="_blank"><img src="../images/banner3.jpg"/></a></li>
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
        	<p><b class="f15">青海大学计算机系</b></p>
            <p>电话：0971-5315609</p>
            <p>地址：青海省西宁市宁大路251号</p>
            <p>网址：http://cs.qhu.edu.cn</p>
        </div>
        
    </div>
    <!--右侧-->
    <div class="main_right fright">
    	<div class="title clearfix"><font class="yh f16">自主报名</font>
    	
        <div class="newsnr">
      <h1 class="bt"></h1>
      
      <div class="nr">
        <p style="text-indent: 2em">目前还没有报名信息，请稍后访问！
        
        </p>
      </div>
<div class="foot tcenter yh f13" style="margin-top:280px; width:100%;">
</div>
<script src="../js/all.js" type="text/javascript"></script>
</body>
</html>