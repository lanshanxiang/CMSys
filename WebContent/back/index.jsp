<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<%
	if (null == request.getSession().getAttribute("users")) {
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}
%>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<LINK rel="Bookmark" href="/favicon.ico">
<LINK rel="Shortcut Icon" href="/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static1/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static1/h-ui/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/lib1/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/lib1/icheck/icheck.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static1/h-ui/skin/default/skin.css"
	id="skin" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static1/h-ui/css/style.css" />
<title>H-ui.admin v2.4</title>
<meta name="keywords"
	content="H-ui.admin v2.4,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description"
	content="H-ui.admin v2.4，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>
	<header class="navbar-wrapper">
		<div class="navbar navbar-fixed-top">
			<div class="container-fluid cl">
				<a class="logo navbar-logo f-l mr-10 hidden-xs"
					href="#">欢迎登录飞跃社区管理系统</a> <a
					class="logo navbar-logo-m f-l mr-10 visible-xs"
					href="#"></a> <span
					class="logo navbar-slogan f-l mr-10 hidden-xs">v2.4</span> <a
					aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs"
					href="javascript:;">&#xe667;</a>
				<nav class="nav navbar-nav">
					
				</nav>
				<nav id="Hui-userbar"
					class="nav navbar-nav navbar-userbar hidden-xs">
					<ul class="cl">
						<li>管理员</li>
						<li class="dropDown dropDown_hover"><a href="#"
							class="dropDown_A">${users.mName} <i class="Hui-iconfont">&#xe6d5;</i></a>
							<ul class="dropDown-menu menu radius box-shadow">
								<li><a href="${pageContext.request.contextPath}/back/login.jsp">切换账户</a></li>
								<li><a id="exit" href="#">退出</a></li>
							</ul></li>
						<li id="Hui-msg"><a href="#" title="消息"><span
								class="badge badge-danger">1</span><i class="Hui-iconfont"
								style="font-size: 18px">&#xe68a;</i></a></li>
						<li id="Hui-skin" class="dropDown right dropDown_hover"><a
							href="javascript:;" class="dropDown_A" title="换肤"><i
								class="Hui-iconfont" style="font-size: 18px">&#xe62a;</i></a>
							<ul class="dropDown-menu menu radius box-shadow">
								<li><a href="javascript:;" data-val="default"
									title="默认（黑色）">默认（黑色）</a></li>
								<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
								<li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
								<li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
								<li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
								<li><a href="javascript:;" data-val="orange" title="绿色">橙色</a></li>
							</ul></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<aside class="Hui-aside">
		<input runat="server" id="divScrollValue" type="hidden" value="" />
		<div class="menu_dropdown bk_2">
			<dl id="menu-article">
				<dt>
					<i class="Hui-iconfont">&#xe616;</i> <a
						_href="${pageContext.request.contextPath}/HomeServlet"
						data-title="控制台" href="javascript:void(0)">控制台</a>
				</dt>
			</dl>
			<dl id="menu-picture">
				<dt>
					<i class="Hui-iconfont">&#xe613;</i> 数据中心<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a _href="admin-list-village.jsp" data-title="小区列表"
							href="javascript:void(0)">小区列表</a></li>
						<li><a _href="admin-list-house-Building.jsp" data-title="楼房管理"
							href="javascript:void(0)">楼房管理</a></li>
						<li><a _href="admin-list-house-room.jsp" data-title="房屋管理"
							href="javascript:void(0)">房屋管理</a></li>
						<li><a _href="admin-list-check.jsp" data-title="住户管理"
							href="javascript:void(0)">住户管理</a></li>
						<li><a _href="parking-list.jsp" data-title="车位管理"
							href="javascript:void(0)">车位管理</a></li>
					</ul>
				</dd>
			</dl>
			<dl id="menu-product">
				<dt>
					<i class="Hui-iconfont">&#xe620;</i> 收费管理<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a _href="admin-list-water-electric-before.jsp"
							data-title="未缴账单" href="javascript:void(0)">未缴账单</a></li>
						<li><a _href="admin-list-water-electric-after.jsp"
							data-title="已缴账单" href="javascript:void(0)">已缴账单</a></li>
						<li><a _href="admin-list-paynotice.jsp" data-title="缴费通知"
							href="javascript:void(0)">缴费通知</a></li>
						<li><a _href="admin-list-cost.jsp" data-title="收费设置"
							href="javascript:void(0)">收费设置</a></li>
					</ul>
				</dd>
			</dl>
			<dl id="menu-comments">
				<dt>
					<i class="Hui-iconfont">&#xe622;</i> 投诉管理<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a _href="admin-list-complaint.jsp" data-title="投诉报表管理"
							href="javascript:void(0)">投诉报表管理</a></li>
					</ul>
				</dd>
			</dl>
			
			
			
			<dl id="menu-admin">
				<dt>
					<i class="Hui-iconfont">&#xe62d;</i> 物业服务<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a _href="admin-list-notice.jsp" data-title="小区公告"
							href="javascript:void(0)">小区公告</a></li>
							<li><a _href="admin-list-noticetype.jsp" data-title="小区公告"
							href="javascript:void(0)">公告设置</a></li>
						<li><a _href="admin-list-repair.jsp" data-title="报修管理"
							href="javascript:void(0)">报修管理</a></li>
						<li><a _href="admin-list-report.jsp" data-title="维修管理"
							href="javascript:void(0)">维修管理</a></li>

					</ul>
				</dd>
			</dl>
			<dl id="menu-member">
				<dt>
					<i class="Hui-iconfont">&#xe60d;</i> 社区商家
					<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a _href="business-add.jsp" data-title="商家入驻"
							href="javascript:;">商家入驻</a></li>
						<li><a _href="admin-list-business.jsp" data-title="商家列表"
							href="javascript:;">商家列表</a></li>
					</ul>
				</dd>
			</dl>			
			
			<dl id="menu-system">
				<dt>
					<i class="Hui-iconfont">&#xe62e;</i> 用户管理<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a _href="user-add.jsp" data-title="添加用户"
							href="javascript:void(0)">添加用户</a></li>
						<li><a _href="admin-list-user.jsp" data-title="用户列表"
							href="javascript:void(0)">用户列表</a></li>
						
					</ul>
				</dd>
			</dl>
			<dl id="menu-tongji">
				<dt>
					<i class="Hui-iconfont">&#xe61a;</i> 系统统计<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a _href="${pageContext.request.contextPath}/CountServlet?op=brtp" data-title="楼房统计折线图"
							href="javascript:void(0)">楼房统计折线图</a></li>
						<li><a _href="${pageContext.request.contextPath}/CountServlet?op=c" data-title="投诉统计"
							href="javascript:void(0)">投诉统计</a></li>
						<li><a _href="${pageContext.request.contextPath}/CountServlet?op=u" data-title="用户统计"
							href="javascript:void(0)">用户统计</a></li>
						<li><a _href="${pageContext.request.contextPath}/CountServlet?op=s" data-title="商家统计"
							href="javascript:void(0)">商家统计</a></li>
						<li><a _href="${pageContext.request.contextPath}/CountServlet?op=t" data-title="住户统计图"
							href="javascript:void(0)">住户统计图</a></li>
					</ul>
				</dd>
			</dl>
		</div>
	</aside>
	<div class="dislpayArrow hidden-xs">
		<a class="pngfix" href="javascript:void(0);"
			onClick="displaynavbar(this)"></a>
	</div>
	<section class="Hui-article-box">
		<div id="Hui-tabNav" class="Hui-tabNav hidden-xs">
			<div class="Hui-tabNav-wp">
				<ul id="min_title_list" class="acrossTab cl">
					<li class="active"><span title="我的桌面" data-href="${pageContext.request.contextPath}/HomeServlet">我的桌面</span><em></em></li>
				</ul>
			</div>
			<div class="Hui-tabNav-more btn-group">
				<a id="js-tabNav-prev" class="btn radius btn-default size-S"
					href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a><a
					id="js-tabNav-next" class="btn radius btn-default size-S"
					href="javascript:;"><i class="Hui-iconfont">&#xe6d7;</i></a>
			</div>
		</div>
		<div id="iframe_box" class="Hui-article">
			<div class="show_iframe">
				<div style="display: none" class="loading"></div>
				<iframe scrolling="yes" frameborder="0" src="${pageContext.request.contextPath}/HomeServlet"></iframe>
			</div>
		</div>
	</section>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/lib1/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/lib1/layer/2.1/layer.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static1/h-ui/js/H-ui.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static1/h-ui/js/H-ui.admin.js"></script>
	<script type="text/javascript">
		/*资讯-添加*/
		function article_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*图片-添加*/
		function picture_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*产品-添加*/
		function product_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*用户-添加*/
		function member_add(title, url, w, h) {
			layer_show(title, url, w, h);
		}
	</script>
	<script type="text/javascript">
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "//hm.baidu.com/hm.js?080836300300be57b7f34f4b3e97d911";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s)
		})();
		var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://"
				: " http://");
		document
				.write(unescape("%3Cscript src='"
						+ _bdhmProtocol
						+ "hm.baidu.com/h.js%3F080836300300be57b7f34f4b3e97d911' type='text/javascript'%3E%3C/script%3E"));
	</script>
	<script type="text/javascript">
	      $("#exit").click(function(){
	    	  location.href="${pageContext.request.contextPath}/ManagerServlet?op=exit";
	      });
	
	</script>
</body>
</html>