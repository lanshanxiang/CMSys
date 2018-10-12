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
<title>添加用户 - H-ui.admin v2.3</title>
<meta name="keywords" content="H-ui.admin v2.3,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description" content="H-ui.admin v2.3，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>


<!--   表单开始     -->


<article class="page-container">
	<form class="form form-horizontal" id="form-member-add">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>姓名：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="李友惠" placeholder="请输入业主姓名" id="ownerName" name="ownerName">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>密码：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="123" placeholder="" id="ownerPwd" name="ownerPwd">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>性别：</label>
			<div class="formControls col-xs-8 col-sm-9 skin-minimal">
				<div class="radio-box">
					<input name="ownerSex" type="radio" id="sex-1" value="男" checked>
					<label for="sex-1">男</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="sex-2" name="ownerSex" value="女">
					<label for="sex-2">女</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="sex-3" name="ownerSex" value="保密">
					<label for="sex-3">保密</label>
				</div>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>楼号：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="7" placeholder="" id="ownerLHao" name="ownerLHao">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>房号：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="408" placeholder="" id="ownerFHao" name="ownerFHao">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>是否户主：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="是" placeholder="" id="ownerIsHuZhu" name="ownerIsHuZhu">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>与户主关系：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="自己" placeholder="" id="ownerRelation" name="ownerRelation">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red"></span>民族：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="喊" placeholder="" id="ownerNationality" name="ownerNationality">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red"></span>籍贯：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="厦门" placeholder="" id="ownerHomeTown" name="ownerHomeTown">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>手机号码：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="1531111111" placeholder="请输入手机号码" id="ownerMobileTel" name="ownerMobileTel">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red"></span>邮箱：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="15@1" placeholder="@" name="ownerEmail" id="ownerEmail">
			</div>
		</div>

		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red"></span>出生日期：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="1999-10-10" placeholder="" id="ownerBirthday" name="ownerBirthday">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>身份证号码：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="3506241996096446" placeholder="" id="ownerCardId" name="ownerCardId">
			</div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red"></span>政治面貌：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="党员" placeholder="" id="ownerFaction" name="ownerFaction">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red"></span>学历：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="博士" placeholder="" id="ownerEducational" name="ownerEducational">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red"></span>婚姻状况：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="委会" placeholder="" id="ownerMaritalStatus" name="ownerMaritalStatus">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>家庭详细地址：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="在自爱个自爱者" placeholder="" id="ownerHomeAddress" name="ownerHomeAddress">
			</div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>入住时间：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="2018-10-19" placeholder="" id="ownerHomeDate" name="ownerHomeDate">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>入住办理人：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="李" placeholder="" id="ownerCreateby" name="ownerCreateby">
			</div>
		</div>

		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">备注：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea name="ownerRemark" cols="" rows="" class="textarea"  placeholder="说点什么...最少输入10个字符" onKeyUp="textarealength(this,100)"></textarea>
				<p class="textarea-numberbar"><em class="textarea-length">0</em>/100</p>
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

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/static/h-ui.admin/js/H-ui.admin.page.js"></script>
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
			url : "${pageContext.request.contextPath}/hms.do?op=register",//url地址
			type : "post",
			data : {
				"ownerName" : $('#ownerName').val(),
				"ownerPwd" : $('#ownerPwd').val(),//传值
				"ownerSex" : $("input[type='radio']:checked").val(),
				"ownerLHao" : $('#ownerLHao').val(),
				"ownerFHao" : $('#ownerFHao').val(),
				"ownerIsHuZhu" : $('#ownerIsHuZhu').val(),
				"ownerRelation" : $('#ownerRelation').val(),
				"ownerNationality" : $('#ownerNationality').val(),
				"ownerHomeTown" : $('#ownerHomeTown').val(),
				"ownerMobileTel" : $('#ownerMobileTel').val(),
				"ownerEmail" : $('#ownerEmail').val(),
				"ownerBirthday" : $('#ownerBirthday').val(),
				"ownerCardId" : $('#ownerCardId').val(),
				"ownerEducational" : $('#ownerEducational').val(),
				"ownerMaritalStatus" : $('#ownerMaritalStatus').val(),
				"ownerHomeAddress" : $('#ownerHomeAddress').val(),
				"ownerHomeDate" : $('#ownerHomeDate').val(),
				"ownerCreateby" : $('#ownerCreateby').val(),
				"ownerRemark" : $('#ownerRemark').val()
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
	});
	
});
</script> 
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>