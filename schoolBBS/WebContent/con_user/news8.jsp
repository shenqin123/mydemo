<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>news</title>le>
<meta name="description" content="[!--pagedes--]" />
<meta name="keywords" content="[!--pagekey--]" />
<link href="../css/master.css" type="text/css" rel="stylesheet" />
<link href="../css/base.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../js/jquery.SuperSlide.2.1.1.js"></script>

</head>
<body>
<%!String userName;%>
<%
	userName = (String)session.getAttribute("username"); 
%>
<div class="head clearfix yh">
	<!--logo-->
    <div class="logo block clearfix">
    	<a href="/" class="fleft"><img src="../images/logo.png"></a>
        <div class="fright">
				<p class="tright">
					<%=userName %>&nbsp;欢迎您！&nbsp;&nbsp;<a href="exitAction">退出系统</a>
				</p>
				<br>
			</div>
    </div>
    </div>
    <!--nav-->
	<div class="nav clearfix">
    	<ul class="block">
        	<li><a href="../main.jsp">网站首页</a></li>
			<li><a href="/schoolBBS/UserInfoCourses" class="L">我的讲座</a></li>
			<li><a href="./apply.jsp" class="L">报名入口</a></li>
			</li>
				<li><a href="/schoolBBS/ShowCourseAction?id=6" class="L">所有讲座</a>
				</li>
			<li><a href="newsList.jsp" class="L">青大新闻</a></li>
			<li><a href="./picturesList.jsp" class="L">关于我们</a></li>
			<li><a href="" class="L">联系我们</a></li>
        </ul>
    </div>
    
    <div class="focusBox">
			<ul class="pic">
				<li><a href="#" target="_blank"><img
						src="../images/banner.jpg" /> </a></li>
				<li><a href="#" target="_blank"><img
						src="../images/banner1.jpg" /> </a></li>
				<li><a href="#" target="_blank"><img
						src="../images/banner2.jpg" /> </a></li>
				<li><a href="#" target="_blank"><img
						src="../images/banner3.jpg" /> </a></li>
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
			<div class="title clearfix">
				<font class="yh f16">校园新闻</font>
			</div>

			<div class="newsnr">
				<h1 class="bt">我校举行国医大师尼玛及艾措千教授聘任仪式</h1>
				<div class="date">
					<span>2017-07-07 05:06:00 </span><span>来源：<a
						href="http://www.qhu.edu.cn//" target="_blank">青海大学</a>
					</span><span>浏览数: 18</span>
				</div>
				<div class="nr">
					<p style="text-indent: 2em">7月6日下午，我校在科技馆1号会议室举行国医大师尼玛及艾措千教授聘任仪式，校领导俞红贤、陈刚、李丽荣、任延明、尚玛出席了仪式，相关职能处室、各院系负责人、青海金诃藏医药集团各版块代表及藏医学院师生代表参加了聘任仪式，仪式由党委副书记、常务副校长陈刚教授主持。陈刚教授介绍了尼玛大师和艾措千教授基本情况，对尼玛大师被评选为青海省首位“国医大师”、艾措千教授获得“全国创新争先奖状”表示祝贺。任延明副校长代表校党委宣读了聘任决定，俞红贤书记分别为尼玛大师和艾措千教授颁发青海大学特聘教授和藏医学院名誉院长证书。</p>
					<p style="text-indent: 2em">会上，尼玛大师和艾措千教授分别发言。尼玛大师充分肯定了青海大学在近几年的发展中取得的显著成就以及藏医学院在人才培养、科学研究和文化传承等方面所做出的努力，表达了对藏医传统人才培养模式和未来发展道路的期盼。艾措千教授回顾了藏医学院的发展，对学院今后的建设从四个方面提出了意见建议，希望藏医学院在藏医药“产、学、研、医、文化、养生保健、国际交流”七位一体的创新发展中做出贡献。
						党委书记俞红贤代表学校对尼玛大师和艾措千教授受聘表示祝贺，高度评价了尼玛大师和艾措千教授对藏医药事业发展所做的卓越贡献，表示将对藏医学院学科建设、人才培养等各项工作给予全力支持，希望青海大学与青海金诃藏医药集团加强合作，充分整合双方国家重点实验室资源，协同全省乃至全国藏医药行业，共同打造国际藏医药产、学、研、用一体的航空母舰，乘风破浪，创造辉煌。</p>
				</div>

				<div class="share clearfix">
					<div class="fleft">
						<a href="javascript:window.print()" class="print">打印本页</a>
					</div>
					<div class="fleft">
						<a href="javascript:window.close()" class="close">关闭窗口</a>
					</div>
				</div>

				<div class="down clearfix">
					<div class="fright">
						<div class="bdsharebuttonbox">
							<a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a
								href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a
								href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a
								href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a
								href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
						</div>
						<script>
							window._bd_share_config = {
								"common" : {
									"bdSnsKey" : {},
									"bdText" : "",
									"bdMini" : "2",
									"bdMiniList" : false,
									"bdPic" : "",
									"bdStyle" : "1",
									"bdSize" : "24"
								},
								"share" : {}
							};
							with (document)
								0[(getElementsByTagName('head')[0] || body)
										.appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='
										+ ~(-new Date() / 36e5)];
						</script>
						</script>
					</div>

					<div class="fleft">
						<p>
							上一篇：<a href="">新闻列表</a>
						</p>
						<p>
							下一篇：<a href="">新闻列表</a>
						</p>
					</div>
				</div>

			</div>
		</div>
<!-- fgfg -->
<script src="../js/all.js" type="text/javascript"></script>
</body>
</html>