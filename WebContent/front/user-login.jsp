<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>登录</title>
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="css/sign-up-login.css">
<link rel="stylesheet" type="text/css"
	href="http://cdn.bootcss.com/font-awesome/4.6.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/inputEffect.css" />
<link rel="stylesheet" href="css/tooltips.css" />
<link rel="stylesheet" href="css/spop.css" />

<script src="js/jquery.min.js"></script>
<script src="js/snow.js"></script>
<script src="js/jquery.pure.tooltips.js"></script>
<script src="js/spop.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/lib/layer/2.4/layer.js"></script>
<script>
	(function() {
		// trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim
		if (!String.prototype.trim) {
			(function() {
				// Make sure we trim BOM and NBSP
				var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
				String.prototype.trim = function() {
					return this.replace(rtrim, '');
				};
			})();
		}

		[].slice.call(document.querySelectorAll('input.input__field')).forEach(
				function(inputEl) {
					// in case the input is already filled..
					if (inputEl.value.trim() !== '') {
						classie.add(inputEl.parentNode, 'input--filled');
					}

					// events:
					inputEl.addEventListener('focus', onInputFocus);
					inputEl.addEventListener('blur', onInputBlur);
				});

		function onInputFocus(ev) {
			classie.add(ev.target.parentNode, 'input--filled');
		}

		function onInputBlur(ev) {
			if (ev.target.value.trim() === '') {
				classie.remove(ev.target.parentNode, 'input--filled');
			}
		}
	})();

	$(function() {

		$('#login #login-password').focus(function() {
			$('.login-owl').addClass('password');
		}).blur(function() {
			$('.login-owl').removeClass('password');
		});
		$('#login #register-password').focus(function() {
			$('.register-owl').addClass('password');
		}).blur(function() {
			$('.register-owl').removeClass('password');
		});
		$('#login #register-repassword').focus(function() {
			$('.register-owl').addClass('password');
		}).blur(function() {
			$('.register-owl').removeClass('password');
		});
		$('#login #forget-password').focus(function() {
			$('.forget-owl').addClass('password');
		}).blur(function() {
			$('.forget-owl').removeClass('password');
		});
		$('#login-username').blur(function() {
			if ($(this).val() == "") {
				$.pt({
					target : $("#login-username"),
					position : 'r',
					align : 't',
					width : 'auto',
					height : 'auto',
					content : "手机号不能为空"
				});
			} else {
				//用户名只能是15位以下的字母或`1321`290-0. 数字
				var regExp = new RegExp("^[1][0-9]{10}$");
				if (!regExp.test($(this).val())) {
					$.pt({
						target : $("#login-username"),
						position : 'r',
						align : 't',
						width : 'auto',
						height : 'auto',
						content : "手机号格式错误"
					});
				}
			}

		});
		$('#forget-username')
				.blur(
						function() {

							if ($(this).val() == "") {
								$.pt({
									target : $("#forget-username"),
									position : 'r',
									align : 't',
									width : 'auto',
									height : 'auto',
									content : "手机号不能为空"
								});
							} else {
								//用户名只能是15位以下的字母或`1321`290-0. 数字
								var regExp = new RegExp("^[1][0-9]{10}$");
								if (!regExp.test($(this).val())) {
									$.pt({
										target : $("#forget-username"),
										position : 'r',
										align : 't',
										width : 'auto',
										height : 'auto',
										content : "手机号格式错误"
									});
								} else {

									$
											.ajax({

												url : "${pageContext.request.contextPath}/UserBeanServlet?op=isHaveUser",//url地址
												type : "post",
												data : {
													"register" : $(
															'#forget-username')
															.val()

												},
												//成功后执行的操作
												success : function(data) {
													//判断用户名密码是否正确，正确的话则跳到前台首页

													if (data == "false") {
														layer.msg(
																'该用户不存在!请重新输入',
																{
																	icon : 5,
																	time : 3000
																});
													}

												}
											});

								}

							}

						});
	});

	function goto_register() {
		$("#register-password").val("");
		$("#register-repassword").val("");
		$("#register-username").val("");
		$("#register-code").val("");
		$("#tab-2").prop("checked", true);
	}

	function goto_login() {
		$("#login-username").val("");
		$("#login-password").val("");
		$("#tab-1").prop("checked", true);
	}
	function goto_login(v) {
		$("#login-username").val(v);
		$("#login-password").val("");
		$("#tab-1").prop("checked", true);
	}

	function goto_forget() {
		$("#forget-username").val("");
		$("#forget-password").val("");
		$("#forget-question").val("");
		$("#forget-answer").val("");
		$("#tab-3").prop("checked", true);
	}

	function login() {//登录
		var username = $("#login-username").val(), password = $(
				"#login-password").val(), validatecode = null, flag = false;
		//判断用户名密码是否为空
		if (username == "") {
			$.pt({
				target : $("#login-username"),
				position : 'r',
				align : 't',
				width : 'auto',
				height : 'auto',
				content : "用户名不能为空"
			});
			flag = true;
		} else {
			//用户名只能是11位数字
			var regExp = new RegExp("^[1][0-9]{10}$");
			if (!regExp.test(username)) {
				$.pt({
					target : $("#login-username"),
					position : 'r',
					align : 't',
					width : 'auto',
					height : 'auto',
					content : "手机号格式错误"
				});
				flag = true;
			} else {
				
				if (password == "") {
					$.pt({
						target : $("#login-password"),
						position : 'r',
						align : 't',
						width : 'auto',
						height : 'auto',
						content : "密码不能为空"
					});
					flag = true;
				} else {

					if (flag) {
						return false;
					} else {//登录
						$
								.ajax({
									url : "${pageContext.request.contextPath}/UserBeanServlet?op=login",//url地址
									type : "post",
									data : {
										"username" : username,
										"password" : password
									},
									//成功后执行的操作
									success : function(data) {
										//判断用户名密码是否正确，正确的话则跳到前台首页
										console.log(data);
										if (data == "false") {
											layer.msg('登录失败!请重新登录', {
												icon : 5,
												time : 3000
											});
										} else {
											layer.msg('登录成功!', {
												icon : 1,
												time : 1000
											}, function() {
												location.href = "index.jsp";

											});
										}
									}
								});

						//调用后台登录验证的方法
						//alert('登录成功');
						//return false;
					}

				}

			}

		}

	}
	//注册获取验证码
	var codestr;
	//获取验证码
	function getCode() {

		//判断用户名是否为空
		if ($("#register-username").val() == "") {
			$.pt({
				target : $("#login-username"),
				position : 'r',
				align : 't',
				width : 'auto',
				height : 'auto',
				content : "手机号不能为空"
			});

		} else {
			//用户名只能是11位数字
			var regExp = new RegExp("^[1][0-9]{10}$");
			if (!regExp.test($("#register-username").val())) {
				$.pt({
					target : $("#register-username"),
					position : 'r',
					align : 't',
					width : 'auto',
					height : 'auto',
					content : "手机号格式错误"
				});

			} else {

				$
						.ajax({
							url : "${pageContext.request.contextPath}/UserBeanServlet?op=getCode",//url地址
							type : "post",
							data : {
								"tel" : $("#register-username").val()

							},
							//成功后执行的操作
							success : function(data) {
								//判断用户名密码是否正确，正确的话则跳到前台首页
								codestr = data;

							}
						});

				var time = 60;

				timer = setInterval(function() {

					if (time <= 0) {

						$("#btn-getCode").val("获取验证码").removeAttr("disabled")
						clearInterval(timer);

					} else {
						$("#btn-getCode").attr("disabled", "disabled");
						$("#btn-getCode").val("倒计时" + time + "秒");

						time--;
					}

				}, 1000);

			}

		}

	}

	//注册
	function register() {
		var password = $("#register-password").val(), repassword = $(
				"#register-repassword").val(), username = $(
				"#register-username").val(), registercode = $("#register-code")
				.val(),

		flag = false;
		if (username == "") {
			$.pt({
				target : $("#register-username"),
				position : 'r',
				align : 't',
				width : 'auto',
				height : 'auto',
				content : "账号不能为空"
			});
			flag = true;
		} else {

			$
					.ajax({

						url : "${pageContext.request.contextPath}/UserBeanServlet?op=isHaveUser",//url地址
						type : "post",
						data : {
							"register" : username
						},
						//成功后执行的操作
						success : function(data) {

							if (data == "true") {
								layer.msg('该账号已被注册过!请重新输入', {
									icon : 5,
									time : 3000
								});
								flag = true;
							} else {

								if (password == "") {
									$.pt({
										target : $("#register-password"),
										position : 'r',
										align : 't',
										width : 'auto',
										height : 'auto',
										content : "密码不能为空"
									});
									flag = true;
								} else {
									if (password != repassword) {
										$.pt({
											target : $("#register-repassword"),
											position : 'r',
											align : 't',
											width : 'auto',
											height : 'auto',
											content : "两次输入的密码不一致"
										});
										flag = true;
									} else {

										//判断验证码是否为空
										if (registercode == "") {
											$.pt({
												target : $("#register-code"),
												position : 'r',
												align : 't',
												width : 'auto',
												height : 'auto',
												content : "验证码不能为空"
											});
											flag = true;
										} else {
											//判断验证码是否为空
											if (registercode != codestr) {
												$
														.pt({
															target : $("#register-code"),
															position : 'r',
															align : 't',
															width : 'auto',
															height : 'auto',
															content : "验证码不正确"
														});
												flag = true;
											} else {

												if (flag) {
													return false;
												} else {//注册

													$
															.ajax({
																url : "${pageContext.request.contextPath}/UserBeanServlet?op=register",//url地址
																type : "post",
																data : {
																	"password" : password,
																	"register" : username

																},
																datatype : "text",
																//成功后执行的操作
																success : function(
																		data) {
																	//判断用户名密码是否正确，正确的话则跳到前台首页

																	if (data == false) {
																		layer
																				.msg(
																						'注册失败!请确认信息是否填写有误',
																						{
																							icon : 5,
																							time : 1000
																						});
																	} else {
																		layer
																				.msg(
																						'注册成功!',
																						{
																							icon : 3,
																							time : 1000
																						},
																						function() {
																							goto_login(username);

																						});
																	}
																}//success
															});

												}

											}

										}

									}

								}

							}

						}
					});

		}

	}

	//重置密码获取验证码

	var codestr2;
	//获取验证码
	function getCodeForForget() {

		//判断用户名是否为空
		if ($("#forget-username").val() == "") {
			$.pt({
				target : $("#forget-username"),
				position : 'r',
				align : 't',
				width : 'auto',
				height : 'auto',
				content : "手机号不能为空"
			});

		} else {
			//用户名只能是11位数字
			var regExp = new RegExp("^[1][0-9]{10}$");
			if (!regExp.test($("#forget-username").val())) {
				$.pt({
					target : $("#forget-username"),
					position : 'r',
					align : 't',
					width : 'auto',
					height : 'auto',
					content : "手机号格式错误"
				});

			} else {
				
				
				
				$
				.ajax({

					url : "${pageContext.request.contextPath}/UserBeanServlet?op=isHaveUser",//url地址
					type : "post",
					data : {
						"register" : $(
								'#forget-username')
								.val()

					},
					//成功后执行的操作
					success : function(data) {
						//判断用户名密码是否正确，正确的话则跳到前台首页

						if (data == "false") {
							layer.msg(
									'该用户不存在!请重新输入',
									{
										icon : 5,
										time : 3000
									});
						}else{
							
							$
							.ajax({
								url : "${pageContext.request.contextPath}/UserBeanServlet?op=getCode",//url地址
								type : "post",
								data : {
									"tel" : $("#forget-username").val()

								},
								//成功后执行的操作
								success : function(data) {
									//判断用户名密码是否正确，正确的话则跳到前台首页
									codestr2 = data;

								}
							});

					var time = 60;

					timer = setInterval(function() {

						if (time <= 0) {

							$("#btn-forget-getCode").val("获取验证码").removeAttr("disabled")
							clearInterval(timer);
							codestr2="";

						} else {
							$("#btn-forget-getCode").attr("disabled", "disabled");
							$("#btn-forget-getCode").val("倒计时" + time + "秒");

							time--;
						}

					}, 1000);
							
						}

					}
				});
				
				

				

			}

		}

	}

	//重置密码
	function forget() {
		var password = $("#forget-password").val(), 
		repassword = $(
		"#forget-repassword").val(), username = $(
		"#forget-username").val(), forgetcode = $("#forget-code")
		.val(),

flag = false;
if (username == "") {
	$.pt({
		target : $("#forget-username"),
		position : 'r',
		align : 't',
		width : 'auto',
		height : 'auto',
		content : "手机号不能为空"
	});
	flag = true;
} else {

	$
			.ajax({

				url : "${pageContext.request.contextPath}/UserBeanServlet?op=isHaveUser",//url地址
				type : "post",
				data : {
					"register" : username
				},
				//成功后执行的操作
				success : function(data) {

					if (data == "false") {
						layer.msg('该账号不存在!请重新输入', {
							icon : 5,
							time : 3000
						});
						flag = true;
					} else {

						if (password == "") {
							$.pt({
								target : $("#forget-password"),
								position : 'r',
								align : 't',
								width : 'auto',
								height : 'auto',
								content : "密码不能为空"
							});
							flag = true;
						} else {
							console.log(password+","+repassword)
							if (password != repassword) {
								$.pt({
									target : $("#forget-repassword"),
									position : 'r',
									align : 't',
									width : 'auto',
									height : 'auto',
									content : "两次输入的密码不一致"
								});
								flag = true;
							} else {

								//判断验证码是否为空
								if (forgetcode == "") {
									$.pt({
										target : $("#forget-code"),
										position : 'r',
										align : 't',
										width : 'auto',
										height : 'auto',
										content : "验证码不能为空"
									});
									flag = true;
								} else {
									//判断验证码是否为空
									if (forgetcode != codestr2) {
										$
												.pt({
													target : $("#forget-code"),
													position : 'r',
													align : 't',
													width : 'auto',
													height : 'auto',
													content : "验证码不正确"
												});
										flag = true;
									} else {

										if (flag) {
											return false;
										} else {//重置密码

											$
													.ajax({
														url : "${pageContext.request.contextPath}/UserBeanServlet?op=updatePwd",//url地址
														type : "post",
														data : {
															"password" : password,
															"register" : username

														},
														datatype : "text",
														//成功后执行的操作
														success : function(
																data) {
															//判断用户名密码是否正确，正确的话则跳到前台首页

															if (data == "false") {
																layer
																		.msg(
																				'修改失败!请确认信息是否填写有误',
																				{
																					icon : 5,
																					time : 1000
																				});
															} else {
																layer
																		.msg(
																				'密码修改成功!',
																				{
																					icon : 3,
																					time : 1000
																				},
																				function() {
																					goto_login(username);

																				});
															}
														}//success
													});

										}

									}

								}

							}

						}

					}

				}
			});

}
	}
</script>
<style type="text/css">
html {
	width: 100%;
	height: 100%;
}

body {
	background-repeat: no-repeat;
	background-position: center center #2D0F0F;
	background-color: #00BDDC;
	background-image: url(images/snow.jpg);
	background-size: 100% 100%;
}

.snow-container {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	pointer-events: none;
	z-index: 100001;
}
</style>
</head>
<body>
	<!-- 雪花背景 -->
	<div class="snow-container"></div>
	<!-- 登录控件 -->
	<div id="login">
		<input id="tab-1" type="radio" name="tab" class="sign-in hidden"
			checked /> <input id="tab-2" type="radio" name="tab"
			class="sign-up hidden" /> <input id="tab-3" type="radio" name="tab"
			class="sign-out hidden" />
		<div class="wrapper">
			<!-- 登录页面 -->
			<div class="login sign-in-htm">
				<form class="container offset1 loginform">
					<!-- 猫头鹰控件 -->
					<div id="owl-login" class="login-owl">
						<div class="hand"></div>
						<div class="hand hand-r"></div>
						<div class="arms">
							<div class="arm"></div>
							<div class="arm arm-r"></div>
						</div>
					</div>
					<div class="pad input-container">
						<section class="content"> <span
							class="input input--hideo"> <input
							class="input__field input__field--hideo" type="text"
							id="login-username" autocomplete="off" placeholder="请输入手机号"
							tabindex="1" maxlength="11" /> <label
							class="input__label input__label--hideo" for="login-username">
								<i class="fa fa-fw fa-user icon icon--hideo"></i> <span
								class="input__label-content input__label-content--hideo"></span>
						</label>
						</span> <span class="input input--hideo"> <input
							class="input__field input__field--hideo" type="password"
							id="login-password" placeholder="请输入密码" tabindex="2"
							maxlength="15" /> <label
							class="input__label input__label--hideo" for="login-password">
								<i class="fa fa-fw fa-lock icon icon--hideo"></i> <span
								class="input__label-content input__label-content--hideo"></span>
						</label>
						</span> </section>
					</div>
					<div class="form-actions">
						<a tabindex="4" class="btn pull-left btn-link text-muted"
							onClick="goto_forget()">忘记密码?</a> <a tabindex="5"
							class="btn btn-link text-muted" onClick="goto_register()">快速注册</a>
						<input class="btn btn-primary" type="button" tabindex="3"
							onClick="login()" value="登录" style="color: white;" />
					</div>
				</form>
			</div>
			<!-- 忘记密码页面 -->
			<div class="login sign-out-htm">
				<form action="#" method="post" class="container offset1 loginform">
					<!-- 猫头鹰控件 -->
					<div id="owl-login" class="forget-owl">
						<div class="hand"></div>
						<div class="hand hand-r"></div>
						<div class="arms">
							<div class="arm"></div>
							<div class="arm arm-r"></div>
						</div>
					</div>
					<div class="pad input-container">
						<section class="content"> <span
							class="input input--hideo"> <input
							class="input__field input__field--hideo" type="text"
							id="forget-username" autocomplete="off" placeholder="请输入手机号" />
							<label class="input__label input__label--hideo"
							for="forget-username"> <i
								class="fa fa-fw fa-user icon icon--hideo"></i> <span
								class="input__label-content input__label-content--hideo"></span>
						</label>
						</span>
						<span class="input input--hideo"> <input
							class="input__field input__field--hideo" type="password"
							id="forget-password" placeholder="请新密码" maxlength="15" /> <label
							class="input__label input__label--hideo"
							for="forget-password"> <i
								class="fa fa-fw fa-lock icon icon--hideo"></i> <span
								class="input__label-content input__label-content--hideo"></span>
						</label>
						</span> 
						<span class="input input--hideo"> <input
							class="input__field input__field--hideo" type="password"
							id="forget-repassword" placeholder="请确认密码" maxlength="15" /> <label
							class="input__label input__label--hideo"
							for="forget-repassword"> <i
								class="fa fa-fw fa-lock icon icon--hideo"></i> <span
								class="input__label-content input__label-content--hideo"></span>
						</label>
						</span> 
						
						 <span class="input input--hideo"
							style="width: 200px; float: left;"> <input
							class="input__field input__field--hideo" type="text"
							id="forget-code" autocomplete="off" style="" placeholder="请输入验证码" />
							<label class="input__label input__label--hideo"
							for="register-code"> <i
								class="fa fa-fw fa-wifi icon icon--hideo"></i> <span
								class="input__label-content input__label-content--hideo"></span>
						</label>
						</span> <span class="input--hideo" style="position: relative; top: 18px;">
							<input class="btn btn-info" type="button" onClick="getCodeForForget()"
							id="btn-forget-getCode" value="获取验证码" style="color: white;" />
						</span> </section>
					</div>
					<div class="form-actions">
						<a class="btn pull-left btn-link text-muted"
							onClick="goto_login()">返回登录</a> <input class="btn btn-primary"
							type="button" onClick="forget()" value="重置密码"
							style="color: white;" />
					</div>
				</form>
			</div>
			<!-- 注册页面 -->
			<div class="login sign-up-htm">
				<form action="#" method="post" class="container offset1 loginform">
					<!-- 猫头鹰控件 -->
					<div id="owl-login" class="register-owl">
						<div class="hand"></div>
						<div class="hand hand-r"></div>
						<div class="arms">
							<div class="arm"></div>
							<div class="arm arm-r"></div>
						</div>
					</div>
					<div class="pad input-container">
						<section class="content"> <span
							class="input input--hideo"> <input
							class="input__field input__field--hideo" type="text"
							id="register-username" autocomplete="off" placeholder="请输入手机号"
							maxlength="11" /> <label class="input__label input__label--hideo"
							for="register-username"> <i
								class="fa fa-fw fa-user icon icon--hideo"></i> <span
								class="input__label-content input__label-content--hideo"></span>
						</label>
						</span> <span class="input input--hideo"> <input
							class="input__field input__field--hideo" type="password"
							id="register-password" placeholder="请输入密码" maxlength="15" /> <label
							class="input__label input__label--hideo" for="register-password">
								<i class="fa fa-fw fa-lock icon icon--hideo"></i> <span
								class="input__label-content input__label-content--hideo"></span>
						</label>
						</span> <span class="input input--hideo"> <input
							class="input__field input__field--hideo" type="password"
							id="register-repassword" placeholder="请确认密码" maxlength="15" /> <label
							class="input__label input__label--hideo"
							for="register-repassword"> <i
								class="fa fa-fw fa-lock icon icon--hideo"></i> <span
								class="input__label-content input__label-content--hideo"></span>
						</label>
						</span> <span class="input input--hideo"
							style="width: 200px; float: left;"> <input
							class="input__field input__field--hideo" type="text"
							id="register-code" autocomplete="off" style=""
							placeholder="请输入验证码" /> <label
							class="input__label input__label--hideo" for="register-code">
								<i class="fa fa-fw fa-wifi icon icon--hideo"></i> <span
								class="input__label-content input__label-content--hideo"></span>
						</label>
						</span> <span class="input--hideo" style="position: relative; top: 18px;">
							<input class="btn btn-info" type="button" onClick="getCode()"
							id="btn-getCode" value="获取验证码" style="color: white;" />
						</span> </section>
					</div>
					<div class="form-actions">
						<a class="btn pull-left btn-link text-muted"
							onClick="goto_login()">返回登录</a> <input class="btn btn-primary"
							type="button" onClick="register()" value="注册"
							style="color: white;" />
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>