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
								<a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
								   <img src="assets/images/eng-flg.jpg" alt="eng-flg"> ${user.userName} <i class="fa fa-angle-down" aria-hidden="true"></i>
								</a>
								<ul class="dropdown-menu">
									<li><a href="user-login.jsp">切换账号</a></li>
									<li id="exit"><a href="#">退出</a></li>
								</ul>
							</div>
						</li>
						<li>
							<span>欢迎来到飞跃社区服务中心</span>
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
						
						<li class="dropdown">
							<a href="#" data-toggle="dropdown" data-hover="dropdown"><i class="icon-basket-loaded icons" aria-hidden="true"></i></a><span class="subno">2</span><strong>我的车位</strong>
							<div class="dropdown-menu  cart-outer" id="park">
								
							</div>
						</li>
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
										<li class="dropdown">
										<a href="addReport.jsp"><img src="assets/images/menu-icon1.png" alt="menu-icon1" /> 我要报修 <i class="fa fa-angle-right" aria-hidden="true"></i></a>
									</li>
									<li class="dropdown">
										<a href="buyRoom.jsp"><img src="assets/images/menu-icon2.png" alt="menu-icon2" /> 我要买房 <i class="fa fa-angle-right" aria-hidden="true"></i></a>
									</li>
									<li>
										<a href="rentRoom.jsp"><img src="assets/images/menu-icon3.png" alt="menu-icon3" /> 我要租房 <sup class="bg-red">hot!</sup></a>
									</li>
									<li class="dropdown">
										<a href="buyPark.jsp"><img src="assets/images/menu-icon4.png" alt="menu-icon4" /> 申请车位 <i class="fa fa-angle-right" aria-hidden="true"></i></a>
										<div class="dropdown-menu dropdownhover-bottom mega-menu" role="menu">

								</div>
									</li>
									<li class="dropdown">
										<a href="addBusiness.jsp"><img src="assets/images/menu-icon5.png" alt="menu-icon2" /> 申请商家入驻 <i class="fa fa-angle-right" aria-hidden="true"></i></a>
									</li>
									<li>
										<a href="goCost.jsp"><img src="assets/images/menu-icon7.png" alt="menu-icon2" /> 我要缴费 <sup class="bg-blue">NEW</sup></a>
									</li>
									
									<li>
										<a href="addLost.jsp"><img src="assets/images/menu-icon11.png" alt="menu-icon2" />申请失物招领</a>
									</li>
								</ul></li>
								<li><a href="index.jsp">首页</a></li>
								<li><a href="queryRepair.jsp">住户维修记录</a></li>
								<li><a href="room.jsp">房屋</a></li>
								<li><a href="parking.jsp">车位</a></li>
								<li><a href="business.jsp">商家</a></li>
								<li><a href="village.jsp">小区</a></li>
								<li><a href="welfare.jsp">福利</a></li>
								<li><a href="active.jsp">社区活动</a></li>
								<li><a href="lost.jsp">失物招领</a></li>
								<li><a href="payment.jsp">缴费记录</a></li>
								<li><a href="notice.jsp">社区公告</a></li>
							</ul>
							<!-- /.navbar-collapse -->
						</div>
					</nav>
					<!-- /nav end -->
				</div>
			</div>
		</section>
		<section class="header-outer" style="margin-top: 30px;">
			<img alt="" src="img/我要缴费.png">
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
						<h1 style="color: dodgerblue;">账单查缴</h1>
							<hr />
							<ul class="nav nav-tabs">
								<li class="active">
									<a data-toggle="tab" href="#electric">电费缴纳</a>
								</li>
								<li>
									<a data-toggle="tab" href="#water">水费缴纳</a>
								</li>
								<li>
									<a data-toggle="tab" href="#other">其他费用缴纳</a>
								</li>
						</ul>
						<div class="tab-content">
						 <div id="electric" class="content__article tab-pane fade in active" style="margin-top: 20px">
							<h3>交电费!</h3>
							<hr>
							<form class="form-horizontal" style="margin-left: 100px;">
								<div class="form-group">
									<label for="payElectric" class="col-sm-2 control-label">请输入金额:</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="payElectric"
											name="payElectric" placeholder="请输入金额:">
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-2">
										<button style="width: 100px;" id="btnPayElectric"
											type="button" class="btn btn-success">充值</button>
									</div>
								</div>
							</form>
						</div>
						<div id="water" class="content__article tab-pane fade" style="margin-top: 20px">
						<h3>交水费!</h3>
                        <hr>
							<form class="form-horizontal" style="margin-left: 100px;">
								<div class="form-group">
									<label for="payWater" class="col-sm-2 control-label">请输入金额:</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="payWater"
											name="payWater" placeholder="请输入金额:">
									</div>
								</div>
								
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-2">
										<button style="width: 100px;" id="btnPayWater" type="button"
											class="btn btn-success">充值</button>
									</div>
								</div>
							</form>
						
					</div>
					<div id="other" class="content__article tab-pane fade" style="margin-top: 20px">
						<h3>交其他费用!</h3>
                        <hr>
							<form class="form-horizontal" style="margin-left: 100px;">
								<div class="form-group">
									<label for="payOther" class="col-sm-2 control-label">请输入金额:</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="payOther"
											name="payOther" placeholder="请输入金额:">
									</div>
								</div>
								
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-2">
										<button style="width: 100px;" id="btnPayOther" type="button"
											class="btn btn-success">充值</button>
									</div>
								</div>
							</form>
						
					</div>
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
	       $("#btnPayElectric")
			.click(
					function() {
						console.log(111);
						$.ajax({
									url : "${pageContext.request.contextPath}/FrontPayServlet?op=addPay",//url地址
									type : "post",
									data : {
										"payMoney" : $('#payElectric').val(),
										"costId" : 5,
										"tenementId" : ${user.tenementId}
									},
									//成功后执行的操作
									success : function(data) {
										//判断用户名密码是否正确，正确的话则跳到前台首页
										console.log(data);
										if (data == "false") {
											alert("充值失败");
										} else {
											layer.msg(
															'充值成功!',
															{
																icon : 1,
																time : 1000
															},function(){
																$('#payElectric').val("");
															});
										}
									}
								});
					});
   </script>
   
   <script>
	       $("#btnPayWater")
			.click(
					function() {
						console.log(111);
						$.ajax({
									url : "${pageContext.request.contextPath}/FrontPayServlet?op=addPay",//url地址
									type : "post",
									data : {
										"payMoney" : $('#payWater').val(),
										"costId" : 2,
										"tenementId" : ${user.tenementId}
									},
									//成功后执行的操作
									success : function(data) {
										//判断用户名密码是否正确，正确的话则跳到前台首页
										console.log(data);
										if (data == "false") {
											alert("充值失败");
										} else {
											layer.msg(
															'充值成功!',
															{
																icon : 1,
																time : 1000
															},function(){
																$('#payWater').val("");
															});
										}
									}
								});
					});
   </script>
   
   <script>
	       $("#btnPayOther")
			.click(
					function() {
						console.log(111);
						$.ajax({
									url : "${pageContext.request.contextPath}/FrontPayServlet?op=addPay",//url地址
									type : "post",
									data : {
										"payMoney" : $('#payOther').val(),
										"costId" : 1,
										"tenementId" : ${user.tenementId}
									},
									//成功后执行的操作
									success : function(data) {
										//判断用户名密码是否正确，正确的话则跳到前台首页
										console.log(data);
										if (data == "false") {
											alert("充值失败");
										} else {
											layer.msg(
															'充值成功!',
															{
																icon : 1,
																time : 1000
															},function(){
																$('#payOther').val("");
															});
										}
									}
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
