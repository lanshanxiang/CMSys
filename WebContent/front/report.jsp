<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns:ng="http://angularjs.org">
<!--<![endif]-->

<head>
<title>金蝶社区</title>
<meta charset="utf-8">
<meta name="description"
	content="金蝶社区是金蝶产品官方服务互动门户，为金蝶产品用户提供官方服务及产品知识，是用户互动交流的主要平台及国内领先的企业管理软件垂直社区。" />
<meta name="keywords"
	content="金蝶,金蝶软件,金蝶社区,金蝶云,ERP管理系统,财务管理,金蝶服务,金蝶产品,知识">
<meta itemprop="name" content="金蝶社区" />
<meta name="description" itemprop="description"
	content="金蝶社区是金蝶产品官方服务互动门户，为金蝶产品用户提供官方服务及产品知识，是用户互动交流的主要平台及国内领先的企业管理软件垂直社区。" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="renderer" content="webkit|ie-compile|ie-stand">

<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="front/css/base/common.css?v=4125e975">
<link type="text/css" rel="stylesheet"
	href="front/css/base/fonts.css?v=31ad3187">
<link rel="stylesheet" type="text/css"
	href="front/css/external/idangerous.swiper2.7.6.css?v=05042fdf">
<link rel="stylesheet" type="text/css"
	href="front/css/component/home.css?v=f5ec48c8">
<link rel="stylesheet" type="text/css"
	href="front/css/external/intro.css?v=31945761">

<link rel="stylesheet" href="css/layui.css" media="all">
<script src="layer.js"></script>
<script src="layui.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>

<script type="text/javascript"
	src="http://clubimg.kingdee.com/club/attachments/js/vendor/jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="club/js/vendor/modernizr-2.6.2.min.js?v=42306a27"></script>
<script type="text/javascript"
	src="http://clubimg.kingdee.com/club/attachments/js/vendor/angular.min.js"></script>
<script type="text/javascript">
	if (typeof angular == 'undefined') {
		document
				.write(unescape('%3Cscript src=\'/club/js/vendor/angular.min.js\' type=\'text/javascript\'%3E%3C/script%3E'));
	}
</script>
<!-- 使angularjs兼容IE7 -->
<!--[if lt IE 8]>
    <script src="/club/js/vendor/angular-ie7-support.min.js?v=0f962b2a"></script>
    <![endif]-->
<script src="club/js/vendor/angular-sanitize.min.js?v=d9c422f7"></script>
<script type="text/javascript"
	src="front/js/base/kdc_common.js?v=9fc7d52c"></script>
<script>
	jq = jQuery.noConflict();
	// angular app
	try {
		angular.module('ie7-support');
		// 使得angularjs兼容IE7
		var app = angular.module('clubApp', [ 'ie7-support', 'ngSanitize' ]);
	} catch (err) {
		var app = angular.module('clubApp', [ 'ngSanitize' ]);
	}
	//angularjs 的$http并没有加上 X-Requested-With 头信息，这里手动加上
	app
			.config([
					'$httpProvider',
					function($httpProvider) {
						$httpProvider.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';
					} ]);

	//统计
	// KDIO.init('club2018',{'uc1':cloudId,'uc2':discuz_uid });
</script>
</head>

<body class="ng-app:clubApp" id="ng-app" ng-app="clubApp">
	<!--[if IE 8]>         <input type="hidden" id="v3_low_ie8"/> <![endif]-->
	<!--[if lt IE 9]>
<p class="u-browse-tips">您的浏览器版本太低，将不能正常浏览社区。请下载 <a href="https://sm.myapp.com/original/Browser/69.0.3497.100_chrome_installer.exe" target="_blank">Google Chrome</a> 浏览器</p>
<![endif]-->



	<div class="v2_login_container">
		<div class="v2_login_box">
			<div class="v2_icon icon-close v2_close"></div>
			<div style="height: 55px;"></div>
			<div class="v2_title bg_image">
				<span class="v2_icon icon-title"></span>
			</div>
			<div style="height: 28px;"></div>
			<div class="v2_line"></div>
			<div id="v2_qrcode">
				<div class="v2_left_top_widget bg_image " data-type="账号登录">
					<span class="v2_icon icon-qrcode"></span>
				</div>
				<div style="margin-top: 10px">社区账号/云之家账号</div>
				<div class="rl v2_input_box"
					style="z-index: 3001; position: relative;" id="login_username">
					<span class="v2_icon icon-people v2_people"></span> <input
						type="text" placeholder="请输入手机号码/邮箱/用户名" t="icon-people_active"
						class="v2_input" autocomplete="off">
					<ul class="v2_remind_name" id="login_username_remind">
					</ul>
				</div>
				<div style="margin-top: 12px">密码</div>
				<div class="rl v2_input_box" id="login_password">
					<span class="v2_icon icon-password v2_password"></span> <input
						type="password" class="v2_input password" t="icon-password_active"
						maxlength=20>
				</div>
				<div id="login_code_box" class="v2_hide">
					<div style="margin-top: 12px">验证码</div>
					<div style="margin-top: 6px">
						<span id="login_code" class="rl"> <input type="text"
							id="login_code_input" style="width: 156px"
							class="v2_btn v2_code v2_input" maxlength=4>
						</span> <img id="login_code_img" data-src="/club/auth/captcha"
							style="width: 90px; height: 48px; margin-left: 20px; vertical-align: middle;" />
						<span id="code_change"
							style="font-size: 12px; float: right; margin-top: 16.5px;"
							class="v2_blue_color">换一换</span>
					</div>
				</div>
				<img src="club/images/login/people_active.png" class="v2_hide">
				<img src="club/images/login/password_active.png" class="v2_hide">
				<img src="club/images/login/tick.png" class="v2_hide">
				<div style="margin-top: 10px; font-size: 12px" class="clearfix">
					<span class="v2_checkbox">记住登录状态</span> <a
						class="v2_forget v2_blue_color"
						href="https://cloud.kingdee.com/passport/hi/password/forget">忘记密码</a>
				</div>
				<button class="v2_btn v2_btn_blue" id="v2_submit">登 录</button>
				<h3 class="v2_register">
					<a class="v2_blue_color" href="/club/auth/register" target="_blank">立即注册</a>
				</h3>
				<p class="v2_tips"></p>
				<div class="v2_other_account">
					<span>使用合作账号登录</span>
				</div>
				<ul class="icon-list">
					<li class="v2_icon icon-pt icon-jd icon-JD" data-type="jd"></li>
					<li class="v2_icon icon-pt icon-qq icon-QQ" data-type="qq"></li>
					<li class="v2_icon icon-pt icon-bd icon-baidu" data-type="bd"></li>
					<li class="v2_icon icon-pt icon-wb icon-sina" data-type="wb"></li>
					<li class="v2_icon icon-pt icon-wx icon-wechat" data-type="wx"></li>
				</ul>
			</div>
			<div id="v2_computer" class="v2_hide">
				<div class="v2_left_top_widget  bg_image " data-type="二维码登录">
					<span class="v2_icon icon-computer"></span>
				</div>
				<div class="tc" style="margin-top: 30px; font-size: 12px">
					快速安全登录</div>
				<iframe frameBorder="0" src="" class="cqrcode"></iframe>
				<div class="tc" style="margin-top: 24px">请使用云之家APP扫描二维码</div>
			</div>
		</div>
	</div>

	<div class="g-header extend-m">
		<div class="header-wrap">
			<div class="m-header extend-m">
				<div class="logo-fl">
					<a href="/club/newclub" class="new-logo"> <span
						class="icon-kingdee-logo index-logo logo_w"></span> <span
						class="icon-kingdee-logo detail-logo logo_m"></span>
					</a>
				</div>
				<ul class="vertify-list">
					<li class="u-header-selectp"><a href="">服务专区</a> <i></i>
						<div class="hover-select" style="width: 100px;">
							<ul>
								<li><a href="/club/newclub/services?product_id=2">我要报修</a>
								</li>
								<li><a href="/club/newclub/services?product_id=3">申请住户</a>
								</li>
								<li><a href="/club/newclub/services?product_id=1">申请车位</a>
								</li>
								<li><a href="/club/newclub/services?product_id=4">商家入驻</a>
								</li>
								<li><a href="/club/newclub/services?product_id=8">购买小区</a>
								</li>
							</ul>
						</div></li>
					<li class="w-narrow"><a href="/club/newclub/identification">实名认证</a>
					</li>
				</ul>

				<ul class="login">
					<li><a class="v2_login">登录</a></li>
					<li><a class="reg_link" href="/club/auth/register">免费注册</a></li>
				</ul>

				<div class="u-club-wacher">
					公众号
					<div class="m-header-qrcode-main">
						<div class="m-header-qrcode">
							<div class="qrcode-title">金蝶社区微信公众号</div>
							<div class="qrcode-tip">扫码关注即可获取服务</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="g-content">
		<div class="select-product">
			<div class="m-club-slogan">
				<div class="u-club-slogan">飞跃社区 · 互动门户</div>
				<div>请选择你需要的服务</div>
			</div>
			<div>
				<ul class="product-list" data-step="2" data-intro="选择需要帮助的产品">
					<li class="list-item"><a class="list-item" href="know.jsp">我的电费</a>
					</li>
					<li class="list-item"><a class="list-item" href="know.jsp">我的水费</a>
					</li>
					<li class="list-item"><a class="list-item" href="know.jsp">其他费用</a>
					</li>
					<li class="list-item"><a class="list-item" href="know.jsp">我的车位</a>
					</li>
					<br />
					<li class="list-item"><a class="list-item" href="know.jsp">维修记录</a>
					</li>
					<li class="list-item"><a class="list-item" href="know.jsp">社区公告</a>
					</li>
					<li class="list-item"><a class="list-item" href="addLost.jsp">失物招领</a>
					</li>
					<li class="list-item"><a class="list-item" href="active.jsp">社区活动</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="m-club-hover">
			<ul class="hover-list">
				<li class="hover-item w-272">
					<div class="hover-num">
						<ul class="hover-num-value hover-help-num" data-num="29738"></ul>
						<span>&nbsp;条</span>
					</div>
					<div class="hover-field">官方知识</div>
				</li>
				<li class="hover-item w-318">
					<div class="hover-num">
						<ul class="hover-num-value hover-course-num" data-num="846"></ul>
						<span>&nbsp;门</span>
					</div>
					<div class="hover-field">视频课程</div>
				</li>
				<li class="hover-item w-318">
					<div class="hover-num">
						<ul class="hover-num-value hover-post-num" data-num="700877"></ul>
						<span>&nbsp;条</span>
					</div>
					<div class="hover-field">分享内容</div>
				</li>
				<li class="hover-item w-272">
					<div class="hover-num">
						<ul class="hover-num-value hover-specialist-num" data-num="218"></ul>
						<span>&nbsp;位</span>
					</div>
					<div class="hover-field">产品专家</div>
				</li>
			</ul>
		</div>
		<div class="m-new-dynamic">
			<h1 style="font-size: 60px">我要报修！！</h1>
			<hr>
			<form class="form-horizontal"
				style="position: relative; left: 500px;">
				<div class="form-group">
					<label for="equipment" class="col-sm-2 control-label">报修内容</label>
					<div class="col-sm-2">
						<input type="text" class="form-control" id="equipment"
							name="equipment" placeholder="报修内容">
					</div>
				</div>
				<div class="form-group">
					<label for="reportName" class="col-sm-2 control-label">报修人</label>
					<div class="col-sm-2">
						<input type="text" class="form-control" id="reportName"
							name="reportName" placeholder="报修人">
					</div>
				</div>
				<div class="form-group">
					<label for="lostTel" class="col-sm-2 control-label">您的联系人电话</label>
					<div class="col-sm-2">
						<input type="tel" class="form-control" id="lostTel" name="lostTel"
							placeholder="您的联系人电话">
					</div>
				</div>
				<div class="form-group">
					<label for="extent" class="col-sm-2 control-label">备注</label>
					<div class="col-sm-2">
						<input type="tel" class="form-control" id="extent" name="extent"
							placeholder="备注">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-2">
						<button style="width: 100px;" id="addReport" type="button"
							class="btn btn-success">提交</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="g-footer">
		<div class="_footer">
			<div class="links">
				<dl class="iblock">
					<div class="learn_more">
						<dd>
							<span>了解更多</span> <a class="child1"
								href="http://www.kingdee.com?utm_source=club" target="_blank">金蝶官网</a>
							<a class="child2" href="http://mall.kingdee.com" target="_blank">产品商城</a>
							<a class="child3" href="http://www.kingdee.com/company/contact/"
								target="_blank">金蝶机构</a> <a class="child4"
								href="http://ikd.kingdee.com/" target="_blank">iKD图库</a> <a
								class="child5" href="/club/ue/index" target="_blank">用户调研</a> <a
								class="child6" href="/club/newclub/newCreative" target="_blank">创新杯赛事</a>
							<a class="child7" href="http://q.kingdee.com" target="_blank">轻分析</a>
						</dd>
					</div>
					<div class="friendship_link">
						<dd>
							<span>金蝶产品</span> <a class="child1 link_kd"
								href="http://www.kingdee.com/products/eas/" target="_blank"
								data-href="https://api.kingdee.com/auth/user/onelogin?redirect_uri=http://www.kingdee.com/"
								data-type="我的水费">我的水费</a> <a class="child2 link_kd"
								href="http://www.kingdee.com/products/k3cloud/" target="_blank"
								data-href="https://api.kingdee.com/auth/user/onelogin?redirect_uri=http://www.kingdee.com/"
								data-type="我的电费">我的电费</a> <a class="child3 link_kd"
								href="http://www.kingdee.com/products/k3wise/" target="_blank"
								data-href="https://api.kingdee.com/auth/user/onelogin?redirect_uri=http://www.kingdee.com/"
								data-type="金蝶K/3 WISE">其他费用</a> <a class="child4 link_kd"
								href="http://www.kingdee.com/products/kis/" target="_blank"
								data-href="https://api.kingdee.com/auth/user/onelogin?redirect_uri=http://www.kingdee.com/"
								data-type="金蝶KIS系列">我的车位</a> <a class="child5 yunpan"
								target="_blank" onclick="thirdPart(this)"
								data-href="https://pan.kingdee.com/sso/onetologin?redirect_uri=https%3a%2f%2fpan.kingdee.com%2f"
								href="https://pan.kingdee.com/sso/onetologin?redirect_uri=https%3a%2f%2fpan.kingdee.com%2f"
								data-type="云盘">维修记录</a> <a class="child6 link_kd"
								target="_blank" data-type="企业平台" onclick="thirdPart(this)"
								data-href="https://api.kingdee.com/auth/user/onelogin?redirect_uri=http://cloud.kingdee.com/qy"
								href="https://api.kingdee.com/auth/user/onelogin?redirect_uri=http://cloud.kingdee.com/qy"
								class="kd_cloud">社区公告</a> <a class="child7"
								href="http://kdweibo.com/home/?utm_source=&utm_medium="
								target="_blank">失物招领</a> <a class="child8"
								href="http://www.jdy.com/" target="_blank">社区活动</a>
						</dd>
						<dd class="second">
							<span></span> <a class="child1 link_kd"
								href="http://www.ik3cloud.com/" target="_blank"
								onclick="thirdPart(this)"
								data-href="https://api.kingdee.com/auth/user/onelogin?redirect_uri=http://www.ik3cloud.com/"
								data-type="金蝶云">金蝶云</a> <a class="child2"
								href="http://www.cargeer.com/" target="_blank">车商悦</a> <a
								class="child3" href="http://assistant.youshang.com"
								target="_blank">友商网</a> <a class="child4"
								href="http://www.zhihuiji.com/" target="_blank">智慧记</a>
						</dd>
					</div>
					<div class="contact">
						<span class="contact_me">联系我们</span> <span class="hotline">4008
							836 836（服务）</span> <span class="hotline">4008 830 830（销售）</span> <span
							class="hotline">4008 836 836-9（投诉）</span> <a id="business"
							data-href="http://icrmcloud.kingdee.com:81/xt/opportunity/outSource/index.jsp"
							target="_blank" needLogin>我有商机</a>
						<!--<span class="hotline last">rm@kingdee.com（邮箱）</span>-->
					</div>
				</dl>
				<div class="qr_box img_box fR">
					<p>金蝶社区移动端</p>
				</div>
				<div class="qr_box aboult fR">
					<p class="title">关于我们</p>
					<p>金蝶社区是金蝶产品官方服务互动门户，我们服务于金蝶产品用户，聚焦解决产品使用问题、提供产品操作教程、文档与工具，鼓励交流财务及管理信息，推动建立开放共赢企业生态圈。</p>
				</div>
			</div>
			<div class="copy_right">
				<p class="copy_right_en">金蝶版权所有 © 1993- 2018 Kingdee Software
					(China) Inc. All Rights Reserved 粤ICP备05041751号-18</p>
			</div>
		</div>


	</div>
	<div id="g-guide" class="g-guide"></div>

	<script type="text/javascript" src="front/js/base/main.js?v=117dc66c"></script>
	<script type="text/javascript"
		src="front/js/external/idangerous.swiper2.7.6.js?v=7d55ecda"></script>
	<script type="text/javascript"
		src="front/js/component/service_tools.js?v=4398839e"></script>
	<script type="text/javascript"
		src="front/js/component/run_number.js?v=ab458c3f"></script>
	<script type="text/javascript">
		/*百度统计代码 start*/
		var _bdhmProtocol = (('https:' == document.location.protocol) ? ' https://'
				: ' http://');
		document
				.write(unescape('%3Cscript src=\''
						+ _bdhmProtocol
						+ 'hm.baidu.com/h.js%3F65e708a86ef5df894af1fcf5a9120d13\'  type=\'text/javascript\'%3E%3C/script%3E'));
		/*百度统计代码 end*/
	</script>
	<!-- <script src="/club/js/monitor.js?v=eebdde39"></script> -->

	<script>
		$("#addReport")
				.click(
						function() {
							console.log(111);
							$.ajax({
										url : "${pageContext.request.contextPath}/FrontReportBeanServlet?op=addReportBean",//url地址
										type : "post",
										data : {
											"equipment" : $('#equipment').val(),
											"reportName" : $('#reportName').val(),
											"extent":$('#extent').val()
											/* "tenementId":${user.tenementId} */
										},
										//成功后执行的操作
										success : function(data) {
											//判断用户名密码是否正确，正确的话则跳到前台首页
											/* alert("成功了"); */
										    if (data == "false") {
												alert("失败");
											} else {
												layer.msg(
																'提交成功，请等待维修人员！！',
																{
																	icon : 1,
																	time : 1000
																});
											}
										}
									});
						});
	</script>

</body>

</html>