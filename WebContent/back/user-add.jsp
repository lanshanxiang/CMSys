<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--_meta 作为公共模版分离出去-->
<!DOCTYPE HTML>
<html>
<head>
<%-- <%
	if (null == request.getSession().getAttribute("users")) {
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}
%> --%>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="favicon.ico">
<link rel="Shortcut Icon" href="favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/h-ui.admin/skin/default/skin.css"
	id="skin" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/h-ui.admin/css/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/lib/jquery/1.9.1/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<title>添加用户 - H-ui.admin v2.3</title>
<meta name="keywords" content="H-ui.admin v2.3,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description" content="H-ui.admin v2.3，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>


<!--   表单开始     -->


<article class="page-container">
	<form class="form form-horizontal" id="form-member-add">
		<div class="row cl">
			<div class="formControls col-xs-8 col-sm-9">
				<input type="hidden" class="input-text"   id="userId" name="userId">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>用户账号：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text"  placeholder="请输入用户手机号" id="register" name="register">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>用户名称：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text"  placeholder="请输入用户名称" id="userName" name="userName">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>用户密码：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="password" class="input-text"  placeholder="请输入用户密码" id="userPwd" name="userPwd"">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">确认密码：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="password" class="input-text"  placeholder="请输入确认密码" id="rUserPwd"" name="rUserPwd">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>性别：</label>
			<div class="formControls col-xs-8 col-sm-9 skin-minimal">
				<div class="radio-box">
					<input name="sex" type="radio" id="sex-1" value="男" checked>
					<label for="sex-1">男</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="sex-2" name="sex" value="女">
					<label for="sex-2">女</label>
				</div>
				
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">年龄：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text"  placeholder="请输入年龄" id="userAge" name="userAge">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">绑定住户编号：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text"  placeholder="输入要绑定住户编号" id="tenementId" name="tenementId">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>密保问题：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text"  placeholder="请输入密保问题" id="question" name="question">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>密保答案：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text"  placeholder="请输入密保答案" id="answer" name="answer">
			</div>
		</div>
		
		
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
				<input class="btn btn-primary radius" id="addBtn" type="button" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
			</div>
		</div>
	</form>
</article>

<!--   表单结束     -->


	<script type="text/javascript"
		src="${pageContext.request.contextPath}/lib/layer/2.4/layer.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/h-ui/js/H-ui.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/h-ui.admin/js/H-ui.admin.page.js"></script>
	<!--/_footer /作为公共模版分离出去-->

	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/lib/My97DatePicker/4.8/WdatePicker.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/lib/jquery.validation/1.14.0/jquery.validate.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/lib/jquery.validation/1.14.0/validate-methods.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/lib/jquery.validation/1.14.0/messages_zh.js"></script>

<!--请在下方写此页面业务相关的脚本--> 
<script type="text/javascript">
$(function(){
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});
	$("#register").blur(function(){
		var regExp = new RegExp("^[1][0-9]{10}$");
		if($(this).val()==""){
			layer.msg(
					'手机号不能为空!',
					{
						icon : 1,
						time : 1000
					});
		}else if(!regExp.test($(this).val())){
			layer.msg(
					'手机号格式有误!',
					{
						icon : 1,
						time : 1000
					});
		}
	});
	$("#userPwd").blur(function(){
		
		if($(this).val()==""){
			layer.msg(
					'密码不能为空!',
					{
						icon : 1,
						time : 1000
					});
		}
	});
	$("#rUserPwd").blur(function(){
		if($(this).val()==""){
			layer.msg(
					'确认密码不能为空!',
					{
						icon : 1,
						time : 1000
					});
		}else if($(this).val()!=$("#userPwd").val()){
			layer.msg(
					'两次密码不一致!',
					{
						icon : 1,
						time : 1000
					});
		}
	});
	
	$("#addBtn").click(function(){
			if($("#userPwd").val()==""){
				layer.msg(
						'密码不能为空!',
						{
							icon : 1,
							time : 1000
						});
			}else if($("#rUserPwd").val()==""){
					layer.msg(
							'确认密码不能为空!',
							{
								icon : 1,
								time : 1000
							});
			}else if($("#rUserPwd").val()!=$("#userPwd").val()){
					layer.msg(
							'两次密码不一致!',
							{
								icon : 1,
								time : 1000
							});
			}else{
				//ajax请求
				$.ajax({
					url : "${pageContext.request.contextPath}/UserBeanServlet?op=addUser",//url地址
					type : "post",
					data : {
						"register" : $('#register').val(),
						"userName" : $('#userName').val(),
						"userPwd" : $('#userPwd').val(),
						"userSex" : $("input[type='radio']:checked").val(),
						"userAge" : $('#userAge').val(),
						"tenementId" : $('#tenementId').val(),
						"question" : $('#question').val(),
						"answer" : $('#answer').val()
					},
					//成功后执行的操作
					success : function(data) {
						//判断用户名密码是否正确，正确的话则跳到前台首页
						if (data == "false") {
							alert("失败");
						} else {
							layer
							.msg(
									'增加成功!',
									{
										icon : 1,
										time : 1000
									},
									function() {
										//获取父层					
										var index = parent.layer
												.getFrameIndex(window.name);
										//刷新父层					
										parent.location
												.reload();
										//关闭弹出层			
										parent.layer
												.close(index);
									});
						}
					}
				});
			}
			
		
		
	});
	
});
</script> 

<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>