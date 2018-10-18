<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--_meta 作为公共模版分离出去-->
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
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
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<!--/meta 作为公共模版分离出去-->

<title>新增文章 - 资讯管理 - H-ui.admin v2.3</title>
<meta name="keywords"
	content="H-ui.admin v2.3,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description"
	content="H-ui.admin v2.3，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
	<link rel="stylesheet" href="../front/css/layui.css" media="all">
<script src="../front/layer.js"></script>
<script src="../front/layui.js"></script>
<link rel="stylesheet" type="text/css" href="../front/css/bootstrap.min.css">
<script src="../front/js/bootstrap.min.js"></script>
</head>
<body>
	<article class="page-container">
		<form class="form form-horizontal" id="form-member-add">
		   <input type="hidden" name="noticeId" id="noticeId" value="" />
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>标题：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text" value="" placeholder=""
						id="titles" name="titles">
				</div>
			</div>
			<!-- </div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>标题：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text" value="" placeholder=""
						id="titles" name="titles">
				</div>
			</div> -->
			
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>内容：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text" value="" placeholder=""
						id="contents" name="contents">
				</div>
			</div>
			
			
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>公告类别：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text" value="1"
						placeholder="" name="typeName" id="typeName" >
				</div>
			</div>
			<!-- 
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>发表时间：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="datetime-local" name="releaseTime" id="releaseTime" class="input-text" style="width: 300px;">
				</div>
			</div> -->
				<div class="row cl">
					<label for="releaseTime" class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>发表时间：</label>
					<div class="form-label col-xs-4 col-sm-3">
						<input type="text" class="layui-input" id="releaseTime" name="releaseTime"
							placeholder="请输入年月日"  style="width: 300px;">
					</div>
				</div>

			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>备注：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text" placeholder="" value=""
						name="extent" id="extent">
				</div>
			</div>

			<div class="row cl">
				<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
					<input class="btn btn-primary radius" id="btnAdd" type="button" value="提交" />
				</div>
			</div>
		</form>
	</article>

	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/lib/jquery/1.9.1/jquery.min.js"></script>
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
	<script type="text/javascript">
		$(function() {
			$('.skin-minimal input').iCheck({
				checkboxClass : 'icheckbox-blue',
				radioClass : 'iradio-blue',
				increaseArea : '20%'
			});
			$("#btnAdd").click(function(){
				//ajax请求
				$.ajax({
					url : "${pageContext.request.contextPath}/NoticeBeanServlet?op=updateNotice",//url地址
					type : "post",
					data : {
						"noticeId" : $('#noticeId').val(),
						"titles" : $('#titles').val(),
						"contents" : $('#contents').val(),//传值
						"typeName" : $('#typeName').val(),
						"releaseTime" : $('#releaseTime').val(),
						"extent" : $('#extent').val()
						
											},
											//成功后执行的操作
											success : function(data) {
												//判断用户名密码是否正确，正确的话则跳到前台首页
												if (data == "false") {
													alert("失败");
												} else {
													layer
															.msg(
																	'修改成功!',
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
							});
			/*validate验证和 ajax 的方式完成表单提交 */

		});
	</script>
	<script>
	    //使用layui插件将选择日期变美观
		layui.use('laydate', function() {
			var laydate = layui.laydate;

			//常规用法
			laydate.render({
				elem : '#releaseTime',
				type : 'datetime'
			});
		});
	</script>
	
	<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>