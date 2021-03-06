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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script
	src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<title>房屋更新</title>
</head>
<body>
	<article class="cl pd-20">
		<form class="form form-horizontal" id="form-member-add">
          <div class="row cl">
				<div class="formControls col-xs-8 col-sm-9">
					<input type="hidden" class="input-text u" placeholder="" value=""
						name="roomId" id="roomId">
				</div>
				</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>房间名称：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text u" placeholder="" value=""
						name="roomName" id="roomName">
				</div>
			</div>
			<div class="row cl">
				<label for="buildingId" class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>请选择楼房：</label>
				<div class="formControls col-xs-4 col-sm-4">
					<select class="form-control u" name="buildingId" id="buildingId">
					</select>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>单元号：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text u" placeholder=""
						value="" name="unitNum" id="unitNum">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>房间简介：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text u" placeholder=""
						value="" name="eApartment" id="eApartment">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>建筑面积：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text u" placeholder="如：250" value=""
						name="buildArea" id="buildArea">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>使用面积：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text u" placeholder="如：250" value=""
						name="usingArea" id="usingArea">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>朝向：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text u" placeholder="如：北" value=""
						name="face" id="face">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>备注：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text u" placeholder="" value=""
						name="extent" id="extent">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>户型：</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text u" placeholder="如：两室一厅" value=""
						name="housetype" id="housetype">
				</div>
			</div>
			<div class="row cl">
				<label for="lease" class="form-label col-xs-4 col-sm-3"><span
					class="c-red">*</span>是否租赁：</label>
				<div class="formControls col-xs-4 col-sm-4">
					<select class="form-control u" name="lease" id="lease">
                         <option value="已租赁">已租赁</option>
                         <option value="未租赁">未租赁</option>
					</select>
				</div>
			</div>
			<div class="row cl">
				<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
					<input class="btn btn-primary radius u" id="btnUpdate" type="button"
						value="提交" />
				</div>
			</div>
		</form>
	</article>
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
			$("#btnUpdate")
					.click(
							function() {
								//ajax请求
								$
										.ajax({
											url : "${pageContext.request.contextPath}/RoomBeanServlet?op=updateRoomBean",//url地址
											type : "post",
											data : {
												"roomName" : $(
														'#roomName').val(),
												"buildingId" : $('#buildingId').val(),
												"unitNum" : $('#unitNum')
														.val(),//传值
												"eApartment" : $('#eApartment')
														.val(),
												"buildArea" : $('#buildArea').val(),
												"usingArea" : $('#usingArea')
														.val(),
												"face" : $('#face').val(),//传值
												"extent" : $('#extent')
														.val(),
												"housetype" : $('#housetype').val(),
												"lease" : $('#lease').val(),
												"roomId" : $('#roomId').val()
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
			$.get("${pageContext.request.contextPath}/BuildingBeanServlet?op=load", function(data, status) {
				//使用js的内置对象JSON将返回的值转化为数组
				/* array = JSON.parse(data); */
				//遍历数组
				$.each(data, function(index, building) {
					$("#buildingId").append(
							"<option value="+building.buildingId+">" + building.buildingName
									+ "</option>");
				});
			});
		});
	</script>
	<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>