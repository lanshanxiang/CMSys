<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<!-- Latest Bootstrap min CSS -->
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<link rel="stylesheet" href="assets/css/bootstrap.min.css"
	type="text/css">
<!-- Dropdownhover CSS -->
<link rel="stylesheet" href="assets/css/bootstrap-dropdownhover.min.css"
	type="text/css">
<!-- latest fonts awesome -->
<link rel="stylesheet" href="assets/font/css/font-awesome.min.css"
	type="text/css">
<!-- simple line fonts awesome -->
<link rel="stylesheet"
	href="assets/simple-line-icon/css/simple-line-icons.css"
	type="text/css">
<!-- stroke-gap-icons -->
<link rel="stylesheet"
	href="assets/stroke-gap-icons/stroke-gap-icons.css" type="text/css">
<!-- Animate CSS -->
<link rel="stylesheet" href="assets/css/animate.min.css" type="text/css">
<!-- Style CSS -->
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<!-- Style CSS -->
<link rel="stylesheet"
	href="assets/css/jcarousel.connected-carousels.css" type="text/css">
<!--  baguetteBox -->
<link rel="stylesheet" href="assets/css/baguetteBox.css">
<!-- Owl Carousel Assets -->
<link href="assets/owl-carousel/owl.carousel.css" rel="stylesheet">
<link href="assets/owl-carousel/owl.theme.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/query.css" />
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->


<script src="layer.js"></script>
<script src="layui.js"></script>
<link rel="stylesheet" href="css/layui.css" media="all">
<style type="text/css">
.browser__low {
	height: 100%;
	overflow: hidden;
}

.browser__low--wrapper, .browser__low--inner {
	display: none;
}

.browser__low .browser__low--wrapper {
	position: absolute;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	z-index: 199999;
	background: #000;
	opacity: 0.5;
	filter: alpha(opacity = 50);
	display: block;
}

.browser__low .browser__low--inner {
	background: #fff;
	position: absolute;
	left: 50%;
	top: 50%;
	z-index: 19999999;
	width: 360px;
	height: 100px;
	margin-top: -90px;
	margin-left: -200px;
	padding: 40px 20px;
	display: block;
}

.browser__low .browser__low--inner p {
	font-size: 20px;
	padding-bottom: 40px;
}

.browser__low .browser__low--inner a {
	display: inline-block;
	color: #fff;
	background: #2ab78e;
	padding: 10px 6px;
}
</style>

</head>

<body>
	<!--  Preloader  -->
	<div id="preloader">
		<div id="loading"></div>
	</div>
	<header>
		<!--  top-header  -->
		<div class="top-header">
			<div class="container">

				<div class="col-md-6">
					<div class="top-header-left">
						<ul>
							<li>
								<div class="dropdown">
									<a href="#" class="btn btn-default dropdown-toggle"
										data-toggle="dropdown" data-hover="dropdown"> <img
										src="assets/images/eng-flg.jpg" alt="eng-flg"> 个人信息 <i
										class="fa fa-angle-down" aria-hidden="true"></i>
									</a>
									<ul class="dropdown-menu">
										<li><a href="#">切换账号</a></li>
										<li><a href="#">退出</a></li>
									</ul>
								</div>
							</li>
							<li>
								<div class="dropdown">
									<a href="#" class="btn btn-default dropdown-toggle"
										data-toggle="dropdown" data-hover="dropdown"> USD <i
										class="fa fa-angle-down" aria-hidden="true"></i>
									</a>
									<ul class="dropdown-menu">
										<li><a href="#">GBP</a></li>
										<li><a href="#">USD</a></li>
									</ul>
								</div>
							</li>
							<li><span>欢迎来到飞跃社区服务中心</span></li>
						</ul>
					</div>
				</div>
				<div class="col-md-6">
					<div class="top-header-right">
						<ul>
							<li><i class="icon-location-pin icons" aria-hidden="true"></i>
								社区地址</li>
							<li><i class="icon-note icons" aria-hidden="true"></i> 快速发布</li>
							<li>
								<div class="dropdown">
									<a href="#" class="btn btn-default dropdown-toggle"
										data-toggle="dropdown" data-hover="dropdown"> <i
										class="icon-settings icons" aria-hidden="true"></i> 设置
									</a>
									<ul class="dropdown-menu">
										<li><a href="#">我的信息</a></li>
										<li><a href="#">修改密码</a></li>
										<li><a href="#">修改地址</a></li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!--  /top-header  -->
		</div>
		<section class="top-md-menu">
			<div class="container">
				<div class="col-sm-3">
					<div class="logo">
						<h6>
							<img src="assets/images/logo.png" alt="logo" />
						</h6>
					</div>
				</div>
				<div class="col-sm-6">
					<!-- Search box Start -->
					<form>
						<div class="well carousel-search hidden-phone">
							<div class="btn-group">
								<a class="btn dropdown-toggle btn-select" data-toggle="dropdown"
									href="#">全部 <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">资讯</a></li>
									<li><a href="#">楼房</a></li>
									<li><a href="#">车位</a></li>
									<li class="divider"></li>
									<li><a href="#">其他</a></li>
								</ul>
							</div>
							<div class="search">
								<input type="text" placeholder="请输入关键字" />
							</div>
							<div class="btn-group">
								<button type="button" id="btnSearch" class="btn btn-primary">
									<i class="fa fa-search" aria-hidden="true"></i>
								</button>
							</div>
						</div>
					</form>
					<!-- Search box End -->
				</div>
				<div class="col-sm-3">
					<!-- cart-menu -->
					<div class="cart-menu">
						<ul>
							<li><a href="#"><i class="icon-heart icons"
									aria-hidden="true"></i></a><span class="subno">1</span><strong>您的爱心</strong></li>
							<li class="dropdown"><a href="#" data-toggle="dropdown"
								data-hover="dropdown"><i class="icon-basket-loaded icons"
									aria-hidden="true"></i></a><span class="subno">2</span><strong>您的车位</strong>
								<div class="dropdown-menu  cart-outer">
									<div class="cart-content">
										<div class="col-sm-4 col-md-4">
											<img src="assets/images/elec-img4.jpg" alt="13">
										</div>
										<div class="col-sm-8 col-md-8">
											<div class="pro-text">
												<a href="#">飞跃社区北方车位 </a>
												<div class="close">x</div>
												<strong>1 × $290.00</strong>
											</div>
										</div>
									</div>
									<div class="cart-content">
										<div class="col-sm-4 col-md-4">
											<img src="assets/images/elec-img3.jpg" alt="13">
										</div>
										<div class="col-sm-8 col-md-8">
											<div class="pro-text">
												<a href="#">飞跃社区东方车位 </a>
												<div class="close">x</div>
												<strong>1 × $290.00</strong>
											</div>
										</div>
									</div>
									<a href="shopping-cart.html" class="cart-btn">增加车位 </a> <a
										href="checkout.html" class="cart-btn">删除车位</a>
								</div></li>
						</ul>
					</div>
					<!-- cart-menu End -->
				</div>
				<div class="main-menu">
					<!--  nav  -->
					<nav class="navbar navbar-inverse navbar-default">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1" data-hover="dropdown"
							data-animations=" fadeInLeft fadeInUp fadeInRight">
							<ul class="nav navbar-nav">
								<li class="all-departments dropdown"><a href="index.html"
									class="dropdown-toggle" data-toggle="dropdown" role="button"
									aria-expanded="false"><span> 快速导航</span> <i
										class="fa fa-bars" aria-hidden="true"></i> </a>
									<ul class="dropdown-menu dropdownhover-bottom" role="menu">
										<li class="dropdown"><a href="index.html"><img
												src="assets/images/menu-icon1.png" alt="menu-icon1" /> 分类信息
												<i class="fa fa-angle-right" aria-hidden="true"></i></a> <!--<ul class="dropdown-menu right">
											<li><a href="grid.html">Electronic 01</a></li>
											<li><a href="list.html">Electronic 02</a></li>
										</ul>--></li>
										<li class="dropdown"><a href="#"><img
												src="assets/images/menu-icon2.png" alt="menu-icon2" /> 飞跃资讯
												<i class="fa fa-angle-right" aria-hidden="true"></i></a> <!--<ul class="dropdown-menu right">
											<li><a href="grid.html">Iphone 05</a></li>
											<li><a href="list.html">Iphone 06</a></li>
											<li><a href="grid.html">Iphone 07</a></li>
											<li><a href="list.html">Handfree</a></li>
											<li><a href="grid.html">Bettery</a></li>
										</ul>--></li>
										<li><a href="#"><img
												src="assets/images/menu-icon3.png" alt="menu-icon3" /> 招聘求职
												<sup class="bg-red">hot!</sup></a></li>
										<li class="dropdown"><a href="#"><img
												src="assets/images/menu-icon4.png" alt="menu-icon4" /> 分类信息
												<i class="fa fa-angle-right" aria-hidden="true"></i></a>
											<div class="dropdown-menu dropdownhover-bottom mega-menu"
												role="menu">

												<div class="col-sm-8 col-md-8">
													<!--<ul>
											<li><strong>Women’s Fashion</strong></li>
											<li><a href="#">Flip-Flops</a></li>
											<li><a href="#">Fashion Scarves</a></li>
											<li><a href="#">Wallets</a></li>
											<li><a href="#">Evening Handbags</a></li>
											<li><a href="#">Wrist Watches</a></li>
										</ul>
										<ul>
											<li><strong>Women’s Accessories</strong></li>
											<li><a href="#">Flip-Flops</a></li>
											<li><a href="#">Fashion Scarves</a></li>
											<li><a href="#">Wallets</a></li>
											<li><a href="#">Evening Handbags</a></li>
											<li><a href="#">Wrist Watches</a></li>
										</ul>
										<ul>
											<li><strong>Men’s Fashion</strong></li>
											<li><a href="#">Flip-Flops</a></li>
											<li><a href="#">Fashion Scarves</a></li>
											<li><a href="#">Wallets</a></li>
											<li><a href="#">Evening Handbags</a></li>
											<li><a href="#">Wrist Watches</a></li>
										</ul>
										<ul>
											<li><strong>Men’s Accessories</strong></li>
											<li><a href="#">Flip-Flops</a></li>
											<li><a href="#">Fashion Scarves</a></li>
											<li><a href="#">Wallets</a></li>
											<li><a href="#">Evening Handbags</a></li>
											<li><a href="#">Wrist Watches</a></li>
										</ul>-->
												</div>

											</div></li>
										<li class="dropdown"><a href="#"><img
												src="assets/images/menu-icon5.png" alt="menu-icon2" /> 飞跃房产
												<i class="fa fa-angle-right" aria-hidden="true"></i></a> <!--<ul class="dropdown-menu right">
											<li><a href="grid.html">Sport 05</a></li>
											<li><a href="list.html">Sport 06</a></li>
											<li><a href="list.html">Outdoors 02</a></li>
											<li><a href="grid.html">Outdoors 01</a></li>
										</ul>--></li>
										<li class="dropdown"><a href="#"><img
												src="assets/images/menu-icon6.png" alt="menu-icon2" /> 飞跃团购
												<i class="fa fa-angle-right" aria-hidden="true"></i></a> <!--<ul class="dropdown-menu right">
											<li><a href="grid.html">Jewelry 05</a></li>
											<li><a href="grid.html">Watches 07</a></li>
											<li><a href="list.html">Watches 02</a></li>
										</ul>--></li>
										<li><a href="#"><img
												src="assets/images/menu-icon7.png" alt="menu-icon2" /> 飞跃商家
												<sup class="bg-blue">NEW</sup></a></li>
										<li class="dropdown"><a href="#"><img
												src="assets/images/menu-icon8.png" alt="menu-icon2" /> 飞跃商城
												<i class="fa fa-angle-right" aria-hidden="true"></i></a> <!--<ul class="dropdown-menu right">
											<li><a href="grid.html">Toys 05</a></li>
											<li><a href="list.html">Hobbies 02</a></li>
											<li><a href="grid.html">Toys 01</a></li>
										</ul>--></li>
										<li class="dropdown"><a href="#"><img
												src="assets/images/menu-icon9.png" alt="menu-icon2" /> 装修建材
												<i class="fa fa-angle-right" aria-hidden="true"></i></a> <!--<ul class="dropdown-menu right">
											<li><a href="grid.html">Book 05</a></li>
											<li><a href="list.html">Book 06</a></li>
											<li><a href="list.html">Office 02</a></li>
											<li><a href="grid.html">Office 01</a></li>
										</ul>--></li>
										<li><a href="#"><img
												src="assets/images/menu-icon10.png" alt="menu-icon2" />
												飞跃搜-视频</a></li>
										<li><a href="#"><img
												src="assets/images/menu-icon11.png" alt="menu-icon2" />飞跃搜-图库</a>
										</li>
									</ul></li>
								<li><a href="index.html">首页</a></li>
								<li><a href="activity.html">活动</a></li>
								<li class="active"><a href="building.html">楼盘</a></li>
								<li><a href="complain.html">投诉</a></li>
								<li><a href="payment.html">缴费</a></li>
								<li><a href="repair.html">报修</a></li>
								<li><a href="vehicle.html">车位</a></li>
							</ul>
							<!-- /.navbar-collapse -->
						</div>
					</nav>
					<!-- /nav end -->
				</div>
			</div>
		</section>
		<section class="header-outer" style="margin-top: 30px;">
			<img alt="" src="img/22.png">
		</section>
	</header>
	<!-- newsletter -->
	<section class="grid-shop">
		<!-- .grid-shop -->
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<!--
                	作者：offline
                	时间：2018-10-09
                	描述：这里放活动
                -->
					<div class="content w1150" id="content"
						style="margin-bottom: 50px;">
						<div class="content__article">
						<h3>查询我的水费!</h3>
                        <hr>
							<form class="form-horizontal" style="margin-left: 100px;">
								<div class="form-group">
									<label for="years" class="col-sm-2 control-label">年份:</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="years"
											name="years" placeholder="请输入年份">
									</div>
								</div>
								<div class="form-group">
									<label for="months" class="col-sm-2 control-label">月份:</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="months"
											name="months" placeholder="请输入月份">
									</div>
								</div>
								
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-2">
										<button style="width: 100px;" id="queryMyWater" type="button"
											class="btn btn-success">提交</button>
									</div>
								</div>
							</form>
							<div class="content w1150" id="content" style="margin-bottom: 50px;">
						

							<div class="content__list" id="myWater">
								
							</div>
						
					</div>
						</div>
					</div>
				
				
				</div>

				<!-- right side -->
			</div>
			
		</div>
		
		<!-- /.grid-shop -->
	</section>
	<!-- newsletter -->
	<section class="newsletter">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<h2>请发布你对我们的意见！感谢您的回馈</h2>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="sing-up-input">
						<input name="singup" type="text" placeholder="输入你的emal地址">
						<input name="submit" type="button" value="提交" />
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- /newsletter -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<!-- f-weghit -->
					<div class="f-weghit">
						<img src="assets/images/logo.png" alt="logo" />
						<p>感谢您对我们的大力支持，我们会变得更好，服务会越来越多</p>
						<ul>
							<li><i class="icon-location-pin icons" aria-hidden="true"></i>
								<strong>地址:</strong> 飞跃广场中心：飞跃公司</li>
							<li><i class="icon-envelope-letter icons"></i> <strong>Email:</strong>
								1554646851@qq.com</li>
							<li><i class="icon-call-in icons"></i> <strong>手机号码:</strong>
								15860218985</li>
						</ul>
					</div>
					<!-- /f-weghit -->
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<!-- f-weghit2 -->
					<div class="f-weghit2">
						<h4>消息</h4>
						<ul>
							<li><a href="#">关与我们</a></li>
							<li><a href="#">联系我们</a></li>
							<li><a href="#">所有联系方式</a></li>
							<li><a href="#">隐私</a></li>
							<li><a href="#">环境</a></li>
						</ul>
					</div>
					<!-- /f-weghit2 -->

				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<!-- f-weghit2 -->
					<div class="f-weghit2">
						<h4>种类</h4>
						<ul>
							<li><a href="#">时尚</a></li>
							<li><a href="#">电子</a></li>
							<li><a href="#">设备</a></li>
							<li><a href="#">车辆</a></li>
							<li><a href="#">房屋</a></li>
						</ul>
					</div>
					<!-- /f-weghit2 -->
				</div>
				<!-- copayright -->
				<div class="copayright">
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-md-6">Copyright &copy;
							2017.Company name All rights reserved.</div>
						<div class="text-right col-xs-12 col-sm-6 col-md-6">
							<img src="assets/images/payment-img.jpg" alt="payment-img" />
						</div>
					</div>
				</div>
				<!-- /copayright -->

			</div>
		</div>
	</footer>
	<!-- sticky-socia -->
	<aside id="sticky-social">
		<ul>
			<li><a href="#" class="fa fa-facebook" target="_blank"><span><i
						class="fa fa-facebook" aria-hidden="true"></i> Facebook</span></a></li>
			<li><a href="#" class="fa fa-twitter" target="_blank"><span><i
						class="fa fa-twitter" aria-hidden="true"></i> Twitter</span></a></li>
			<li><a href="#" class="fa fa-rss" target="_blank"><span><i
						class="fa fa-rss" aria-hidden="true"></i> RSS</span></a></li>
			<li><a href="#" class="fa fa-pinterest-p" target="_blank"><span><i
						class="fa fa-pinterest-p" aria-hidden="true"></i> Pinterest</span></a></li>
			<li><a href="#" class="fa fa-share-alt" target="_blank"><span><i
						class="fa fa-share-alt" aria-hidden="true"></i> Flickr</span></a></li>
		</ul>
	</aside>
	<!-- /sticky-socia -->
	<!-- Get Our Email Letter popup -->

	<!-- /Get Our Email Letter popup -->
	<p id="back-top">
		<a href="#top"><i class="fa fa-chevron-up" aria-hidden="true"></i></a>
	</p>
	<script src="assets/js/jquery.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/bootstrap-dropdownhover.min.js"></script>
	<script src="assets/js/incrementing.js"></script>
	<!-- Plugin JavaScript -->
	<script src="assets/js/jquery.easing.min.js"></script>
	<script src="assets/js/wow.min.js"></script>
	<!-- owl carousel -->
	<script src="assets/owl-carousel/owl.carousel.js"></script>
	<!--  Custom Theme JavaScript  -->
	<script src="assets/js/custom.js"></script>
	<!--  jcarousel Theme JavaScript  -->
	<script type="text/javascript" src="assets/js/jquery.jcarousel.min.js"></script>
	<script type="text/javascript"
		src="assets/js/jcarousel.connected-carousels.js"></script>
	<script type="text/javascript" src="assets/js/jquery.elevatezoom.js"></script>
	<script>
		$('.zoom_01').elevateZoom({
			zoomType : "inner",
			cursor : "crosshair",
			zoomWindowFadeIn : 500,
			zoomWindowFadeOut : 750
		});
	</script>
	<script>
	
	 $("#queryMyWater")
		.click(
				function() { layui.use('flow', function(){
		  var $ = layui.jquery; //不用额外加载jQuery，flow模块本身是有依赖jQuery的，直接用即可。
		  var flow = layui.flow;
		  flow.load({
		    elem: '#myWater' //指定列表容器
		    ,done: function(page, next){ //到达临界点（默认滚动触发），触发下一页
		      var lis = [];
		      //以jQuery的Ajax请求为例，请求下一页数据（注意：page是从2开始返回）
		      $.ajax({
     			 url:"${pageContext.request.contextPath}/FrontPaymentServlet?op=myWater",
     			 type:"get",
     			 data:{
     				///"tenementId" : $('#tenementId').val(),
     				"years" : $('#years').val(),
     				"months" : $('#months').val(),
     				 "page":page
     			 },
     			 dataType:"text",
     			 success:function(res){
		        //假设你的列表返回在data集合中
		          var one = res.lastIndexOf("]");
		          var totalPage=res.substring(one+1);
     			  var result=res.substring(0,one+1);
     			  console.log(result);
     			 console.log(1111);
     			  var array = JSON.parse(result);
		          layui.each(array, function(index, payment){
		        	  var text = "";
		        	  text += "<div class=\"tianyi__list-a\" node-type=\"list\">";
		        	  text += "						<div class=\"ty-card ty-card-type1 clearfix\"";
		        	  text += "									node-type=\"ty-card-item\" __tianyi=\"\">";
		        	  text += "									<div class=\"ty-card-l\">";
		        	  text += "										<div class=\"ty-card-thumb-w\">";
		        	  text += "											<a";
		        	  text += "												node-type=\"sima-click-0\"><img";
		        	  text += "												src=\"//k.sinaimg.cn/n/sports/crawl/55/w550h305/20181018/KSAz-hmrasqr8698670.jpg/w150h100f1t0l0q100syf.jpg\"";
		        	  text += "												alt=\"\" class=\"ty-card-thumb\" width=\"150\" height=\"100\"";
		        	  text += "												onerror=\"if(this.src!='//n.sinaimg.cn/ent/c30320b4/20170511/img-replaced-w.png'){this.src='//n.sinaimg.cn/ent/c30320b4/20170511/img-replaced-w.png';this.className+=' ty-card-thumb-noani';}\"></a>";
		        	  text += "										</div>";
		        	  text += "									</div>";
		        	  text += "									<div class=\"ty-card-r\">";
		        	  text += "										<h3 class=\"ty-card-tt\">";
		        	  text += "											<a";
		        	  text += "												 node-type=\"sima-click-0\">住户:"+payment.tenementName+"</a>";
		        	  text += "										</h3>";
		        	  text += "										<p class=\"ty-card-tip1\">年份："+payment.years+"    月份:"+payment.months+"</p>";
		        	  text += "										<p class=\"ty-card-tip2 clearfix\">";
		        	  text += "											<span class=\"ty-card-tip2-i ty-card-time\">费用："+payment.payable+"</span><span";
		        	  text += "												class=\"ty-card-tip2-i ty-card-media\">应缴费："+payment.payable+"</span><span";
		        	  text += "												class=\"ty-card-tip2-i ty-card-tags\"><span";
		        	  text += "												class=\"ty-card-tag\" node-type=\"ty-card-tag\"><a";
		        	  text += "													 target=\"_blank\"></a></span><span";
		        	  text += "												class=\"ty-card-tag\" node-type=\"ty-card-tag\"><a";
		        	  text += "													 target=\"_blank\"></a></span><span";
		        	  text += "												class=\"ty-card-tag\" node-type=\"ty-card-tag\"><a";
		        	  text += "													 target=\"_blank\"></a></span></span><span";
		        	  text += "												class=\"ty-card-tip2-i ty-card-cmnt\" node-type=\"ty-card-cmnt\"><a";
		        	  text += "												";
		        	  text += "												><span class=\"ty-card-cmnt-icon\"></span><span";
		        	  text += "													class=\"ty-card-cmnt-total\"></span></a> </span>";
		        	  text += "										</p>";
		        	  text += "									</div>";
		        	  text += "									<span class=\"ty-card-close\" node-type=\"feed-close\"></span>";
		        	  text += "								</div>";

		            lis.push(text);
		        }); 
		        
		        //执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
		        //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
		        next(lis.join(''), page < totalPage);
     			 }
		      });
		    }
		  });
		});
				});		
</script>
	<script>
    //使用layui插件将选择日期变美观
	layui.use('laydate', function() {
		var laydate = layui.laydate;

		//常规用法
		laydate.render({
			elem : '#lostDate',
			type : 'datetime'
		});
	});
</script>
		
</body>

</html>
