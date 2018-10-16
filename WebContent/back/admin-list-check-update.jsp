<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--_meta 作为公共模版分离出去-->
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<LINK rel="Bookmark" href="/favicon.ico" >
<LINK rel="Shortcut Icon" href="/favicon.ico" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui.admin/css/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">

<title>添加用户 - H-ui.admin v2.3</title>
<meta name="keywords" content="H-ui.admin v2.3,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description" content="H-ui.admin v2.3，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>


<!--   表单开始     -->


<article class="page-container">
	<form class="form form-horizontal" id="form-member-add">
	    <div class="row cl" style="display: none;">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>姓名：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="李友惠" placeholder="请输入业主姓名" id="tenementId" name="tenementId">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>姓名：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="李友惠" placeholder="请输入业主姓名" id="tenementName" name="tenementName">
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
				<div class="radio-box">
					<input type="radio" id="sex-3" name="sex" value="保密">
					<label for="sex-3">保密</label>
				</div>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>工作单位：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="4399公司" placeholder="" id="aunit" name="aunit">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>身份证号码：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="350624199712123810" placeholder="" id="idCard" name="idCard">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>手机号码：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="17720153123" placeholder="" id="mobilePhone" name="mobilePhone">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>邮箱：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="177@qq.com" placeholder="" id="email" name="email">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>入住时间：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="2018-09-10" placeholder="" id="areStay" name="areStay">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red"></span>民族：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="汉" placeholder="" id="nationality" name="nationality">
			</div>
		</div>
			<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red"></span>详细地址：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="汉" placeholder="" id="homeAddress" name="homeAddress">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red"></span>婚姻状况：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="未婚" placeholder="" id="maritalStatus" name="maritalStatus">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>居住类型：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="常住" placeholder="" id="residenceType" name="residenceType">
			</div>
		</div>
		<div class="row cl">
				<label for="tenementId" class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>请选择用户：</label>
				<div class="formControls col-xs-4 col-sm-4">
					<select class="form-control" name="userId" id="userId">

					</select>
				</div>
			</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">备注：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea name="remark" cols="" rows="" class="textarea"  placeholder="说点什么...最少输入10个字符" onKeyUp="textarealength(this,100)"></textarea>
				<p class="textarea-numberbar"><em class="textarea-length">0</em>/100</p>
			</div>
		</div>-
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
				<input class="btn btn-primary radius" id="addBtn" type="button" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
			</div>
		</div>
	</form>
</article>

<!--   表单结束     -->

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/static/h-ui.admin/js/H-ui.admin.page.js"></script>
<script
	src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/laypage/1.2/laypage.js"></script>

<!--请在下方写此页面业务相关的脚本--> 
<script type="text/javascript">
$(function(){
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});
	$("#addBtn").click(function(){
		console.log(111);
		//ajax请求
		$.ajax({
			url : "${pageContext.request.contextPath}/TenementBeanServlet?op=update",//url地址
			type : "post",
			data : {
				"tenementName" : $('#tenementName').val(),
				"sex" : $("input[type='radio']:checked").val(),
				"aunit" : $('#aunit').val(),
				"idCard" : $('#idCard').val(),
				"mobilePhone" : $('#mobilePhone').val(),
				"email" : $('#email').val(),
				"areStay" : $('#areStay').val(),
				"nationality" : $('#nationality').val(),
				"homeAddress" : $('#homeAddress').val(),
				"residenceType" : $('#residenceType').val(),
				"maritalStatus" : $('#maritalStatus').val(),
				"remark" : $('#remark').val(),
				"userId" : $('#userId').val(),
				"tenementId" : $('#tenementId').val()
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
	
});
</script>
<script type="text/javascript">
		$(function() {
			//ajax的 get请求
			$.get("${pageContext.request.contextPath}/UserBeanServlet?op=load", function(data, status) {
				//使用js的内置对象JSON将返回的值转化为数组
				/* array = JSON.parse(data); */
				//遍历数组
				$.each(data, function(index, user) {
					$("#userId").append(
							"<option value="+user.userId+">" + user.userName
									+ "</option>");
				});
			});
		});
	</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>