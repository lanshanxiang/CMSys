<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
<head>
<%
	if (null == request.getSession().getAttribute("users")) {
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}
%>
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


<title>修改费用 </title>

	<link rel="stylesheet" href="../front/css/layui.css" media="all">
<script src="../front/layer.js"></script>
<script src="../front/layui.js"></script>
<link rel="stylesheet" type="text/css" href="../front/css/bootstrap.min.css">
<script src="../front/js/bootstrap.min.js"></script>
</head>
<body>
	<article class="cl pd-20">
		<form class="form form-horizontal"
			id="form-member-add">
			<input type="hidden" name="payId" id="payId" value="" />
			<input type="hidden" name="oldTenementId" id="oldTenementId" value="" />
			<div class="row cl">
				<label for="tenementId" class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>住户名称：</label>
				<div class="formControls col-xs-4 col-sm-4 ">
					<select class="form-control select" name="tenementId" id="tenementId">

					</select>
				</div>
			</div>

			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>年：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text"  placeholder=""
						id="years" name="years">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>月：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text"  placeholder=""
						name="months" id="months">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>上月度数：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text" 
						placeholder="" name="lastHalf" id="lastHalf">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>本月度数：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text" placeholder="" 
						name="thisMonth" id="thisMonth">
				</div>
			</div>
			<input type="hidden" name="oldCostId" id="oldCostId" value="" />
			<div class="row cl">
				<label for="costId" class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>费用名称：</label>
				<div class="formControls col-xs-4 col-sm-4 ">
					<select class="form-control select" name="costId" id="costId">

					</select>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>走表数：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text" placeholder="" 
						name="quantity" id="quantity">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>应缴费：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text" placeholder="" 
						name="payable" id="payable">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>实缴费：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text" placeholder="" 
						name="practical" id="practical">
				</div>
			</div>
			
			<div class="row cl">
					<label for="payDate" class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>缴费日期：</label>
					<div class="form-label col-xs-4 col-sm-3">
						<input type="text" class="layui-input" id="payDate" name="payDate"
							placeholder="请输入年月日"  style="width: 300px;">
					</div>
				</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>备注：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text" placeholder="" value="0"
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
					url : "${pageContext.request.contextPath}/PaymentServlet?op=update",//url地址
					type : "post",
					data : {
						"payId" : $('#payId').val(),
						"tenementId" : $('#tenementId').val(),
						"years" : $('#years').val(),//传值
						"months" : $('#months').val(),
						"lastHalf" : $('#lastHalf').val(),
						"thisMonth" : $('#thisMonth').val(),
						"costId" : $('#costId').val(),
						"quantity" : $('#quantity').val(),
						"payable" : $('#payable').val(),
						"practical" : $('#practical').val(),
						"payDate" : $('#payDate').val(),
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
	<script type="text/javascript">
		$(function() {
			//ajax的 get请求
			$.get("${pageContext.request.contextPath}/TenementBeanServlet?op=load", function(data, status) {
				//使用js的内置对象JSON将返回的值转化为数组
				/* array = JSON.parse(data); */
				//遍历数组
				$.each(data, function(index, report) {
					$("#tenementId").append(
							"<option value="+report.tenementId+">" + report.tenementName+ "</option>");
				});
			});
		});
		$(function() {
			//ajax的 get请求
			$.get("${pageContext.request.contextPath}/CostServlet?op=load", function(data, status) {
				//使用js的内置对象JSON将返回的值转化为数组
				/* array = JSON.parse(data); */
				//遍历数组
				$.each(data, function(index, report) {
					$("#costId").append(
							"<option value="+report.costId+">" + report.costName+ "</option>");
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
				elem : '#payDate',
				type : 'datetime'
			});
		});
	</script>

	<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>