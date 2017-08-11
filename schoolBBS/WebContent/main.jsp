<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="[!--pagedes--]" />
<meta name="keywords" content="[!--pagekey--]" />
<link href="css/master.css" type="text/css" rel="stylesheet" />
<link href="css/base.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="./js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="./js/jquery.SuperSlide.2.1.1.js"></script>
<title>讲座安排系统</title>
</head>
<body>

	<div class="head clearfix yh">
		<!--logo-->
		<div class="logo block clearfix">
			<img class="fleft" src="images/logo.png">
			<div class="fright">
				<p class="tright">
					${sessionScope.user.username}&nbsp;欢迎您！&nbsp;&nbsp;<a
						href="/schoolBBS/LogoutAction">退出系统</a>
				</p>
				<br>
			</div>
		</div>

		<!--nav-->
		<div class="nav clearfix">
			<ul class="block">
				<li><a href="main.jsp">网站首页</a>
				</li><!-- /schoolBBS/UserInfoCourses -->
				<li><a href="/schoolBBS/UserInfoCourses" class="L">我的讲座</a>
				</li>
				<li><a href="con_user/apply.jsp" class="L">报名入口</a>
				</li>
				</li>
				<li><a href="/schoolBBS/ShowCourseAction?id=6" class="L">所有讲座</a>
				</li>
				<li><a href="con_user/newsList.jsp" class="L">青大新闻</a>
				</li>
				<li><a href="con_user/picturesList.jsp" class="L">关于我们</a>
				</li>
			</ul>
		</div>
		<div class="focusBox">
			<ul class="pic">
				<li><a href="#" target="_blank"><img
						src="images/banner.jpg" /> </a>
				</li>
				<li><a href="#" target="_blank"><img
						src="images/banner1.jpg" /> </a>
				</li>
				<li><a href="#" target="_blank"><img
						src="images/banner2.jpg" /> </a>
				</li>
				<li><a href="#" target="_blank"><img
						src="images/banner3.jpg" /> </a>
				</li>
			</ul>
			<ul class="hd">
				<li></li>
				<li></li>
				<li></li>
				<li></li>
			</ul>
		</div>
	</div>
	<div class="main clearfix ofHidden block yh">
		<!--左侧-->
		<div class="sidebar fleft">
			<div class="title">友情链接</div>
			<ul class="menu">
				<li><a href="http://www.qhu.edu.cn/">青海大学</a>
				</li>
				<li><a href="http://xxgk.qhu.edu.cn//">信息公开</a>
				</li>
				<li><a href="http://eol.qhu.edu.cn//">教育在线</a>
				</li>
				<li><a href="http://jwc1.qhu.edu.cn/">成绩查询</a>
				</li>
				<li><a href="http://lib.qhu.edu.cn/">图书资源</a>
				</li>
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
			<div class="clearfix">
				<div class="company fleft">
					<div class="t1">
						<a href=""><img src="images/more.jpg"> </a><span>小学期讲座</span>
					</div>
					<div class="nr f13">
						<p>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7月10——23日为青海大学第十三个夏季小学期，2017年夏季小学期的主体为：
							落实全国和全省思政协会议精神，依托小学期智力聚集平台，助力学校教育教学综合改革教学综合改革，营造浓厚学校学术氛围，
							拓展学生学术视野，提高教师教学能力，着眼长远、应势而谋，凝练具有青海大学特色的夏季小学期制度。夏季小学期期间，学校邀请
							国内外高校专家、学者约100名来校开展...<!-- <a href="" class="c_red">[详细]</a> -->
						</p>
						<p>
							<img src="images/gs_t.jpg" width="395" height="105">
						</p>
					</div>
				</div>

				<!--新闻中心-->
				<div class="news fright">
					<div class="t1">
						<a href=""><img src="images/more.jpg"> </a><span>新闻中心</span>
					</div>
					<ul>
						<li><a href="./con_user/news2.jsp">我校学生创办公司成功挂牌上市新四板</a>
						</li>
						<li><a href="./con_user/news3.jsp">我校举行谭建荣院士聘任仪式</a>
						</li>
						<li><a href="./con_user/news4.jsp">西宁市委常委、副市长许国成一行来我校调研</a>
						</li>
						<li><a href="./con_user/news5.jsp">国务院参事任玉岭一行来校参观考察</a>
						</li>
						<li><a href="./con_user/news6.jsp">青海大学第十三个夏季小学期拉开帷幕</a>
						</li>
						<li><a href="./con_user/news7.jsp">启迪控股 盐湖集团 青海大学共商三方合作</a>
						</li>
						<li><a href="./con_user/news8.jsp">我校隆重举行2017届毕业典礼暨学位授予仪式</a>
						</li>
					</ul>
				</div>
			</div>

			<!--校园展示-->
			<div class="cp_show clearfix">
				<div class="title t1">
					<a href=""><img src="./images/more.jpg"> </a>校园风采
				</div>
				<div class="picScroll">
					<ul>
						<li><img src="./images/cp_cp.png" />
								<p>校园一角</p></li>
						<li><img src="images/cp_cp1.png" />
								<p>校园一角</p></li>
						<li><img src="images/cp_cp2.png" />
								<p>校园一角</p></li>
						<li><img src="images/cp_cp3.png" />
								<p>校园一角</p></li>
						<li><img src="images/cp_cp4.png" />
								<p>校园一角</p></li>
						<li><img src="images/cp_cp5.png" />
								<p>校园活动</p></li>
						<li><img src="images/cp_cp6.png" />
								<p>校园一角</p>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="foot tcenter yh f13"></div>
	<script src="./js/all.js" type="text/javascript"></script>
</body>
</html>