<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>飞跃社区服务平台</title>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<link rel="stylesheet" type="text/css" href="css/main.css" />
		<link rel="stylesheet" type="text/css" href="css/style.reset.css" />
		<link rel="stylesheet" type="text/css" href="css/full.css" />
		<link rel="stylesheet" type="text/css" href="css/top.css" />
		<script type="text/javascript" src="js/js1.js"></script>
		<script type="text/javascript" src="js/js2.js"></script>
		<script type="text/javascript" src="js/js3.js"></script>
		<script>
			var _hmt = _hmt || [];
			(function() {
				var hm = document.createElement("script");
				hm.src = "//hm.baidu.com/hm.js?dbba3a2fc7dd2f8ddda817420e26913d";
				var s = document.getElementsByTagName("script")[0];
				s.parentNode.insertBefore(hm, s);
			})();
		</script>
		<script>
			$(function() {
				if($.browser.msie && $.browser.version < 10) {
					$('body').addClass('ltie10');
				}
				$.fn.fullpage({
					verticalCentered: false,

					afterLoad: function(anchorLink, index) {

						if(index == 6) {

							$('#wrapHeader').removeClass("wrapHeader_fixed").addClass("wrapHeader_absolute");

						} else {
							$('#wrapHeader').removeClass("wrapHeader_absolute").addClass("wrapHeader_fixed");
						}

					},
					anchors: ['page1', 'page2', 'page3', 'page4', 'page5', 'page6', 'page7', 'page8'],
					navigation: true,
					navigationTooltips: ['首页', '社区简介', '社区管理平台', '社区服务平台', '关于我们', '尾页']
				});
			});
		</script>
		<script type="text/javascript" language="javascript">
			<!--
			function display() {

				document.getElementById("box").style.display = "block";
			}
			-->
		</script>

		<style>
			#box {
				display: none;
				position: absolute;
				top: 60px;
				left: -170px;
				width: 160px;
				background: url(img/boxbg.png) no-repeat right top;
				height: 100px;
				font-size: 20px;
				overflow: hidden;
				padding-left: 13px;
				z-index: 2;
			}
			
			#box a {
				display: block;
				width: 100%;
				padding: 10px 0;
				color: #08A5DB;
				font-weight: bold;
				padding-left: 20px;
			}
			
			#zizhu {
				position: relative;
			}
			
			#box:hover {
				background: url(img/boxbgh.png) no-repeat right top;
			}
			
			#box a:hover {
				color: #FFF;
			}
		</style>
	</head>

	<body style="overflow: hidden; height: 100%;">

		<div id="superContainer" style="top: 0px;">
			<!--[if lt IE 9]>
		 <a href="tips.html" id="clickMe"></a>
	<![endif]-->
			<!--顶部-->
			<div class="wrapHeader large wrapHeader_fixed" id="wrapHeader">
				<div class="header" id="header">
					<h1 class="logo" style="margin-right: 15px; padding-top:10px;"><a href="#page1"><img src="img/logo.png" /></a></h1>
					<ul class="nav" style=" display:block;">
						<li>
							<img src="img/tel.jpg" style="padding-top:7px; padding-right:20px;" />
						</li>

					</ul>
				</div>
			</div>
			<div class="section section1" data-anchor="page1" style="height: 755px;padding-top:0px !important;">
				<div class="box box3 js-scene css3" style=" height:100%;padding-top:0%;">
					<div class="box3_bg zIndex40"></div>
					<div class="box_min js-actor">
						<div class="banner">
							<!--轮播图开始-->
							
							<!--轮播图结束 -->
							<ul>
								<li>
									<a class="pic1 tip guanli page" href="#page2"></a>
								</li>
								<li>
									<a class="pic2 tip shenpi page" href="#page3"></a>
								</li>
								<li>
									<a class="pic3 tip fuwu page" href="#page4"></a>

								</li>
								<li>
									<a class="pic4 tip zhanshi page" href="#page5"></a>
								</li>
								<!--<li><a class="pic5 tip jiankang page" href="#page6"></a></li>-->
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="section section3" data-anchor="page2" style="height: 755px;">
				<div class="bg" style="background:#ec6464;"><img src="img/bg3.jpg" alt=""></div>
				<div class="bg19"></div>
				<div class="bg20"></div>
				<!--  	随鼠标移动  -->
				<div class="content">
					<div class="layerout moveu">
						<div class="layer1"></div>
						<div class="layer2"></div>
						<div class="layer3"></div>
						<div class="layer4"></div>
					</div>
				</div>
				<div class="bg18">
					<div class="button_float">
					<!-- 暂时空着开始 -->
						<ul>
							<li>
							</li>
							<li>
							</li>
						</ul>
					<!-- 暂时空着结束 -->
					</div>
				</div>
			</div>

			<div class="section section4" data-anchor="page3" style="height: 755px;">
				<div class="bg" style="background:#ffffff;"></div>
				<div class="bg03">
					<!--  随鼠标移动      -->
					<div class="content">
						<div class="layerout moveu">
							<div class="layer1"></div>
							<div class="layer2"></div>
						</div>
					</div>
				</div>
				<div class="bg033"></div>
				<div class="bg04"></div>
				<div class="bg044"></div>
				<div class="bg01">
					<div class="button_shenpi">
					<br/><br/>
						<ul>
							<li>
								<a href="back/login.jsp">管理员登录</a>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<div class="section section5" data-anchor="page4" style="height: 755px;">
				<div class="bg" style="background:#5ba4eb;"><img src="img/bg5.jpg" /></div>
				<div class="bg5_01"></div>
				<div class="bg5_06"></div>
				<div class="bg5_07"> </div>
				<div class="bg5_08">
					<!--   随鼠标移动     -->
					<div class="content">
						<div class="layerout moveu">
							<div class="layer1"></div>
							<div class="layer2"></div>
						</div>
					</div>
				</div>
				<div class="bg5_19">
					<div class="button_fuwu">
					<br /><br /><br />
						<ul>
							<li>
								<a href="front/user-login.jsp" target="_blank">进入服务中心</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="section section6" data-anchor="page5" style="height: 755px;">
				<div class="bg" style="background:#ffffff;"></div>
				<div class="bg6_04"></div>
				<div class="bg06_4">
					<div class="button_float" id="zhanshi">
					<!-- 暂时空着开始 -->
						<ul>
							<li>
							</li>
							<li>
							</li>
						</ul>
					<!-- 暂时空着结束 -->
					</div>
				</div>
			</div>

			<div class="section section7" data-anchor="page7" style="height: 755px;">
				<div class="bg" style="background:#763fd5;"><img src="img/bg7.jpg" /></div>
				<div class="bg7_10 pwhile p36 wow fadeInDown animated animated" data-wow-delay="0.5s" style="visibility: visible; -webkit-animation-delay: 0.5s;background:none; padding-top:40px;">更多精彩等待您的发现......</div>
				<div class="bg7_11 wow pwhile fadeInDown animated animated" data-wow-delay="1s" style="visibility: visible; -webkit-animation-delay: 1s;">
					<img src="img/bg7_ewm.png" />
				</div>
				<div class="bg7_12 wow fadeInUp   animated animated" data-wow-delay="1.2s" style="visibility: visible; -webkit-animation-delay: 1.2s;">
					<img src="img/bg7_ewm1.png" />
				</div>
				<div class="bg7_77">
					<div class="foot gWidth">
						<p>Copyright © 2018.10.09-2018.10.18 飞跃2.0项目组 <br/>技术支持：
							<a href="http://iamtop.net" target="_blank" style="color:#878787;">飞跃2.0项目组</a> 闽ICP备888888号-3<br />建议使用IE9.0或以上浏览器访问达到最佳效果

					</div>
				</div>

				<!--  随鼠标移动       -->
				<div class="content">
					<div class="layerout moveu">
						<div class="layer1"></div>
						<div class="layer2"></div>
						<div class="layer3"></div>
					</div>
				</div>
			</div>
		</div>
		<script>
			var width = $(window).width();
			if(width < 1024) {
				$("#header").css("width", "1024px")
			} else if(width < 1100) {
				$("#header").css("width", "95%")
			}

			$(window).resize(function() {
				var width = $(window).width();
				if(width < 1024) {
					$("#header").css("width", "1024px")
				} else if(width < 1100) {
					$("#header").css("width", "95%")
				} else {
					$("#header").css("width", "84%")
				}
			})
		</script>
		<script>
			$(function() {
				var ie6 = window.ActiveXObject && !window.XMLHttpRequest;
				var current = 1;
				var Slider = function() {

					function slideTo(idx) {}

					var timer;

					function startAutoPlay() {
						stop();
						timer = setTimeout(Slider.slideNext, 2000);
					}

					function stop() {
						timer && clearTimeout(timer);
					}

					return {
						slideTo: slideTo,
						slidePrev: function() {
							if(current == 0) return;
							slideTo(current - 1);
						},
						slideNext: function() {
							slideTo(current + 1);
						},
						startAutoPlay: startAutoPlay,
						stop: stop
					}
				}();

				if(!ie6) {
					Slider.startAutoPlay();
				}

				$('.section3').on('mousemove', function(e) {
					var offsetX = e.clientX / window.innerWidth - 0.5,
						offsetY = e.clientY / window.innerHeight - 0.5;
					$('.section3 .layer2').css('left', -10 - 40 * offsetX).css('top', -10 - 40 * offsetY);
					$('.section3 .layer3').css('left', 10 + 40 * offsetX).css('top', 50 + 20 * offsetY);
					$('.section3 .layer4').css('left', 10 + 60 * offsetX).css('top', 140 + 30 * offsetY);
				});

				$('.section4').on('mousemove', function(e) {
					var offsetX = e.clientX / window.innerWidth - 0.5,
						offsetY = e.clientY / window.innerHeight - 0.5;
					$('.section4 .layer2').css('left', 80 - 20 * offsetX).css('top', 30 - 20 * offsetY);
				});

				$('.section5').on('mousemove', function(e) {
					var offsetX = e.clientX / window.innerWidth - 0.5,
						offsetY = e.clientY / window.innerHeight - 0.5;
					$('.section5 .layer2').css('left', 50 - 40 * offsetX).css('top', 10 - 40 * offsetY);
				});

				$('.section7').on('mousemove', function(e) {
					var offsetX = e.clientX / window.innerWidth - 0.5,
						offsetY = e.clientY / window.innerHeight - 0.5;
					$('.section7 .layer2').css('left', -18 - 40 * offsetX).css('top', 25 - 40 * offsetY);
					$('.section7 .layer3').css('left', -18 + 40 * offsetX).css('top', 75 + 40 * offsetY);
				});

			});
		</script>

	</body>

</html>