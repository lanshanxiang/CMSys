<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>管理员登录</title>
			
		<style>
			.ie-warning {
				position: fixed;
				top: 0;
				left: 0;
				z-index: 9999;
				background: #000;
				width: 100%;
				height: 100%;
				text-align: center;
				color: #fff;
				font-family: "Courier New", Courier, monospace;
				padding: 50px 0
			}
			
			.ie-warning p {
				font-size: 17px
			}
			
			.ie-warning .iew-container {
				min-width: 1024px;
				width: 100%;
				height: 200px;
				background: #fff;
				margin: 50px 0
			}
			
			.ie-warning .iew-download {
				list-style: none;
				padding: 30px 0;
				margin: 0 auto;
				width: 720px
			}
			
			.ie-warning .iew-download>li {
				float: left;
				vertical-align: top
			}
			
			.ie-warning .iew-download>li>a {
				display: block;
				color: #000;
				width: 140px;
				font-size: 15px;
				padding: 15px 0
			}
			
			.ie-warning .iew-download>li>a>div {
				margin-top: 10px
			}
			
			.ie-warning .iew-download>li>a:hover {
				background-color: #eee
			}
		</style>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/lsx.css" />

	</head>

	<body>
		<!-- Older IE warning message -->
		<div class="ie-warning" id="ie" style="display: none">
			<h1 class="c-white">Warning!!</h1>
			<p>你正在使用的浏览器版本过低！<br>请升级你的浏览器以查看此页面 。</p>
			<div class="iew-container">
				<ul class="iew-download">
					<li>
						<a href="http://chrome.360.cn/">
							<img src="https://img.weixiaoqu.com/images/uploads/201806/dff3c4f74aa874a1ea41b2354eb8ff6c.png" alt="">
							<div>360极速浏览器</div>
						</a>
					</li>
					<li>
						<a href="http://browser.qq.com/?adtag=SEM1">
							<img src="https://img.weixiaoqu.com/images/uploads/201806/eb0c513ee1bd5cd7a6f3921c0b0950a0.png" alt="">
							<div>QQ浏览器</div>
						</a>
					</li>
					<li>
						<a href="http://www.google.com/chrome/">
							<img src="https://img.weixiaoqu.com/images/uploads/201806/b178c635619936371c12e6241294846f.png" alt="">
							<div>Chrome</div>
						</a>
					</li>
					<li>
						<a href="https://www.mozilla.org/en-US/firefox/new/">
							<img src="https://img.weixiaoqu.com/images/uploads/201806/691ac03f74625976893d7001ad3aa49f.png" alt="">
							<div>Firefox</div>
						</a>
					</li>
					<li>
						<a href="http://www.opera.com">
							<img src="https://img.weixiaoqu.com/images/uploads/201806/2913ae8d4c35c37565bf8176ede31d22.png" alt="">
							<div>Opera</div>
						</a>
					</li>
				</ul>
			</div>
			<p>抱歉给您带来不便！</p>
		</div>
		<div id="root">
			<div class="container___1qll8">
				<header class="topNav___30byD">
					<div class="topNav_content___20HcD">
						<a href="https://www.weixiaoqu.com"><img src="https://vip.weixiaoqu.com/vipstatic/images/logo2016.png"></a>
						<ul class="menu___2j7Ji">
							<li>
								<a href="../index.jsp">首页</a>
							</li>
						</ul>
					</div>
				</header>
				<div class="content___1xAM2">
					<div class="top___dAPWE">
						<div class="header___3xyac">
							<a href="javascript:"><span class="title___2SlIy">飞跃社区管理中心-登录</span></a>
						</div>
						<div class="desc___1uABx">微社区 - 智慧社区管理创导者</div>
					</div>
					<div class="main___3vXQQ">
						<div class="login___1MW8J">
							<form class="ant-form ant-form-horizontal">
								<div class="ant-row ant-form-item">
									<div class="ant-form-item-control-wrapper">
										<div style="height: 50px;" class="ant-form-item-control has-success"><span class="ant-form-item-children"><span class="ant-input-affix-wrapper ant-input-affix-wrapper-lg" style="margin-top: 40px;"><span class="ant-input-prefix"><i class="anticon anticon-user prefixIcon___5euWy"></i></span>
											<input placeholder="手机号码/邮箱" type="text" id="mName" name="mName" data-__meta="[object Object]" data-__field="[object Object]" class="ant-input ant-input-lg" value=""></span>
											</span>
										</div>
									</div>
							</div><br /><br />
								<div class="ant-row ant-form-item">
									<div class="ant-form-item-control-wrapper">
										<div style="height: 50px;" class="ant-form-item-control has-success"><span class="ant-form-item-children"><span class="ant-input-affix-wrapper ant-input-affix-wrapper-lg"><span class="ant-input-prefix"><i class="anticon anticon-lock prefixIcon___5euWy"></i></span>
											<input type="password" placeholder="密码" id="mPwd" name="mPwd" data-__meta="[object Object]" data-__field="[object Object]" class="ant-input ant-input-lg" value=""></span>
											</span>
										</div>
									</div>
								</div>
								<div>
									<a target="_blank" href="/user/forgotpwd" style="float: right;">忘记密码</a>
								</div>
								<div class="ant-row ant-form-item">
									<div class="ant-form-item-control-wrapper">
										<div class="ant-form-item-control">
										<span class="ant-form-item-children">
										<button id="btnLogin" type="button" class="ant-btn submit___3bWpy ant-btn-primary ant-btn-lg" style="height: 50px;">
										<span>登 录</span>
										</button>
										</span>
										</div>
									</div>
								</div>
								
							</form>
						</div>
					</div>
				</div>
				<div class="globalFooter___1W2x2">
					<div class="copyright___3hvsv">Copyright <i class="anticon anticon-copyright"></i> 2018.10.09-2018.10.19 飞跃社区团队</div>
				</div>
			</div>
		</div>
		<script src="https://hm.baidu.com/hm.js?bc7493bf7c88666cc89fc3c230ebcabd"></script>
		<script src="//www.weixiaoqu.com/vip_analysis.js"></script>
		<script type="text/javascript"
		src="${pageContext.request.contextPath}/lib/jquery/1.9.1/jquery.min.js"></script>
		<script type="text/javascript"
		src="${pageContext.request.contextPath}/lib/layer/2.4/layer.js"></script>
		<script>
			function isIE() {
				if(!!window.ActiveXObject || "ActiveXObject" in window) {
					document.getElementById('ie').style.display = 'block'
				}
			}
			isIE()
		</script>
		<script type="text/javascript">
		     $("#btnLogin").click(function(){
		    	 $
					.ajax({
						url : "${pageContext.request.contextPath}/ManagerServlet?op=login",//url地址
						type : "post",
						data : {
							"mName" : $("#mName").val(),
							"mPwd" : $("#mPwd").val()
						},
						//成功后执行的操作
						success : function(data) {
							//判断用户名密码是否正确，正确的话则跳到前台首页
							console.log(data);
							if (data == false) {
								layer.msg('登录失败!请重新登录',{
									icon : 5,
									time : 3000
								});
							} else {
								layer.msg('登录成功!',{
													icon : 1,
													time : 1000
								},
								function() {
										location.href="${pageContext.request.contextPath}/back/index.jsp";

								});
							}
						}
					});
		     });
		</script>
	</body>

</html>