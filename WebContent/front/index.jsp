<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>飞跃社区服务中心</title>
<!-- Latest Bootstrap min CSS -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
<!-- Dropdownhover CSS -->
<link rel="stylesheet" href="assets/css/bootstrap-dropdownhover.min.css" type="text/css">
<!-- latest fonts awesome -->
<link rel="stylesheet" href="assets/font/css/font-awesome.min.css" type="text/css">
<!-- simple line fonts awesome -->
<link rel="stylesheet" href="assets/simple-line-icon/css/simple-line-icons.css" type="text/css">
<!-- stroke-gap-icons -->
<link rel="stylesheet" href="assets/stroke-gap-icons/stroke-gap-icons.css" type="text/css">
<!-- Animate CSS -->
<link rel="stylesheet" href="assets/css/animate.min.css" type="text/css">
<!-- Style CSS -->
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<!--  baguetteBox -->
<link rel="stylesheet" href="assets/css/baguetteBox.css">
<!-- Owl Carousel Assets -->
<link href="assets/owl-carousel/owl.carousel.css" rel="stylesheet">
<link href="assets/owl-carousel/owl.theme.css" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>

<body>
<!--  Preloader  -->
<div id="preloader">
	<div id="loading">
	</div>
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
								   <img src="assets/images/eng-flg.jpg" alt="eng-flg"> 个人信息 <i class="fa fa-angle-down" aria-hidden="true"></i>
								</a>
								<ul class="dropdown-menu">
									<li><a href="#">切换账号</a></li>
									<li><a href="#">退出</a></li>
								</ul>
							</div>
						</li>
						<li>
							<div class="dropdown">
								<a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
									USD <i class="fa fa-angle-down" aria-hidden="true"></i>
								</a>
								<ul class="dropdown-menu">
									<li><a href="#">GBP</a></li>
									<li><a href="#">USD</a></li>									
								</ul>
							</div>
						</li>
						<li>
							<span>欢迎来到飞跃社区服务中心</span>
						</li>
					</ul>
				</div>
			</div>
			<div class="col-md-6">
				<div class="top-header-right">
					<ul>
						<li><i class="icon-location-pin icons" aria-hidden="true"></i> 社区地址</li>
						<li><i class="icon-note icons" aria-hidden="true"></i> 快速发布</li>
						<li>
							<div class="dropdown">
								<a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
									<i class="icon-settings icons" aria-hidden="true"></i> 设置
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
					<h6><img src="assets/images/logo.png" alt="logo" /></h6>
				</div>
			</div>
			<div class="col-sm-6">
				<!-- Search box Start -->
				<form>
					<div class="well carousel-search hidden-phone">
						<div class="btn-group">
							<a class="btn dropdown-toggle btn-select" data-toggle="dropdown" href="#">全部 <span class="caret"></span></a>
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
							<button type="button" id="btnSearch" class="btn btn-primary"><i class="fa fa-search" aria-hidden="true"></i></button>
						</div>
					</div>
				</form>
				<!-- Search box End -->
			</div>
			<div class="col-sm-3">
				<!-- cart-menu -->
				<div class="cart-menu">
					<ul>
						<li><a href="#"><i class="icon-heart icons" aria-hidden="true"></i></a><span class="subno">1</span><strong>您的爱心</strong></li>
						<li class="dropdown">
							<a href="#" data-toggle="dropdown" data-hover="dropdown"><i class="icon-basket-loaded icons" aria-hidden="true"></i></a><span class="subno">2</span><strong>您的车位</strong>
							<div class="dropdown-menu  cart-outer">
								<div class="cart-content">
									<div class="col-sm-4 col-md-4"><img src="assets/images/elec-img4.jpg" alt="13"></div>
									<div class="col-sm-8 col-md-8">
										<div class="pro-text">
											<a href="#">飞跃社区北方车位 </a>
											<div class="close">x</div>
											<strong>1 × $290.00</strong>
										</div>
									</div>
								</div>
								<div class="cart-content">
									<div class="col-sm-4 col-md-4"><img src="assets/images/elec-img3.jpg" alt="13"></div>
									<div class="col-sm-8 col-md-8">
										<div class="pro-text">
											<a href="#">飞跃社区东方车位 </a>
											<div class="close">x</div>
											<strong>1 × $290.00</strong>
										</div>
									</div>
								</div>
								<a href="shopping-cart.html" class="cart-btn">增加车位 </a> <a href="checkout.html" class="cart-btn">删除车位</a>
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
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" data-hover="dropdown" data-animations=" fadeInLeft fadeInUp fadeInRight">
						<ul class="nav navbar-nav">
							<li class="all-departments dropdown">
								<a href="index.html" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span> 快速导航</span> <i class="fa fa-bars" aria-hidden="true"></i> </a>
								<ul class="dropdown-menu dropdownhover-bottom all-open" role="menu">
									<li class="dropdown">
										<a href="index.html"><img src="assets/images/menu-icon1.png" alt="menu-icon1" /> 分类信息 <i class="fa fa-angle-right" aria-hidden="true"></i></a>
										<!--<ul class="dropdown-menu right">
											<li><a href="grid.html">Electronic 01</a></li>
											<li><a href="list.html">Electronic 02</a></li>
										</ul>-->
									</li>
									<li class="dropdown">
										<a href="#"><img src="assets/images/menu-icon2.png" alt="menu-icon2" /> 飞跃资讯 <i class="fa fa-angle-right" aria-hidden="true"></i></a>
										<!--<ul class="dropdown-menu right">
											<li><a href="grid.html">Iphone 05</a></li>
											<li><a href="list.html">Iphone 06</a></li>
											<li><a href="grid.html">Iphone 07</a></li>
											<li><a href="list.html">Handfree</a></li>
											<li><a href="grid.html">Bettery</a></li>
										</ul>-->
									</li>
									<li>
										<a href="#"><img src="assets/images/menu-icon3.png" alt="menu-icon3" /> 招聘求职 <sup class="bg-red">hot!</sup></a>
									</li>
									<li class="dropdown">
										<a href="#"><img src="assets/images/menu-icon4.png" alt="menu-icon4" /> 分类信息  <i class="fa fa-angle-right" aria-hidden="true"></i></a>
										<div class="dropdown-menu dropdownhover-bottom mega-menu" role="menu">

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

								</div>
									</li>
									<li class="dropdown">
										<a href="#"><img src="assets/images/menu-icon5.png" alt="menu-icon2" /> 飞跃房产 <i class="fa fa-angle-right" aria-hidden="true"></i></a>
										<!--<ul class="dropdown-menu right">
											<li><a href="grid.html">Sport 05</a></li>
											<li><a href="list.html">Sport 06</a></li>
											<li><a href="list.html">Outdoors 02</a></li>
											<li><a href="grid.html">Outdoors 01</a></li>
										</ul>-->
									</li>
									<li class="dropdown">
										<a href="#"><img src="assets/images/menu-icon6.png" alt="menu-icon2" /> 飞跃团购 <i class="fa fa-angle-right" aria-hidden="true"></i></a>
										<!--<ul class="dropdown-menu right">
											<li><a href="grid.html">Jewelry 05</a></li>
											<li><a href="grid.html">Watches 07</a></li>
											<li><a href="list.html">Watches 02</a></li>
										</ul>-->
									</li>
									<li>
										<a href="#"><img src="assets/images/menu-icon7.png" alt="menu-icon2" /> 飞跃商家 <sup class="bg-blue">NEW</sup></a>
									</li>
									<li class="dropdown">
										<a href="#"><img src="assets/images/menu-icon8.png" alt="menu-icon2" /> 飞跃商城 <i class="fa fa-angle-right" aria-hidden="true"></i></a>
										<!--<ul class="dropdown-menu right">
											<li><a href="grid.html">Toys 05</a></li>
											<li><a href="list.html">Hobbies 02</a></li>
											<li><a href="grid.html">Toys 01</a></li>
										</ul>-->
									</li>
									<li class="dropdown">
										<a href="#"><img src="assets/images/menu-icon9.png" alt="menu-icon2" /> 装修建材 <i class="fa fa-angle-right" aria-hidden="true"></i></a>
										<!--<ul class="dropdown-menu right">
											<li><a href="grid.html">Book 05</a></li>
											<li><a href="list.html">Book 06</a></li>
											<li><a href="list.html">Office 02</a></li>
											<li><a href="grid.html">Office 01</a></li>
										</ul>-->
									</li>
									<li>
										<a href="#"><img src="assets/images/menu-icon10.png" alt="menu-icon2" /> 飞跃搜-视频</a>
									</li>
									<li>
										<a href="#"><img src="assets/images/menu-icon11.png" alt="menu-icon2" />飞跃搜-图库</a>
									</li>
								</ul>
							</li>
							<li class="active"><a href="index.html">首页</a></li>
							<li><a href="activity.html">活动</a></li>
							<li><a href="building.html">楼盘</a></li>
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
	<!-- header-outer -->
	<section class="header-outer">
		<!-- header-slider -->
			<div class="header-slider">					
					<div id="home-slider" class="carousel slide carousel-fade" data-ride="carousel">
						<!-- .home-slider -->
						<div class="carousel-inner">
							<div class="item active" style="background-image: url(assets/images/home-header1.jpg);  background-repeat: no-repeat; background-position: top;">
								<div class="container">		
									<div class="caption">
									<div class="caption-outer">
										<div class="col-xs-12 col-sm-12 col-md-4">												
										</div>
										<div class="col-xs-12 col-sm-6 col-md-6">
											<h3>2018-10-9</h3>
											<h2 class="animated wow slideInUp" data-wow-delay="0ms" data-wow-duration="1500ms">欢乐烧烤</h2>
											<h4>打个电话，送货上门 </h4>
											<p class="animated wow fadeInRight">随时随地，想烤就烤</p>
											<a data-scroll class="btn get-start animated fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms" href="#">查看更多</a>
										</div>
										<div class="col-xs-12 col-sm-6 col-md-2">												
											<div class="save-price animated wow slideInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
												<span class="save-text">来自</span>
												<span class="saveprice-no">个人</span>
											</div>
										</div>
									</div>
								</div>
								</div>
								
							</div>
							<div class="item" style="background-image: url(assets/images/home-header2.jpg);  background-repeat: no-repeat; background-position: top;">
								<div class="container">		
									<div class="caption">
									<div class="caption-outer">
										<div class="col-xs-12 col-sm-12 col-md-4">												
										</div>
										<div class="col-xs-12 col-sm-6 col-md-6">
											<h3>2018-10-9</h3>
											<h2 class="animated wow slideInUp" data-wow-delay="0ms" data-wow-duration="1500ms">免费停车位来袭！！！</h2>
											<h4>打个电话，免费预定</h4>
											<p class="animated wow fadeInRight">随时随地，想停就停！</p>
											<a data-scroll class="btn get-start animated fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms" href="#">查看更多</a>
										</div>
										<div class="col-xs-12 col-sm-6 col-md-2">												
											<div class="save-price animated wow slideInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
												<span class="save-text">来自</span>
												<span class="saveprice-no"><sup>飞跃社区</sup></span>
											</div>
										</div>
									</div>
								</div>
								</div>
							</div>
							<div class="item" style="background-image: url(assets/images/home-header3.jpg);  background-repeat: no-repeat; background-position: top;">
								<div class="container">		
									<div class="caption">
									<div class="caption-outer">
										<div class="col-xs-12 col-sm-12 col-md-4">												
										</div>
										<div class="col-xs-12 col-sm-6 col-md-6">
											<h3>2018-11-9</h3>
											<h2 class="animated wow slideInUp" data-wow-delay="0ms" data-wow-duration="1500ms">最强健身房来袭</h2>
											<h4>最全的健身房，免费一个月，快来体验！！ </h4>
											<p class="animated wow fadeInRight">身体成就你的精神</p>
											<a data-scroll class="btn get-start animated fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms" href="#">BUY NOW</a>
										</div>
										<div class="col-xs-12 col-sm-6 col-md-2">												
											<div class="save-price animated wow slideInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
												<span class="save-text">来自</span>
												<span class="saveprice-no"><sup>飞跃社区南门</sup></span>
											</div>
										</div>
									</div>
								</div>
								</div>
							</div>
						</div>
						<!-- indicators -->
						<ol class="carousel-indicators">
							<li data-target="#home-slider" data-slide-to="0" class="active"></li>
							<li data-target="#home-slider" data-slide-to="1"></li>
							<li data-target="#home-slider" data-slide-to="2"></li>
						</ol>
						<!-- /indicators -->
						<!-- /.home-slider -->
					</div>					
			</div>
			<!-- /header-slider end -->			
	</section>
	<!-- /header-outer -->
</header>
<!-- banner -->
<section class="banner">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<!-- banner-img -->
				<a href="#" class="banner-img">
					<!-- banner-text -->
					<div class="banner-text">
						<h3>飞跃商城</h3>
						<h2>电脑</h2>
						<span class="price">价格: $720</span>
					</div>
					<!-- /banner-text -->
				</a>
				<!-- /banner-img -->
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<!-- banner-img -->
				<a href="#" class="banner-img banner-img2">
					<!-- banner-text -->
					<div class="banner-text">
						<h3>飞跃商城</h3>
						<h2>手表</h2>
						<span class="price">价格: $220</span>
					</div>
					<!-- /banner-text -->
				</a>
				<!-- /banner-img -->
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<!-- banner-img -->
				<a href="#" class="banner-img banner-img3">
					<!-- banner-text -->
					<div class="banner-text">
						<h3>飞跃商城</h3>
						<h2>耳机</h2>
						<span class="price">价格: $150</span>
					</div>
					<!-- /banner-text -->
				</a>
				<!-- /banner-img -->
			</div>
		</div>
	</div>
</section>
<!-- /banner -->
<!-- deal-outer -->
<section class="deal-section">
	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div class="deal-week">
					<div class="title">
						<h2>失物招领</h2>
					</div>
					<div class="owl-demo-outer">
						<!-- #owl-demo -->
						<div id="owl-demo" class="deals-wk">
							<div class="item">
								<div class="col-md-12">
									<!-- .pro-text -->
									<div class="pro-text text-center">
										<!-- .pro-img -->
										<div class="pro-img">
											<img src="assets/images/wk-deal-img.jpg" alt="2" />
										</div>
										<!-- /.pro-img -->
										<div class="text-text">
											<span>耳机一只</span>
											<h4> 在飞跃小区飞跃路23号飞跃花园中捡到 </h4>
											<p>请失主尽快到飞跃小区服务中心领取，领取时请提供您的凭证！！</p>
											<p class="wk-price">价值 <span>$290.00</span> </p>
											<p class="availalbe">捡到者: <span>小三</span></p>
										</div>
										<!-- clockdiv -->
										<div id="clockdiv">
											<h4>赶快来收回你的物品！！</h4>
											<div>
												<span class="days">14</span>
												<div class="smalltext">Days</div>
											</div>
											<div>
												<span class="hours">23</span>
												<div class="smalltext">Hours</div>
											</div>
											<div>
												<span class="minutes">59</span>
												<div class="smalltext">Minutes</div>
											</div>
											<div>
												<span class="seconds">47</span>
												<div class="smalltext">Seconds</div>
											</div>
										</div>
										<!-- /clockdiv -->
									</div>
									<!-- /.pro-text -->
								</div>
							</div>
							<div class="item">
								<div class="col-md-12">
									<!-- .pro-text -->
									<div class="pro-text text-center">
										<!-- .pro-img -->
										<div class="pro-img">
											<img src="assets/images/wk-deal-img.jpg" alt="2" />
										</div>
										<!-- /.pro-img -->
										<div class="text-text">
											<a href="#" class="add-btn">查看更多</a>
										</div>
									</div>
									<!-- /.pro-text -->
								</div>
							</div>
							<div class="item">
								<div class="col-md-12">
									<!-- .pro-text -->
									<div class="pro-text text-center">
										<!-- .pro-img -->
										<div class="pro-img">
											<img src="assets/images/wk-deal-img.jpg" alt="2" />
										</div>
										<!-- /.pro-img -->
										<div class="text-text">
											<a href="#" class="add-btn">查看更多</a>
										</div>
									</div>
									<!-- /.pro-text -->
								</div>
							</div>
							<div class="item">
								<div class="col-md-12">
									<!-- .pro-text -->
									<div class="pro-text text-center">
										<!-- .pro-img -->
										<div class="pro-img">
											<img src="assets/images/wk-deal-img.jpg" alt="2" />
										</div>
										<!-- /.pro-img -->
										<div class="text-text">
											<a href="#" class="add-btn">查看更多</a>
										</div>
									</div>
									<!-- /.pro-text -->
								</div>
							</div>
							<!-- /#owl-demo -->
						</div>
					</div>

				</div>
			</div>


			<div class="col-sm-8">
				<!-- new-arrivals -->
				<div class="new-arrivals">
					<ul class="nav nav-tabs">
						<li class="active"><a data-toggle="tab" href="#home">社区图说资讯</a></li>
						<li><a data-toggle="tab" href="#menu1">社区热门小吃</a></li>
						<li><a data-toggle="tab" href="#menu2">社区活动</a></li>
					</ul>

					<div class="tab-content">
						<div id="home" class="tab-pane fade in active">							
							<div class="owl-demo-outer">
								<!-- #owl-demo -->
								<div id="owl-demo8" class="deals-wk2">
									<div class="item">
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/20131262143085ke2v3_120x120.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/201410915569130ict1v_120x120.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/201411405294338bf69_120x120.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/2014114111753128y4ibk_120x120.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/2014162028141254iy09_200x0_145x120.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/20141702798875v0c2_200x0_145x120.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>

									</div>
									<div class="item">
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/2014411212029225tyi6z_120x60.png" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/201441716134292158j6d_120x60.png" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/20146150541278j5e0z_160x160.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/2014121810222898791j58_120x120.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/ghm-img4.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/201411405294338bf69_120x120.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>

									</div>


									<!-- /#owl-demo -->
								</div>
							</div>
						</div>
						<div id="menu1" class="tab-pane fade">							
							<div class="owl-demo-outer">
								<!-- #owl-demo -->
								<div id="owl-demo7" class="deals-wk2">
									<div class="item">
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/2014162028141254iy09_200x0_145x120.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/20141702798875v0c2_200x0_145x120.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/201411405294338bf69_120x120.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/2014411212029225tyi6z_120x60.png" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/201410915569130ict1v_120x120.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/20131262143085ke2v3_120x120.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>

									</div>
									<div class="item">
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/20144132131462349djb4_120x60.png" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/201477183520953itka9_120x120.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/20151782242610fd252_120x120.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/201489115537765u96au_120x120.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/20151024221332149ek6uf_120x90.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/20153151315513959fcvu_120x90.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>

									</div>


									<!-- /#owl-demo -->
								</div>
							</div>
						</div>
						<div id="menu2" class="tab-pane fade">								
							<div class="owl-demo-outer">
								<!-- #owl-demo -->
								<div id="owl-demo6" class="deals-wk2">
									<div class="item">
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/20153151317315713da3j_120x90.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/20148182636937b4dtj_120x120.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/201481815053169vc7hf_120x120.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/20148231430547986g5b2_120x120.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/2014162028141254iy09_200x0_145x120.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/201411405294338bf69_120x120.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>

									</div>
									<div class="item">
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/2014411212029225tyi6z_120x60.png" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/20148822359593azk18_120x120.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/20146150541278j5e0z_160x160.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/2014813910459064g54c_120x120.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/20141901017125hedaz_200x0_145x120.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="img/2014821195247981tvck_120x120.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<a href="#" class="add-btn">查看更多</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>

									</div>


									<!-- /#owl-demo -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /new-arrivals -->

			</div>
		</div>
	</div>
</section>
<!-- /deal-outer -->
<!-- all-product -->
<section class="all-product">
	<div class="container">
		<div class="row">
			<!-- title -->
			<div class="title">
				<h2>
					社区生活服务					
				</h2>
				<ul class="nav nav-tabs etabs">
						<li class="active"><a data-toggle="tab" href="#phones">福利</a></li>
						<!--<li><a data-toggle="tab" href="#laptop">招聘</a></li>
						<li><a data-toggle="tab" href="#desktop">教育</a></li>
						<li><a data-toggle="tab" href="#tV">搬家</a></li>
						<li><a data-toggle="tab" href="#tablets">算命</a></li>-->
					</ul>
			</div>
			<!-- /title -->
			<!-- electonics -->
			<div class="electonics">

				<div class="brd2 col-xs-12 col-sm-3 col-md-3">
					<div id="home-slider2" class="carousel slide carousel-fade" data-ride="carousel">
						<!-- .home-slider -->
						<div class="carousel-inner">
							<div class="item active">
								<a class="ads" href="#">
									<img src="img/201462607391069hb1a_160x160.jpg" alt="add-banner" />
								</a>
							</div>
							<div class="item">
								<a class="ads" href="#">
									<img src="img/20148115442831dv6db_120x120.jpg" alt="add-banner" />
								</a>
							</div>
						</div>
						<!-- indicators -->
						<ol class="carousel-indicators">
							<li data-target="#home-slider2" data-slide-to="0" class="active"></li>
							<li data-target="#home-slider2" data-slide-to="1"></li>
						</ol>
						<!-- /indicators -->
						<!-- /.home-slider -->
					</div>
				</div>
				<div class="col-xs-12 col-sm-9 col-md-9">
					<div class="row">
						<!-- tab-content -->
						<div class="tab-content">
							<!-- tab-pane -->
							<div id="phones" class="tab-pane fade in active">									
								<div class="owl-demo-outer">
									<!-- #owl-demo -->
									<div id="owl-demo3" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="img/20131262143085ke2v3_120x120.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">查看更多</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="img/201411405294338bf69_120x120.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">查看更多</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="img/20141702798875v0c2_200x0_145x120.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">查看更多</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="img/2014411212029225tyi6z_120x60.png" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">查看更多</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="img/201410915569130ict1v_120x120.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">查看更多</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="img/2014114111753128y4ibk_120x120.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">查看更多</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="img/2014418831125310ut6d_120x120.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">查看更多</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="img/20141901017125hedaz_200x0_145x120.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">查看更多</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
								</div>


							</div>
							<!-- /tab-pane -->
							<!-- tab-pane -->
							
							<!-- /tab-pane -->
							<!-- tab-pane -->
							<div id="desktop" class="tab-pane fade in">
								<div id="owl-demo14" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">查看更多</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">查看更多</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">查看更多</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/elec-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">查看更多</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">查看更多</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">查看更多</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">查看更多</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">查看更多</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
							</div>
							
							<!-- tab-pane -->
							<div id="tablets" class="tab-pane fade in">
								<div id="owl-demo16" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">查看更多</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">查看更多</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">查看更多</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/elec-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">查看更多</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">查看更多</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">查看更多</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">查看更多</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">查看更多</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
							</div>
							<!-- /tab-pane -->
						</div>
						<!-- /tab-content -->

					</div>
				</div>
			</div>
		
			<!-- title -->
			<div class="title">
				<h2>
					飞跃社区风景
				</h2>
			</div>
			<!-- /title -->
			<!-- BLOG -->
			<div class="home-blog">
				<div class="col-xs-12 col-sm-12 col-md-12">
					<div class="row">							
						<div class="owl-demo-outer">
							<!-- #owl-demo -->
							<div id="owl-demo2" class="deals-wk2">
								<!-- item -->
								<div class="item">
									<div class="bdr col-xs-12 col-sm-6 col-md-4">
										<!-- blog-outer -->
										<div class="blog-outer">
											<div class="blog-img">
												<img src="img/2014162028141254iy09_200x0_145x120.jpg" alt="lt-blog-img1">
											</div>
											<div class="blog-img">
												<img src="img/20141702798875v0c2_200x0_145x120.jpg" alt="lt-blog-img1">
											</div>
										</div>
										<!-- /blog-outer -->
									</div>
									<div class="bdr col-xs-12 col-sm-6 col-md-4">
										<!-- blog-outer -->
										<div class="blog-outer">
											<div class="blog-img">
												<img src="img/20141901017125hedaz_200x0_145x120.jpg" alt="lt-blog-img1">
											</div>
											<div class="blog-img">
												<img src="img/20151782242610fd252_120x120.jpg" alt="lt-blog-img1">
											</div>
										</div>
										<!-- /blog-outer -->
									</div>
									<div class="bdr col-xs-12 col-sm-6 col-md-4">
										<!-- blog-outer -->
										<div class="blog-outer">
											<div class="blog-img">
												<img src="img/201410915569130ict1v_120x120.jpg" alt="lt-blog-img1">
											</div>
											<div class="blog-img">
												<img src="img/20148822359593azk18_120x120.jpg" alt="lt-blog-img1">
											</div>
										</div>
										<!-- /blog-outer -->
									</div>
								</div>
								<!-- /item -->
								
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<!-- .free-shipping -->
			<div class="free-shipping">
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="icon-shipping">
							<i class="icon-rocket icons"></i>
						</div>
						<div class="shipping-text">
							<h4>免费送货</h4>
							<p>全部免费送货</p>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="icon-shipping">
							<i class="icon-earphones-alt icons"></i>
						</div>
						<div class="shipping-text">
							<h4>在线支持24/7</h4>
							<p>在线支持24/7</p>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="icon-shipping">
							<i class="icon-refresh icons"></i>
						</div>
						<div class="shipping-text">
							<h4>退款保证 </h4>
							<p>30天退款</p>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="icon-shipping">
							<i class="icon-badge icons"></i>
						</div>
						<div class="shipping-text">
							<h4>会员折扣</h4>
							<p>会员折扣</p>
						</div>
					</div>

				</div>
			</div>
			<!-- /.free-shipping -->
		</div>
	</div>
</section>
<!-- /all-product -->
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
						<li><i class="icon-location-pin icons" aria-hidden="true"></i> <strong>地址:</strong> 飞跃广场中心：飞跃公司</li>
						<li><i class="icon-envelope-letter icons"></i> <strong>Email:</strong> 1554646851@qq.com</li>
						<li><i class="icon-call-in icons"></i> <strong>手机号码:</strong> 15860218985</li>
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
					<div class="col-xs-12 col-sm-6 col-md-6">
						Copyright &copy; 2017.Company name All rights reserved.
					</div>
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
		<li><a href="#" class="fa fa-facebook" target="_blank"><span><i class="fa fa-facebook" aria-hidden="true"></i> Facebook</span></a></li>
		<li><a href="#" class="fa fa-twitter" target="_blank"><span><i class="fa fa-twitter" aria-hidden="true"></i> Twitter</span></a></li>
		<li><a href="#" class="fa fa-rss" target="_blank"><span><i class="fa fa-rss" aria-hidden="true"></i> RSS</span></a></li>
		<li><a href="#" class="fa fa-pinterest-p" target="_blank"><span><i class="fa fa-pinterest-p" aria-hidden="true"></i> Pinterest</span></a></li>
		<li><a href="#" class="fa fa-share-alt" target="_blank"><span><i class="fa fa-share-alt" aria-hidden="true"></i> Flickr</span></a></li>
	</ul>
</aside>
<!-- /sticky-socia -->
<!-- Get Our Email Letter popup -->
<div class="modal fade modal-popup" id="modal1" data-open-onload="true" data-open-delay="1500" tabindex="-1" role="dialog">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fa fa-times"></i></button>
			<div class="modal-body">
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-6 pt-20">
						</div>
						<div class="col-sm-6 pt-20 text-center">
							<h2 class="heading font34 inverse">
								飞跃服务中心欢迎您
							</h2>
							<p class="font22 text-center">飞跃服务将为你提供最全面的社区服务，并为你处理各种事情，功能齐全。。</p>
							<form name="main">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="请填写你的邮箱地址">
								</div>
								<div class="form-group">
									<button class="btn btn-black" type="button">提交!</button>
								</div>
								<div class="form-group">
									<input type="checkbox" name="check" /> 不再提醒
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /Get Our Email Letter popup -->
<p id="back-top">
	<a href="#top"><i class="fa fa-chevron-up" aria-hidden="true"></i></a>
</p>
<script src="assets/js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/bootstrap-dropdownhover.min.js"></script>
<!-- Plugin JavaScript -->
<script src="assets/js/jquery.easing.min.js"></script>
<script src="assets/js/wow.min.js"></script>
<!-- owl carousel -->
<script src="assets/owl-carousel/owl.carousel.js"></script>
<!--  Custom Theme JavaScript  -->
<script src="assets/js/custom.js"></script>
</body>

</html>
