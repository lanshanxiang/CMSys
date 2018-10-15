<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<LINK rel="Bookmark" href="/favicon.ico" >
<LINK rel="Shortcut Icon" href="/favicon.ico" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui/css/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<title>管理员列表</title>
</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
		住户管理 <span class="c-gray en">&gt;</span> 登记信息列表 <a
			class="btn btn-success radius r"
			style="line-height: 1.6em; margin-top: 3px"
			href="javascript:location.replace(location.href);" title="刷新"><i
			class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="page-container">
		<article class="cl pd-20">
			<div class="text-c">
				是否自动检索：<input type="checkbox" id="autoSearch"> 姓名：<input
					type="text" class="form-controlSearch input-text "
					placeholder="输入姓名" data-column="2" id="col2_filter"
					style="width: 100px;"> 岗位：<input type="text"
					class="form-controlSearch input-text " placeholder="输入岗位"
					data-column="3" id="col3_filter" style="width: 100px;">
				入职时间：<input type="text" class="form-controlSearch input-text Wdate"
					onfocus="WdatePicker({maxDate:'#F{$dp.$D(\'datemax\')||\'%y-%M-%d\'}'})"
					placeholder="输入入职时间" data-column="4" id="col4_filter"
					style="width: 100px;">

			</div>
			<div class="text-c">
				入职时间范围： <input type="text"
					onfocus="WdatePicker({maxDate:'#F{$dp.$D(\'datemax\')||\'%y-%M-%d\'}'})"
					id="datemin" class="input-text Wdate" style="width: 120px;">
				- <input type="text"
					onfocus="WdatePicker({minDate:'#F{$dp.$D(\'datemin\')}',maxDate:'%y-%M-%d'})"
					id="datemax" class="input-text Wdate" style="width: 120px;">
				<input type="text" class="input-text" style="width: 250px"
					placeholder="输入员工姓名、岗位、部门" id="" name="">
				<button type="submit" class="btn btn-success radius" id="" name="">
					<i class="Hui-iconfont">&#xe665;</i> 搜用户
				</button>
			</div>
			<div class="cl pd-5 bg-1 bk-gray mt-20">
				<span class="l"><a href="javascript:;" onclick="datadel()"
					class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>
						批量删除</a> <a href="javascript:;"
					onclick="member_add('添加用户','admin-list-check-add.jsp','','510')"
					class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i>
						添加用户</a></span> <span class="r">共有数据：<strong><span
						id="datarowcount"></span></strong> 条
				</span>
			</div>
			<ul class="nav nav-tabs" style="margin-top: 30px;">
				<li class="active"><a id="checkY" data-toggle="tab"
					href="#menu1">已迁入</a></li>
				<li><a id="checkYN" data-toggle="tab" href="#menu2">待审核</a></li>
				<li><a id="checkN" data-toggle="tab" href="#menu3">审核失败</a></li>
				<li><a id="checkYR" data-toggle="tab" href="#menu4">已迁出</a></li>
			</ul>
			<br>
			<div class="tab-content">
				<div id="menu1" class="tab-pane fade in active">
				<table id="example1"
					class="table table-border table-bordered table-hover table-bg table-sort">
					<thead>
						<tr class="text-c">
							<th width="25"><input type="checkbox" id="employeeCheckAll"
								name="employeeCheckAll"></th>
							<th>编号</th>
							<th>姓名</th>
							<th>身份证</th>
							<th>所属单位</th>
							<th>手机号码</th>
							<th>邮箱</th>
							<th>入住时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
				</div>
				<div id="menu2" class="tab-pane fade">
				<table id="example2"
					class="table table-border table-bordered table-hover table-bg table-sort">
					<thead>
						<tr class="text-c">
							<th width="25"><input type="checkbox" id="employeeCheckAll"
								name="employeeCheckAll"></th>
							<th>编号</th>
							<th>姓名</th>
							<th>身份证</th>
							<th>所属单位</th>
							<th>手机号码</th>
							<th>邮箱</th>
							<th>入住时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
				</div>
				<div id="menu3" class="tab-pane fade">
				<table id="example3"
					class="table table-border table-bordered table-hover table-bg table-sort">
					<thead>
						<tr class="text-c">
							<th width="25"><input type="checkbox" id="employeeCheckAll"
								name="employeeCheckAll"></th>
							<th>编号</th>
							<th>姓名</th>
							<th>身份证</th>
							<th>所属单位</th>
							<th>手机号码</th>
							<th>邮箱</th>
							<th>入住时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
				</div>
				<div id="menu4" class="tab-pane fade">
				<table id="example4"
					class="table table-border table-bordered table-hover table-bg table-sort">
					<thead>
						<tr class="text-c">
							<th width="25"><input type="checkbox" id="employeeCheckAll"
								name="employeeCheckAll"></th>
							<th>编号</th>
							<th>姓名</th>
							<th>身份证</th>
							<th>所属单位</th>
							<th>手机号码</th>
							<th>邮箱</th>
							<th>入住时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
			</div>
		</article>
	</div>
<!--_footer 作为公共模版分离出去-->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/bootstrap-dropdownhover.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/incrementing.js"></script>
	<!-- Plugin JavaScript -->
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.easing.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/wow.min.js"></script>
	<!-- owl carousel -->
	<script
		src="${pageContext.request.contextPath}/assets/owl-carousel/owl.carousel.js"></script>
	<!--  Custom Theme JavaScript  -->
	<script src="${pageContext.request.contextPath}/assets/js/custom.js"></script>
	<!--  jcarousel Theme JavaScript  -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/jquery.jcarousel.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/jcarousel.connected-carousels.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/jquery.elevatezoom.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/static/h-ui.admin/js/H-ui.admin.page.js"></script>
<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/laypage/1.2/laypage.js"></script>
	<script type="text/javascript">
		$(function() {
			/*单击数据行 被选中，再次单击取消选中*/
			$('.table-sort tbody').on('click', 'tr', function() {
				if ($(this).hasClass('selected')) {
					$(this).removeClass('selected');
				} else {
					table.$('tr.selected').removeClass('selected');
					$(this).addClass('selected');
				}
			});
		});
		/*用户-添加*/
		function member_add(title, url, w, h) {
			layer_show(title, url, w, h);
		}
		/*用户-查看*/
		function member_show(title, url, id, w, h) {
			layer_show(title, url, w, h);
		}
		/*用户-停用*/
		function member_stop(obj, id) {
			layer
					.confirm(
							'确认要停用吗？',
							function(index) {
								$(obj)
										.parents("tr")
										.find(".td-manage")
										.prepend(
												'<a style="text-decoration:none" onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="Hui-iconfont">&#xe6e1;</i></a>');
								$(obj)
										.parents("tr")
										.find(".td-status")
										.html(
												'<span class="label label-defaunt radius">已停用</span>');
								$(obj).remove();
								layer.msg('已停用!', {
									icon : 5,
									time : 1000
								});
							});
		}

		/*用户-启用*/
		function member_start(obj, id) {
			layer
					.confirm(
							'确认要启用吗？',
							function(index) {
								$(obj)
										.parents("tr")
										.find(".td-manage")
										.prepend(
												'<a style="text-decoration:none" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a>');
								$(obj)
										.parents("tr")
										.find(".td-status")
										.html(
												'<span class="label label-success radius">已启用</span>');
								$(obj).remove();
								layer.msg('已启用!', {
									icon : 6,
									time : 1000
								});
							});
		}
		/*用户-编辑*/
		function member_edit(title, url, id, w, h) {
			layer_show(title, url, w, h);
		}
		/*密码-修改*/
		function change_password(title, url, id, w, h) {
			//layer_show(title,url,w,h);	

			layer.open({
				type : 2,
				area : [ '600px', '270px' ],
				fix : false, //不固定
				maxmin : true,
				shade : 0.4,
				title : title,
				content : url,
				success : function(layero, index) {
					var body = layer.getChildFrame('body', index);//建立父子联系
					var iframeWin = window[layero.find('iframe')[0]['name']];
					// console.log(arr); //得到iframe页的body内容
					// console.log(body.find('input'));
					var inputList = body.find('input');
					for (var j = 0; j < inputList.length; j++) {
						$(inputList[j]).val(arr[j]);
					}
				}
			});
		}
		/*用户-删除*/
		function member_del(obj) {
			layer
			.prompt(
					{
						title : '请输入删除口令，并确认',
						formType : 1
					},
					function(pass, index) {
						layer.close(index);
						if (pass == "admin") {
							layer.msg('删除成功');
							//页面跳转，跳转到servlet
							$.ajax({
								url : "${pageContext.request.contextPath}/TenementBeanServlet?op=deleteTenement",//url地址
								type : "post",
								data : {
									"tenementId" : $(obj).parents("tr").find("td").eq(1).text()
								},
								//成功后执行的操作
								success : function(data) {
									//判断用户名密码是否正确，正确的话则跳到前台首页
									if (data == "false") {
										alert("失败");
									} else {
										layer
										.msg(
												'删除成功!',
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

												});
									}
								}
							});
						} else {
							layer.msg('密码错误，删除失败');
						}

					});
		}
	</script>

	<script>
		$(function() {
			//修改密码的超链接单击事件
			$(document).on(
					"click",
					'.changepwd',
					function() {
						var _this = $(this);
						data = _this.parent().siblings();
						var arr = [];
						for (var i = 1; i < data.length; i++) {
							// console.log($(data[i]).text());
							arr.push($(data[i]).text());//拿到点击按钮的当前那条信息的内容 放到一个数组里
						}
						console.log(arr);
						//change-em-password.html

						layer
								.open({
									type : 2,
									area : [ '600px', '270px' ],
									fix : false, //不固定
									maxmin : true,
									shade : 0.4,
									title : '修改密码',
									content : 'change-emp-password.html',
									success : function(layero, index) {
										var body = layer.getChildFrame('body',
												index);//建立父子联系
										var iframeWin = window[layero
												.find('iframe')[0]['name']];

										var _ename = body.find('#ename');
										console.log(_ename + "," + arr[1]);
										$(_ename).html(arr[1]);

									}
								});

					});

			//修改员工信息的超链接单击事件
			$(document).on(
					"click",
					'.empedit',
					function() {
						var _this = $(this); //当前对象 编辑的超链接
						data = _this.parent().siblings(); //_this.parent() 得到td   siblings(); 当前行的其他td
						var arr = [];
						for (var i = 1; i < data.length; i++) { //1 从1开始 从姓名开始
							arr.push($(data[i]).text());//每一个td中的内容() 放到一个数组里
						}
						// console.log(arr);
						//change-password.html

						//打开新窗口 编辑窗口
						layer.open({
									type : 2,
									area : [ '710px', '510px' ], //窗口大小
									fix : false, //不固定
									maxmin : true,
									shade : 0.4,
									title : '编辑员工信息', //显示的标题
									content : 'admin-list-check-update.jsp', //很多种写法 其中之一直接写目标窗口(要弹出来窗口)
									success : function(layero, index) { //success可以不写
										var body = layer.getChildFrame('body',
												index);//建立父子联系
										var iframeWin = window[layero
												.find('iframe')[0]['name']];

										var inputList = body.find('input'); //找所有的input
										for (var j = 0; j < arr.length; j++) {
											$(inputList[j]).val(arr[j]); //arr[j] 数组中的值 赋值给  $(inputList[j])
										}
									}
								});

					});

		});
	</script>
	<script
		src="${pageContext.request.contextPath}/plugin/datatables/jquery.dataTables.min.js"></script>
	<script>
		var employee1 = {};

		employee1.property = {
			version : "v1.0",
			name : "employee1",
			tableId : "example1",//显示数据的容器表格的id
			checkAllId : "employeeCheckAll",
			buttonId : "employeeButtonId",
			formId : "employeeForm",
			corporateFormId : "employeeForm",
			returnStatus : "SUCCESS",
			returnTitle : "操作成功",
			statusTitle : "请选择一条数据！",
			idFailure : "获取id失败",
			prompt : "提示",
			pleaseConfirm : "请确认！",
			wantToDelete : "您确定要删除吗?",
			sexMan : "男",
			sexWoman : "女",
			isTest : "是",
			noTest : "否",
			banned : "禁用",
			enable : "启用"
		};

		//初始化配置
		employee1.gridInit = {
			searching : true,
			lengthChange : true,
			paging : true,
			scrollCollapse : true,
			serverSide : false,
			search : true,
			processing : true,
			scrollY : 500,
			scrollX : "100%",
			scrollXInner : "100%",
			scrollCollapse : true,
			jQueryUI : false,
			autoWidth : true,
			autoSearch : false
		};

		//路径配置,此处配置的路径是获取数据的重要手段;
		employee1.url = "/"; //  这里 / 表示的是localhost/
		employee1.requestUrl = {
			queryList : employee1.url
					+ "CMSys/TenementBeanServlet?op=queryIsY" //数据是从servlet一侧返回的 json格式
		};

		employee1.search = {
			uuid : ""
		};

		employee1.status = [ {
			"searchable" : false,
			"orderable" : false,
			"targets" : 0
		},//第一行不进行排序和搜索
		//        {"targets": [12], "visible": false},    //设置第13列隐藏/显示
		//        {"width": "10%", "targets": [1]},  //设置第2列宽度
		//        {
		//            对第7列内容进行替换处理
		//            targets: 6,
		//            render: function (data, type, row, meta) {
		//                if (data == "1") {
		//                    return employee.table.sexMan;
		//                }
		//                if (data == "0") {
		//                    return employee.table.sexWoman;
		//                }
		//            }
		//        },
		{
			defaultContent : '',
			targets : [ '_all' ]
		} //所有列设置默认值为空字符串
		];
		//对应的返回数据格式

		employee1.filed = [
				{ //第一个列
					"data" : "extn",
					"createdCell" : function(nTd, sData, oData, iRow, iCol) {
						$(nTd)
								.html(
										"<input type='checkbox' name='checkList' value='" + sData + "'>");
					}
				}, //这里是返回的json对象中的 属性值   {data : }
				{
					"data" : "tenementId"
				},
				{
					"data" : "tenementName"
				},
				{
					"data" : "idCard"
				},
				{
					"data" : "aunit"
				},
				{
					"data" : "mobilePhone"
				},
				{
					"data" : "email"
				},
				{
					"data" : "areStay"
				},
				{ //创建操作那个列
					"data" : "extn",
					"createdCell" : function(nTd) {
						//表格最后一个列增加很多超链接 启用禁用。 编辑   删除 修改密码
						$(nTd)
								.html(
										'<a style="text-decoration:none" onClick="member_stop(this,\'10001\')" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a> <a title="编辑" href="javascript:;" class="empedit ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> <a style="text-decoration:none" class="changepwd ml-5"  href="javascript:;" title="修改密码"><i class="Hui-iconfont">&#xe63f;</i></a> <a title="删除" href="javascript:;" onclick="member_del(this)" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>');
						//$(nTd).html('<a onClick="member_stop(this,\'10001\')">xx<a>');
						//$(nTd).html('<a style="text-decoration:none" onClick="member_stop(this,\'10001\')" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a> <a title="编辑" href="javascript:;" onclick="member_edit(\'编辑\',\'member-add.html\',\'4\',\'\',\'510\')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> <a style="text-decoration:none" class="ml-5" onClick="change_password(\'修改密码\',\'change-password.html\',\'10001\',\'600\',\'270\')" href="javascript:;" title="修改密码"><i class="Hui-iconfont">&#xe63f;</i></a> <a title="删除" href="javascript:;" onclick="member_del(this,\'1\')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>');
						//$(nTd).html("<td class='td-manage'><a style='text-decoration:none' onClick='member_stop(this,'10001')' href='javascript:;' title='停用'><i class='Hui-iconfont'>&#xe631;</i></a> <a title='编辑' href='javascript:;' onclick='member_edit('编辑','member-add.html','4','','510')' class='ml-5' style='text-decoration:none'><i class='Hui-iconfont'>&#xe6df;</i></a> <a style='text-decoration:none' class='ml-5' onClick='change_password('修改密码','change-password.html','10001','600','270')' href='javascript:;' title='修改密码'><i class='Hui-iconfont'>&#xe63f;</i></a> <a title='删除' href='javascript:;' onclick='member_del(this,'1')' class='ml-5' style='text-decoration:none'><i class='Hui-iconfont'>&#xe6e2;</i></a></td>");
					}
				} ];

	</script>
	<script>
		var eloancn = {};

		eloancn.table = {
			grid : "",
			statusTitle : "请选择一条数据！"
		};

		//dataTables方法封装
		function dataTablesInit(elo) {

			eloancn.table.grid = $('#' + elo.property.tableId)
					.DataTable(
							{
								ajax : {
									url : elo.requestUrl.queryList,//请求后台路径
									type : 'get', //ajax的get	请求获取数据
									data : elo.search,
									dataType : 'json',//获取数据格式为json
									error : function(jqXHR, textStatus,
											errorMsg) {
										alert("请求失败" + errorMsg);
									}

								},
								"searching" : elo.gridInit.searching,//搜索框，默认是开启
								"lengthChange" : elo.gridInit.lengthChange,//是否允许用户改变表格每页显示的记录数，默认是开启
								"paging" : elo.gridInit.paging,//是否开启本地分页，默认是开启
								"processing" : elo.gridInit.processing,//是否显示中文提示
								"scrollCollapse" : elo.gridInit.scrollCollapse, //是否开启DataTables的高度自适应，当数据条数不够分页数据条数的时候，插件高度是否随数据条数而改变
								"serverSide" : elo.gridInit.serverSide, //开启服务器模式，默认是关闭
								"scrollY" : elo.gridInit.scrollY,//设置高
								"scrollX" : elo.gridInit.scrollX,//设置宽度
								"scrollXInner" : elo.gridInit.scrollXInner,//设置内宽度
								"scrollCollapse" : elo.gridInit.scrollCollapse,//设置折叠
								"jQueryUI" : elo.gridInit.jQueryUI,//jquery 风格
								"autoWidth" : elo.gridInit.autoWidth, //是否自适应宽度
								"columns" : elo.filed,//字段
								"columnDefs" : elo.status,//列表状态
								"language" : {
									"sProcessing" : "处理中...",
									"sLengthMenu" : "显示 _MENU_ 项结果",
									"sZeroRecords" : "没有匹配结果",
									"sInfo" : "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
									"sInfoEmpty" : "显示第 0 至 0 项结果，共 0 项",
									"sInfoFiltered" : "(由 _MAX_ 项结果过滤)",
									"sInfoPostFix" : "",
									"sSearch" : "搜索:",
									"sUrl" : "",
									"sEmptyTable" : "未搜索到数据",
									"sLoadingRecords" : "载入中...",
									"sInfoThousands" : ",",
									"oPaginate" : {
										"sFirst" : "首页",
										"sPrevious" : "上页",
										"sNext" : "下页",
										"sLast" : "末页"
									},
									"oAria" : {
										"sSortAscending" : ": 以升序排列此列",
										"sSortDescending" : ": 以降序排列此列"
									}
								},
								"dom" : "<'row'<'col-sm-2'l><'#"+elo.property.buttonId+".col-sm-10'><'col-sm-6'f>r>t<'row'<'col-sm-6'i><'col-sm-6'p>>",
								"initComplete" : function() {
									$("#" + elo.property.buttonId).append(
											elo.buttons);
									if (elo.gridInit.search) {
										$search = $("input[type='search']");
										//隐藏默认的搜索框
										$search.parent().hide();
									}
									//加载完成之后 初始化checkbox
									checkbox(elo.property.tableId);

									$("#reload").click(function() {
										reload();
									});

									$("#batchIds").click(function() {
										batchIds();
									});

									$("#selection").click(function() {
										selection();
									});
									$("#search").click(function() {
										search();
									});
									$("#clearSearch").click(function() {
										clearSearch("form-controlSearch");
									});

									//checkbox全选

									$("#" + elo.property.checkAllId)
											.click(
													function() {
														if ($(this).prop(
																"checked")) {
															$(
																	"input[name='checkList']")
																	.prop(
																			"checked",
																			true);
															$("tr").addClass(
																	'selected');
														} else {
															$(
																	"input[name='checkList']")
																	.prop(
																			"checked",
																			false);
															$("tr")
																	.removeClass(
																			'selected');
														}
													});

									//得到总记录数，显示在表格的右上角位置
									$("#datarowcount")
											.text(
													$(
															'#'
																	+ elo.property.tableId)
															.DataTable().page
															.info().recordsTotal);

								}
							});

			//错误信息提示
			$.fn.dataTable.ext.errMode = function(s, h, m) {
				if (h == 1) {
					alert("连接服务器失败！");
				} else if (h == 7) {
					alert("返回数据错误！");
				}
			};

			//回调，如果返回的时候有问题提示信息
			eloancn.table.grid.on('xhr.dt', function(e, settings, json, xhr) {
				console.log("重新加载了数据");
				if (typeof (json.code) != "undefined" && json.code != "0") {
					alert(json.message);
				}
			});

			//鼠标经过高亮
			var lastIdx = null;
			eloancn.table.grid
					.on('mouseover', 'td',
							function() {

								if (typeof (eloancn.table.grid.cell(this)
										.index()) != "undefined") {
									var colIdx = eloancn.table.grid.cell(this)
											.index().column;
									if (colIdx !== lastIdx) {
										$(eloancn.table.grid.cells().nodes())
												.removeClass('highlight');
										$(
												eloancn.table.grid.column(
														colIdx).nodes())
												.addClass('highlight');
									}
								}
							});

			eloancn.table.grid.on('mouseleave', function() {
				$(eloancn.table.grid.cells().nodes()).removeClass('highlight');
			});

			//自动搜索方法
			$('.form-controlSearch').on('keyup change', function() {
				elo.gridInit.autoSearch = $("#autoSearch").prop("checked");
				if (elo.gridInit.autoSearch) {
					filterColumn($(this).attr('data-column'));
				}
			});
		}

		//选中一行 checkbox选中
		function checkbox(tableId) {
			//每次加载时都先清理
			$('#' + tableId + ' tbody').off("click", "tr");
			$('#' + tableId + ' tbody').on("click", "tr", function() {
				$(this).toggleClass('selected');
				if ($(this).hasClass("selected")) {
					$(this).find("input").prop("checked", true);
				} else {
					$(this).find("input").prop("checked", false);
				}
			});

		}

		//按钮搜索方法
		function search() {

			var oSettings = "";
			$("[data-column]").each(
					function() {
						var filedValue = $(this).attr('data-column');
						if (filedValue != "") {
							console.log($('#col' + filedValue + '_filter')
									.val());
							oSettings = eloancn.table.grid.column(filedValue)
									.search(
											$('#col' + filedValue + '_filter')
													.val());
						}
					});
			//搜索的数据一次条件，节省资源
			eloancn.table.grid.draw(oSettings);
		}

		//搜索
		function filterColumn(i) {

			eloancn.table.grid.column(i)
					.search($('#col' + i + '_filter').val()).draw();
		}

		//清理搜索数据
		function clearSearch(id) {

			$("." + id).each(function() {
				$(this).val("");
			});
			//清空查询条件重新读取数据
			eloancn.table.grid.columns().search("").draw();
		}

		//获取所有选中行的UUID
		function batchIds() {

			var uuid = '';
			var uuids = eloancn.table.grid.rows(".selected").data();
			if (uuids.length == 0) {
				alert(eloancn.table.statusTitle);
			} else {
				for (var i = 0; i < uuids.length; i++) {
					uuid = uuid + uuids[i].extn + ",";
				}
				alert(uuid);
			}
		}

		//单选
		function selection() {

			if (eloancn.table.grid.rows(".selected").data().length == 1) {
				var uuid = eloancn.table.grid.row(".selected").data().extn;

				if (uuid == "") {
					alert(eloancn.table.statusTitle);
				} else {
					alert(uuid);
				}

			} else {
				alert(eloancn.table.statusTitle);
			}
		}

		//刷新页面
		//重新加载数据
		function reload() {
			eloancn.table.grid.ajax.reload();
		}

		//销毁table
		function destroyDataTable(tableId) {

			var dttable = $('#' + tableId).DataTable();
			dttable.destroy();
		}
	</script>
	
	<script>
		var employee2 = {};

		employee2.property = {
			version : "v1.0",
			name : "employee2",
			tableId : "example2",//显示数据的容器表格的id
			checkAllId : "employeeCheckAll",
			buttonId : "employeeButtonId",
			formId : "employeeForm",
			corporateFormId : "employeeForm",
			returnStatus : "SUCCESS",
			returnTitle : "操作成功",
			statusTitle : "请选择一条数据！",
			idFailure : "获取id失败",
			prompt : "提示",
			pleaseConfirm : "请确认！",
			wantToDelete : "您确定要删除吗?",
			sexMan : "男",
			sexWoman : "女",
			isTest : "是",
			noTest : "否",
			banned : "禁用",
			enable : "启用"
		};

		//初始化配置
		employee2.gridInit = {
			searching : true,
			lengthChange : true,
			paging : true,
			scrollCollapse : true,
			serverSide : false,
			search : true,
			processing : true,
			scrollY : 500,
			scrollX : "100%",
			scrollXInner : "100%",
			scrollCollapse : true,
			jQueryUI : false,
			autoWidth : true,
			autoSearch : false
		};

		//路径配置,此处配置的路径是获取数据的重要手段;
		employee2.url = "/"; //  这里 / 表示的是localhost/
		employee2.requestUrl = {
			queryList : employee2.url
					+ "CMSys/TenementBeanServlet?op=queryIsYN" //数据是从servlet一侧返回的 json格式
		};

		employee2.search = {
			uuid : ""
		};

		employee2.status = [ {
			"searchable" : false,
			"orderable" : false,
			"targets" : 0
		},//第一行不进行排序和搜索
		//        {"targets": [12], "visible": false},    //设置第13列隐藏/显示
		//        {"width": "10%", "targets": [1]},  //设置第2列宽度
		//        {
		//            对第7列内容进行替换处理
		//            targets: 6,
		//            render: function (data, type, row, meta) {
		//                if (data == "1") {
		//                    return employee.table.sexMan;
		//                }
		//                if (data == "0") {
		//                    return employee.table.sexWoman;
		//                }
		//            }
		//        },
		{
			defaultContent : '',
			targets : [ '_all' ]
		} //所有列设置默认值为空字符串
		];
		//对应的返回数据格式

		employee2.filed = [
				{ //第一个列
					"data" : "extn",
					"createdCell" : function(nTd, sData, oData, iRow, iCol) {
						$(nTd)
								.html(
										"<input type='checkbox' name='checkList' value='" + sData + "'>");
					}
				}, //这里是返回的json对象中的 属性值   {data : }
				{
					"data" : "tenementId"
				},
				{
					"data" : "tenementName"
				},
				{
					"data" : "idCard"
				},
				{
					"data" : "aunit"
				},
				{
					"data" : "mobilePhone"
				},
				{
					"data" : "email"
				},
				{
					"data" : "areStay"
				},
				{ //创建操作那个列
					"data" : "extn",
					"createdCell" : function(nTd) {
						//表格最后一个列增加很多超链接 启用禁用。 编辑   删除 修改密码
						$(nTd)
								.html(
										'<a style="text-decoration:none" onClick="member_stop(this,\'10001\')" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a> <a title="编辑" href="javascript:;" class="empedit ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> <a style="text-decoration:none" class="changepwd ml-5"  href="javascript:;" title="修改密码"><i class="Hui-iconfont">&#xe63f;</i></a> <a title="删除" href="javascript:;" onclick="member_del(this)" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>');
						//$(nTd).html('<a onClick="member_stop(this,\'10001\')">xx<a>');
						//$(nTd).html('<a style="text-decoration:none" onClick="member_stop(this,\'10001\')" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a> <a title="编辑" href="javascript:;" onclick="member_edit(\'编辑\',\'member-add.html\',\'4\',\'\',\'510\')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> <a style="text-decoration:none" class="ml-5" onClick="change_password(\'修改密码\',\'change-password.html\',\'10001\',\'600\',\'270\')" href="javascript:;" title="修改密码"><i class="Hui-iconfont">&#xe63f;</i></a> <a title="删除" href="javascript:;" onclick="member_del(this,\'1\')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>');
						//$(nTd).html("<td class='td-manage'><a style='text-decoration:none' onClick='member_stop(this,'10001')' href='javascript:;' title='停用'><i class='Hui-iconfont'>&#xe631;</i></a> <a title='编辑' href='javascript:;' onclick='member_edit('编辑','member-add.html','4','','510')' class='ml-5' style='text-decoration:none'><i class='Hui-iconfont'>&#xe6df;</i></a> <a style='text-decoration:none' class='ml-5' onClick='change_password('修改密码','change-password.html','10001','600','270')' href='javascript:;' title='修改密码'><i class='Hui-iconfont'>&#xe63f;</i></a> <a title='删除' href='javascript:;' onclick='member_del(this,'1')' class='ml-5' style='text-decoration:none'><i class='Hui-iconfont'>&#xe6e2;</i></a></td>");
					}
				} ];


	</script>
	<script>
		var eloancn = {};

		eloancn.table = {
			grid : "",
			statusTitle : "请选择一条数据！"
		};

		//dataTables方法封装
		function dataTablesInit(elo) {

			eloancn.table.grid = $('#' + elo.property.tableId)
					.DataTable(
							{
								ajax : {
									url : elo.requestUrl.queryList,//请求后台路径
									type : 'get', //ajax的get	请求获取数据
									data : elo.search,
									dataType : 'json',//获取数据格式为json
									error : function(jqXHR, textStatus,
											errorMsg) {
										alert("请求失败" + errorMsg);
									}

								},
								"searching" : elo.gridInit.searching,//搜索框，默认是开启
								"lengthChange" : elo.gridInit.lengthChange,//是否允许用户改变表格每页显示的记录数，默认是开启
								"paging" : elo.gridInit.paging,//是否开启本地分页，默认是开启
								"processing" : elo.gridInit.processing,//是否显示中文提示
								"scrollCollapse" : elo.gridInit.scrollCollapse, //是否开启DataTables的高度自适应，当数据条数不够分页数据条数的时候，插件高度是否随数据条数而改变
								"serverSide" : elo.gridInit.serverSide, //开启服务器模式，默认是关闭
								"scrollY" : elo.gridInit.scrollY,//设置高
								"scrollX" : elo.gridInit.scrollX,//设置宽度
								"scrollXInner" : elo.gridInit.scrollXInner,//设置内宽度
								"scrollCollapse" : elo.gridInit.scrollCollapse,//设置折叠
								"jQueryUI" : elo.gridInit.jQueryUI,//jquery 风格
								"autoWidth" : elo.gridInit.autoWidth, //是否自适应宽度
								"columns" : elo.filed,//字段
								"columnDefs" : elo.status,//列表状态
								"language" : {
									"sProcessing" : "处理中...",
									"sLengthMenu" : "显示 _MENU_ 项结果",
									"sZeroRecords" : "没有匹配结果",
									"sInfo" : "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
									"sInfoEmpty" : "显示第 0 至 0 项结果，共 0 项",
									"sInfoFiltered" : "(由 _MAX_ 项结果过滤)",
									"sInfoPostFix" : "",
									"sSearch" : "搜索:",
									"sUrl" : "",
									"sEmptyTable" : "未搜索到数据",
									"sLoadingRecords" : "载入中...",
									"sInfoThousands" : ",",
									"oPaginate" : {
										"sFirst" : "首页",
										"sPrevious" : "上页",
										"sNext" : "下页",
										"sLast" : "末页"
									},
									"oAria" : {
										"sSortAscending" : ": 以升序排列此列",
										"sSortDescending" : ": 以降序排列此列"
									}
								},
								"dom" : "<'row'<'col-sm-2'l><'#"+elo.property.buttonId+".col-sm-10'><'col-sm-6'f>r>t<'row'<'col-sm-6'i><'col-sm-6'p>>",
								"initComplete" : function() {
									$("#" + elo.property.buttonId).append(
											elo.buttons);
									if (elo.gridInit.search) {
										$search = $("input[type='search']");
										//隐藏默认的搜索框
										$search.parent().hide();
									}
									//加载完成之后 初始化checkbox
									checkbox(elo.property.tableId);

									$("#reload").click(function() {
										reload();
									});

									$("#batchIds").click(function() {
										batchIds();
									});

									$("#selection").click(function() {
										selection();
									});
									$("#search").click(function() {
										search();
									});
									$("#clearSearch").click(function() {
										clearSearch("form-controlSearch");
									});

									//checkbox全选

									$("#" + elo.property.checkAllId)
											.click(
													function() {
														if ($(this).prop(
																"checked")) {
															$(
																	"input[name='checkList']")
																	.prop(
																			"checked",
																			true);
															$("tr").addClass(
																	'selected');
														} else {
															$(
																	"input[name='checkList']")
																	.prop(
																			"checked",
																			false);
															$("tr")
																	.removeClass(
																			'selected');
														}
													});

									//得到总记录数，显示在表格的右上角位置
									$("#datarowcount")
											.text(
													$(
															'#'
																	+ elo.property.tableId)
															.DataTable().page
															.info().recordsTotal);

								}
							});

			//错误信息提示
			$.fn.dataTable.ext.errMode = function(s, h, m) {
				if (h == 1) {
					alert("连接服务器失败！");
				} else if (h == 7) {
					alert("返回数据错误！");
				}
			};

			//回调，如果返回的时候有问题提示信息
			eloancn.table.grid.on('xhr.dt', function(e, settings, json, xhr) {
				console.log("重新加载了数据");
				if (typeof (json.code) != "undefined" && json.code != "0") {
					alert(json.message);
				}
			});

			//鼠标经过高亮
			var lastIdx = null;
			eloancn.table.grid
					.on('mouseover', 'td',
							function() {

								if (typeof (eloancn.table.grid.cell(this)
										.index()) != "undefined") {
									var colIdx = eloancn.table.grid.cell(this)
											.index().column;
									if (colIdx !== lastIdx) {
										$(eloancn.table.grid.cells().nodes())
												.removeClass('highlight');
										$(
												eloancn.table.grid.column(
														colIdx).nodes())
												.addClass('highlight');
									}
								}
							});

			eloancn.table.grid.on('mouseleave', function() {
				$(eloancn.table.grid.cells().nodes()).removeClass('highlight');
			});

			//自动搜索方法
			$('.form-controlSearch').on('keyup change', function() {
				elo.gridInit.autoSearch = $("#autoSearch").prop("checked");
				if (elo.gridInit.autoSearch) {
					filterColumn($(this).attr('data-column'));
				}
			});
		}

		//选中一行 checkbox选中
		function checkbox(tableId) {
			//每次加载时都先清理
			$('#' + tableId + ' tbody').off("click", "tr");
			$('#' + tableId + ' tbody').on("click", "tr", function() {
				$(this).toggleClass('selected');
				if ($(this).hasClass("selected")) {
					$(this).find("input").prop("checked", true);
				} else {
					$(this).find("input").prop("checked", false);
				}
			});

		}

		//按钮搜索方法
		function search() {

			var oSettings = "";
			$("[data-column]").each(
					function() {
						var filedValue = $(this).attr('data-column');
						if (filedValue != "") {
							console.log($('#col' + filedValue + '_filter')
									.val());
							oSettings = eloancn.table.grid.column(filedValue)
									.search(
											$('#col' + filedValue + '_filter')
													.val());
						}
					});
			//搜索的数据一次条件，节省资源
			eloancn.table.grid.draw(oSettings);
		}

		//搜索
		function filterColumn(i) {

			eloancn.table.grid.column(i)
					.search($('#col' + i + '_filter').val()).draw();
		}

		//清理搜索数据
		function clearSearch(id) {

			$("." + id).each(function() {
				$(this).val("");
			});
			//清空查询条件重新读取数据
			eloancn.table.grid.columns().search("").draw();
		}

		//获取所有选中行的UUID
		function batchIds() {

			var uuid = '';
			var uuids = eloancn.table.grid.rows(".selected").data();
			if (uuids.length == 0) {
				alert(eloancn.table.statusTitle);
			} else {
				for (var i = 0; i < uuids.length; i++) {
					uuid = uuid + uuids[i].extn + ",";
				}
				alert(uuid);
			}
		}

		//单选
		function selection() {

			if (eloancn.table.grid.rows(".selected").data().length == 1) {
				var uuid = eloancn.table.grid.row(".selected").data().extn;

				if (uuid == "") {
					alert(eloancn.table.statusTitle);
				} else {
					alert(uuid);
				}

			} else {
				alert(eloancn.table.statusTitle);
			}
		}

		//刷新页面
		//重新加载数据
		function reload() {
			eloancn.table.grid.ajax.reload();
		}

		//销毁table
		function destroyDataTable(tableId) {

			var dttable = $('#' + tableId).DataTable();
			dttable.destroy();
		}
	</script>
	
	<script>
		var employee3 = {};

		employee3.property = {
			version : "v1.0",
			name : "employee3",
			tableId : "example3",//显示数据的容器表格的id
			checkAllId : "employeeCheckAll",
			buttonId : "employeeButtonId",
			formId : "employeeForm",
			corporateFormId : "employeeForm",
			returnStatus : "SUCCESS",
			returnTitle : "操作成功",
			statusTitle : "请选择一条数据！",
			idFailure : "获取id失败",
			prompt : "提示",
			pleaseConfirm : "请确认！",
			wantToDelete : "您确定要删除吗?",
			sexMan : "男",
			sexWoman : "女",
			isTest : "是",
			noTest : "否",
			banned : "禁用",
			enable : "启用"
		};

		//初始化配置
		employee3.gridInit = {
			searching : true,
			lengthChange : true,
			paging : true,
			scrollCollapse : true,
			serverSide : false,
			search : true,
			processing : true,
			scrollY : 500,
			scrollX : "100%",
			scrollXInner : "100%",
			scrollCollapse : true,
			jQueryUI : false,
			autoWidth : true,
			autoSearch : false
		};

		//路径配置,此处配置的路径是获取数据的重要手段;
		employee3.url = "/"; //  这里 / 表示的是localhost/
		employee3.requestUrl = {
			queryList : employee3.url
					+ "CMSys/TenementBeanServlet?op=queryIsN" //数据是从servlet一侧返回的 json格式
		};

		employee3.search = {
			uuid : ""
		};

		employee3.status = [ {
			"searchable" : false,
			"orderable" : false,
			"targets" : 0
		},//第一行不进行排序和搜索
		//        {"targets": [12], "visible": false},    //设置第13列隐藏/显示
		//        {"width": "10%", "targets": [1]},  //设置第2列宽度
		//        {
		//            对第7列内容进行替换处理
		//            targets: 6,
		//            render: function (data, type, row, meta) {
		//                if (data == "1") {
		//                    return employee.table.sexMan;
		//                }
		//                if (data == "0") {
		//                    return employee.table.sexWoman;
		//                }
		//            }
		//        },
		{
			defaultContent : '',
			targets : [ '_all' ]
		} //所有列设置默认值为空字符串
		];
		//对应的返回数据格式

		employee3.filed = [
				{ //第一个列
					"data" : "extn",
					"createdCell" : function(nTd, sData, oData, iRow, iCol) {
						$(nTd)
								.html(
										"<input type='checkbox' name='checkList' value='" + sData + "'>");
					}
				}, //这里是返回的json对象中的 属性值   {data : }
				{
					"data" : "tenementId"
				},
				{
					"data" : "tenementName"
				},
				{
					"data" : "idCard"
				},
				{
					"data" : "aunit"
				},
				{
					"data" : "phone"
				},
				{
					"data" : "mobilePhone"
				},
				{
					"data" : "email"
				},
				{
					"data" : "areStay"
				},
				{ //创建操作那个列
					"data" : "extn",
					"createdCell" : function(nTd) {
						//表格最后一个列增加很多超链接 启用禁用。 编辑   删除 修改密码
						$(nTd)
								.html(
										'<a style="text-decoration:none" onClick="member_stop(this,\'10001\')" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a> <a title="编辑" href="javascript:;" class="empedit ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> <a style="text-decoration:none" class="changepwd ml-5"  href="javascript:;" title="修改密码"><i class="Hui-iconfont">&#xe63f;</i></a> <a title="删除" href="javascript:;" onclick="member_del(this)" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>');
						//$(nTd).html('<a onClick="member_stop(this,\'10001\')">xx<a>');
						//$(nTd).html('<a style="text-decoration:none" onClick="member_stop(this,\'10001\')" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a> <a title="编辑" href="javascript:;" onclick="member_edit(\'编辑\',\'member-add.html\',\'4\',\'\',\'510\')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> <a style="text-decoration:none" class="ml-5" onClick="change_password(\'修改密码\',\'change-password.html\',\'10001\',\'600\',\'270\')" href="javascript:;" title="修改密码"><i class="Hui-iconfont">&#xe63f;</i></a> <a title="删除" href="javascript:;" onclick="member_del(this,\'1\')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>');
						//$(nTd).html("<td class='td-manage'><a style='text-decoration:none' onClick='member_stop(this,'10001')' href='javascript:;' title='停用'><i class='Hui-iconfont'>&#xe631;</i></a> <a title='编辑' href='javascript:;' onclick='member_edit('编辑','member-add.html','4','','510')' class='ml-5' style='text-decoration:none'><i class='Hui-iconfont'>&#xe6df;</i></a> <a style='text-decoration:none' class='ml-5' onClick='change_password('修改密码','change-password.html','10001','600','270')' href='javascript:;' title='修改密码'><i class='Hui-iconfont'>&#xe63f;</i></a> <a title='删除' href='javascript:;' onclick='member_del(this,'1')' class='ml-5' style='text-decoration:none'><i class='Hui-iconfont'>&#xe6e2;</i></a></td>");
					}
				} ];

		
	</script>
	<script>
		var eloancn = {};

		eloancn.table = {
			grid : "",
			statusTitle : "请选择一条数据！"
		};

		//dataTables方法封装
		function dataTablesInit(elo) {

			eloancn.table.grid = $('#' + elo.property.tableId)
					.DataTable(
							{
								ajax : {
									url : elo.requestUrl.queryList,//请求后台路径
									type : 'get', //ajax的get	请求获取数据
									data : elo.search,
									dataType : 'json',//获取数据格式为json
									error : function(jqXHR, textStatus,
											errorMsg) {
										alert("请求失败" + errorMsg);
									}

								},
								"searching" : elo.gridInit.searching,//搜索框，默认是开启
								"lengthChange" : elo.gridInit.lengthChange,//是否允许用户改变表格每页显示的记录数，默认是开启
								"paging" : elo.gridInit.paging,//是否开启本地分页，默认是开启
								"processing" : elo.gridInit.processing,//是否显示中文提示
								"scrollCollapse" : elo.gridInit.scrollCollapse, //是否开启DataTables的高度自适应，当数据条数不够分页数据条数的时候，插件高度是否随数据条数而改变
								"serverSide" : elo.gridInit.serverSide, //开启服务器模式，默认是关闭
								"scrollY" : elo.gridInit.scrollY,//设置高
								"scrollX" : elo.gridInit.scrollX,//设置宽度
								"scrollXInner" : elo.gridInit.scrollXInner,//设置内宽度
								"scrollCollapse" : elo.gridInit.scrollCollapse,//设置折叠
								"jQueryUI" : elo.gridInit.jQueryUI,//jquery 风格
								"autoWidth" : elo.gridInit.autoWidth, //是否自适应宽度
								"columns" : elo.filed,//字段
								"columnDefs" : elo.status,//列表状态
								"language" : {
									"sProcessing" : "处理中...",
									"sLengthMenu" : "显示 _MENU_ 项结果",
									"sZeroRecords" : "没有匹配结果",
									"sInfo" : "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
									"sInfoEmpty" : "显示第 0 至 0 项结果，共 0 项",
									"sInfoFiltered" : "(由 _MAX_ 项结果过滤)",
									"sInfoPostFix" : "",
									"sSearch" : "搜索:",
									"sUrl" : "",
									"sEmptyTable" : "未搜索到数据",
									"sLoadingRecords" : "载入中...",
									"sInfoThousands" : ",",
									"oPaginate" : {
										"sFirst" : "首页",
										"sPrevious" : "上页",
										"sNext" : "下页",
										"sLast" : "末页"
									},
									"oAria" : {
										"sSortAscending" : ": 以升序排列此列",
										"sSortDescending" : ": 以降序排列此列"
									}
								},
								"dom" : "<'row'<'col-sm-2'l><'#"+elo.property.buttonId+".col-sm-10'><'col-sm-6'f>r>t<'row'<'col-sm-6'i><'col-sm-6'p>>",
								"initComplete" : function() {
									$("#" + elo.property.buttonId).append(
											elo.buttons);
									if (elo.gridInit.search) {
										$search = $("input[type='search']");
										//隐藏默认的搜索框
										$search.parent().hide();
									}
									//加载完成之后 初始化checkbox
									checkbox(elo.property.tableId);

									$("#reload").click(function() {
										reload();
									});

									$("#batchIds").click(function() {
										batchIds();
									});

									$("#selection").click(function() {
										selection();
									});
									$("#search").click(function() {
										search();
									});
									$("#clearSearch").click(function() {
										clearSearch("form-controlSearch");
									});

									//checkbox全选

									$("#" + elo.property.checkAllId)
											.click(
													function() {
														if ($(this).prop(
																"checked")) {
															$(
																	"input[name='checkList']")
																	.prop(
																			"checked",
																			true);
															$("tr").addClass(
																	'selected');
														} else {
															$(
																	"input[name='checkList']")
																	.prop(
																			"checked",
																			false);
															$("tr")
																	.removeClass(
																			'selected');
														}
													});

									//得到总记录数，显示在表格的右上角位置
									$("#datarowcount")
											.text(
													$(
															'#'
																	+ elo.property.tableId)
															.DataTable().page
															.info().recordsTotal);

								}
							});

			//错误信息提示
			$.fn.dataTable.ext.errMode = function(s, h, m) {
				if (h == 1) {
					alert("连接服务器失败！");
				} else if (h == 7) {
					alert("返回数据错误！");
				}
			};

			//回调，如果返回的时候有问题提示信息
			eloancn.table.grid.on('xhr.dt', function(e, settings, json, xhr) {
				console.log("重新加载了数据");
				if (typeof (json.code) != "undefined" && json.code != "0") {
					alert(json.message);
				}
			});

			//鼠标经过高亮
			var lastIdx = null;
			eloancn.table.grid
					.on('mouseover', 'td',
							function() {

								if (typeof (eloancn.table.grid.cell(this)
										.index()) != "undefined") {
									var colIdx = eloancn.table.grid.cell(this)
											.index().column;
									if (colIdx !== lastIdx) {
										$(eloancn.table.grid.cells().nodes())
												.removeClass('highlight');
										$(
												eloancn.table.grid.column(
														colIdx).nodes())
												.addClass('highlight');
									}
								}
							});

			eloancn.table.grid.on('mouseleave', function() {
				$(eloancn.table.grid.cells().nodes()).removeClass('highlight');
			});

			//自动搜索方法
			$('.form-controlSearch').on('keyup change', function() {
				elo.gridInit.autoSearch = $("#autoSearch").prop("checked");
				if (elo.gridInit.autoSearch) {
					filterColumn($(this).attr('data-column'));
				}
			});
		}

		//选中一行 checkbox选中
		function checkbox(tableId) {
			//每次加载时都先清理
			$('#' + tableId + ' tbody').off("click", "tr");
			$('#' + tableId + ' tbody').on("click", "tr", function() {
				$(this).toggleClass('selected');
				if ($(this).hasClass("selected")) {
					$(this).find("input").prop("checked", true);
				} else {
					$(this).find("input").prop("checked", false);
				}
			});

		}

		//按钮搜索方法
		function search() {

			var oSettings = "";
			$("[data-column]").each(
					function() {
						var filedValue = $(this).attr('data-column');
						if (filedValue != "") {
							console.log($('#col' + filedValue + '_filter')
									.val());
							oSettings = eloancn.table.grid.column(filedValue)
									.search(
											$('#col' + filedValue + '_filter')
													.val());
						}
					});
			//搜索的数据一次条件，节省资源
			eloancn.table.grid.draw(oSettings);
		}

		//搜索
		function filterColumn(i) {

			eloancn.table.grid.column(i)
					.search($('#col' + i + '_filter').val()).draw();
		}

		//清理搜索数据
		function clearSearch(id) {

			$("." + id).each(function() {
				$(this).val("");
			});
			//清空查询条件重新读取数据
			eloancn.table.grid.columns().search("").draw();
		}

		//获取所有选中行的UUID
		function batchIds() {

			var uuid = '';
			var uuids = eloancn.table.grid.rows(".selected").data();
			if (uuids.length == 0) {
				alert(eloancn.table.statusTitle);
			} else {
				for (var i = 0; i < uuids.length; i++) {
					uuid = uuid + uuids[i].extn + ",";
				}
				alert(uuid);
			}
		}

		//单选
		function selection() {

			if (eloancn.table.grid.rows(".selected").data().length == 1) {
				var uuid = eloancn.table.grid.row(".selected").data().extn;

				if (uuid == "") {
					alert(eloancn.table.statusTitle);
				} else {
					alert(uuid);
				}

			} else {
				alert(eloancn.table.statusTitle);
			}
		}

		//刷新页面
		//重新加载数据
		function reload() {
			eloancn.table.grid.ajax.reload();
		}

		//销毁table
		function destroyDataTable(tableId) {

			var dttable = $('#' + tableId).DataTable();
			dttable.destroy();
		}
	</script>
	
	<script>
		var eloancn = {};

		eloancn.table = {
			grid : "",
			statusTitle : "请选择一条数据！"
		};

		//dataTables方法封装
		function dataTablesInit(elo) {

			eloancn.table.grid = $('#' + elo.property.tableId)
					.DataTable(
							{
								ajax : {
									url : elo.requestUrl.queryList,//请求后台路径
									type : 'get', //ajax的get	请求获取数据
									data : elo.search,
									dataType : 'json',//获取数据格式为json
									error : function(jqXHR, textStatus,
											errorMsg) {
										alert("请求失败" + errorMsg);
									}

								},
								"searching" : elo.gridInit.searching,//搜索框，默认是开启
								"lengthChange" : elo.gridInit.lengthChange,//是否允许用户改变表格每页显示的记录数，默认是开启
								"paging" : elo.gridInit.paging,//是否开启本地分页，默认是开启
								"processing" : elo.gridInit.processing,//是否显示中文提示
								"scrollCollapse" : elo.gridInit.scrollCollapse, //是否开启DataTables的高度自适应，当数据条数不够分页数据条数的时候，插件高度是否随数据条数而改变
								"serverSide" : elo.gridInit.serverSide, //开启服务器模式，默认是关闭
								"scrollY" : elo.gridInit.scrollY,//设置高
								"scrollX" : elo.gridInit.scrollX,//设置宽度
								"scrollXInner" : elo.gridInit.scrollXInner,//设置内宽度
								"scrollCollapse" : elo.gridInit.scrollCollapse,//设置折叠
								"jQueryUI" : elo.gridInit.jQueryUI,//jquery 风格
								"autoWidth" : elo.gridInit.autoWidth, //是否自适应宽度
								"columns" : elo.filed,//字段
								"columnDefs" : elo.status,//列表状态
								"language" : {
									"sProcessing" : "处理中...",
									"sLengthMenu" : "显示 _MENU_ 项结果",
									"sZeroRecords" : "没有匹配结果",
									"sInfo" : "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
									"sInfoEmpty" : "显示第 0 至 0 项结果，共 0 项",
									"sInfoFiltered" : "(由 _MAX_ 项结果过滤)",
									"sInfoPostFix" : "",
									"sSearch" : "搜索:",
									"sUrl" : "",
									"sEmptyTable" : "未搜索到数据",
									"sLoadingRecords" : "载入中...",
									"sInfoThousands" : ",",
									"oPaginate" : {
										"sFirst" : "首页",
										"sPrevious" : "上页",
										"sNext" : "下页",
										"sLast" : "末页"
									},
									"oAria" : {
										"sSortAscending" : ": 以升序排列此列",
										"sSortDescending" : ": 以降序排列此列"
									}
								},
								"dom" : "<'row'<'col-sm-2'l><'#"+elo.property.buttonId+".col-sm-10'><'col-sm-6'f>r>t<'row'<'col-sm-6'i><'col-sm-6'p>>",
								"initComplete" : function() {
									$("#" + elo.property.buttonId).append(
											elo.buttons);
									if (elo.gridInit.search) {
										$search = $("input[type='search']");
										//隐藏默认的搜索框
										$search.parent().hide();
									}
									//加载完成之后 初始化checkbox
									checkbox(elo.property.tableId);

									$("#reload").click(function() {
										reload();
									});

									$("#batchIds").click(function() {
										batchIds();
									});

									$("#selection").click(function() {
										selection();
									});
									$("#search").click(function() {
										search();
									});
									$("#clearSearch").click(function() {
										clearSearch("form-controlSearch");
									});

									//checkbox全选

									$("#" + elo.property.checkAllId)
											.click(
													function() {
														if ($(this).prop(
																"checked")) {
															$(
																	"input[name='checkList']")
																	.prop(
																			"checked",
																			true);
															$("tr").addClass(
																	'selected');
														} else {
															$(
																	"input[name='checkList']")
																	.prop(
																			"checked",
																			false);
															$("tr")
																	.removeClass(
																			'selected');
														}
													});

									//得到总记录数，显示在表格的右上角位置
									$("#datarowcount")
											.text(
													$(
															'#'
																	+ elo.property.tableId)
															.DataTable().page
															.info().recordsTotal);

								}
							});

			//错误信息提示
			$.fn.dataTable.ext.errMode = function(s, h, m) {
				if (h == 1) {
					alert("连接服务器失败！");
				} else if (h == 7) {
					alert("返回数据错误！");
				}
			};

			//回调，如果返回的时候有问题提示信息
			eloancn.table.grid.on('xhr.dt', function(e, settings, json, xhr) {
				console.log("重新加载了数据");
				if (typeof (json.code) != "undefined" && json.code != "0") {
					alert(json.message);
				}
			});

			//鼠标经过高亮
			var lastIdx = null;
			eloancn.table.grid
					.on('mouseover', 'td',
							function() {

								if (typeof (eloancn.table.grid.cell(this)
										.index()) != "undefined") {
									var colIdx = eloancn.table.grid.cell(this)
											.index().column;
									if (colIdx !== lastIdx) {
										$(eloancn.table.grid.cells().nodes())
												.removeClass('highlight');
										$(
												eloancn.table.grid.column(
														colIdx).nodes())
												.addClass('highlight');
									}
								}
							});

			eloancn.table.grid.on('mouseleave', function() {
				$(eloancn.table.grid.cells().nodes()).removeClass('highlight');
			});

			//自动搜索方法
			$('.form-controlSearch').on('keyup change', function() {
				elo.gridInit.autoSearch = $("#autoSearch").prop("checked");
				if (elo.gridInit.autoSearch) {
					filterColumn($(this).attr('data-column'));
				}
			});
		}

		//选中一行 checkbox选中
		function checkbox(tableId) {
			//每次加载时都先清理
			$('#' + tableId + ' tbody').off("click", "tr");
			$('#' + tableId + ' tbody').on("click", "tr", function() {
				$(this).toggleClass('selected');
				if ($(this).hasClass("selected")) {
					$(this).find("input").prop("checked", true);
				} else {
					$(this).find("input").prop("checked", false);
				}
			});

		}

		//按钮搜索方法
		function search() {

			var oSettings = "";
			$("[data-column]").each(
					function() {
						var filedValue = $(this).attr('data-column');
						if (filedValue != "") {
							console.log($('#col' + filedValue + '_filter')
									.val());
							oSettings = eloancn.table.grid.column(filedValue)
									.search(
											$('#col' + filedValue + '_filter')
													.val());
						}
					});
			//搜索的数据一次条件，节省资源
			eloancn.table.grid.draw(oSettings);
		}

		//搜索
		function filterColumn(i) {

			eloancn.table.grid.column(i)
					.search($('#col' + i + '_filter').val()).draw();
		}

		//清理搜索数据
		function clearSearch(id) {

			$("." + id).each(function() {
				$(this).val("");
			});
			//清空查询条件重新读取数据
			eloancn.table.grid.columns().search("").draw();
		}

		//获取所有选中行的UUID
		function batchIds() {

			var uuid = '';
			var uuids = eloancn.table.grid.rows(".selected").data();
			if (uuids.length == 0) {
				alert(eloancn.table.statusTitle);
			} else {
				for (var i = 0; i < uuids.length; i++) {
					uuid = uuid + uuids[i].extn + ",";
				}
				alert(uuid);
			}
		}

		//单选
		function selection() {

			if (eloancn.table.grid.rows(".selected").data().length == 1) {
				var uuid = eloancn.table.grid.row(".selected").data().extn;

				if (uuid == "") {
					alert(eloancn.table.statusTitle);
				} else {
					alert(uuid);
				}

			} else {
				alert(eloancn.table.statusTitle);
			}
		}

		//刷新页面
		//重新加载数据
		function reload() {
			eloancn.table.grid.ajax.reload();
		}

		//销毁table
		function destroyDataTable(tableId) {

			var dttable = $('#' + tableId).DataTable();
			dttable.destroy();
		}
	</script>
	
	
	<script>
		var employee4 = {};

		employee4.property = {
			version : "v1.0",
			name : "employee4",
			tableId : "example4",//显示数据的容器表格的id
			checkAllId : "employeeCheckAll",
			buttonId : "employeeButtonId",
			formId : "employeeForm",
			corporateFormId : "employeeForm",
			returnStatus : "SUCCESS",
			returnTitle : "操作成功",
			statusTitle : "请选择一条数据！",
			idFailure : "获取id失败",
			prompt : "提示",
			pleaseConfirm : "请确认！",
			wantToDelete : "您确定要删除吗?",
			sexMan : "男",
			sexWoman : "女",
			isTest : "是",
			noTest : "否",
			banned : "禁用",
			enable : "启用"
		};

		//初始化配置
		employee4.gridInit = {
			searching : true,
			lengthChange : true,
			paging : true,
			scrollCollapse : true,
			serverSide : false,
			search : true,
			processing : true,
			scrollY : 500,
			scrollX : "100%",
			scrollXInner : "100%",
			scrollCollapse : true,
			jQueryUI : false,
			autoWidth : true,
			autoSearch : false
		};

		//路径配置,此处配置的路径是获取数据的重要手段;
		employee4.url = "/"; //  这里 / 表示的是localhost/
		employee4.requestUrl = {
			queryList : employee4.url
					+ "CMSys/TenementBeanServlet?op=queryIsYR" //数据是从servlet一侧返回的 json格式
		};

		employee4.search = {
			uuid : ""
		};

		employee4.status = [ {
			"searchable" : false,
			"orderable" : false,
			"targets" : 0
		},//第一行不进行排序和搜索
		//        {"targets": [12], "visible": false},    //设置第13列隐藏/显示
		//        {"width": "10%", "targets": [1]},  //设置第2列宽度
		//        {
		//            对第7列内容进行替换处理
		//            targets: 6,
		//            render: function (data, type, row, meta) {
		//                if (data == "1") {
		//                    return employee.table.sexMan;
		//                }
		//                if (data == "0") {
		//                    return employee.table.sexWoman;
		//                }
		//            }
		//        },
		{
			defaultContent : '',
			targets : [ '_all' ]
		} //所有列设置默认值为空字符串
		];
		//对应的返回数据格式

		employee4.filed = [
				{ //第一个列
					"data" : "extn",
					"createdCell" : function(nTd, sData, oData, iRow, iCol) {
						$(nTd)
								.html(
										"<input type='checkbox' name='checkList' value='" + sData + "'>");
					}
				}, //这里是返回的json对象中的 属性值   {data : }
				{
					"data" : "tenementId"
				},
				{
					"data" : "tenementName"
				},
				{
					"data" : "idCard"
				},
				{
					"data" : "aunit"
				},
				{
					"data" : "phone"
				},
				{
					"data" : "mobilePhone"
				},
				{
					"data" : "email"
				},
				{
					"data" : "areStay"
				},
				{ //创建操作那个列
					"data" : "extn",
					"createdCell" : function(nTd) {
						//表格最后一个列增加很多超链接 启用禁用。 编辑   删除 修改密码
						$(nTd)
								.html(
										'<a style="text-decoration:none" onClick="member_stop(this,\'10001\')" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a> <a title="编辑" href="javascript:;" class="empedit ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> <a style="text-decoration:none" class="changepwd ml-5"  href="javascript:;" title="修改密码"><i class="Hui-iconfont">&#xe63f;</i></a> <a title="删除" href="javascript:;" onclick="member_del(this)" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>');
						//$(nTd).html('<a onClick="member_stop(this,\'10001\')">xx<a>');
						//$(nTd).html('<a style="text-decoration:none" onClick="member_stop(this,\'10001\')" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a> <a title="编辑" href="javascript:;" onclick="member_edit(\'编辑\',\'member-add.html\',\'4\',\'\',\'510\')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> <a style="text-decoration:none" class="ml-5" onClick="change_password(\'修改密码\',\'change-password.html\',\'10001\',\'600\',\'270\')" href="javascript:;" title="修改密码"><i class="Hui-iconfont">&#xe63f;</i></a> <a title="删除" href="javascript:;" onclick="member_del(this,\'1\')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>');
						//$(nTd).html("<td class='td-manage'><a style='text-decoration:none' onClick='member_stop(this,'10001')' href='javascript:;' title='停用'><i class='Hui-iconfont'>&#xe631;</i></a> <a title='编辑' href='javascript:;' onclick='member_edit('编辑','member-add.html','4','','510')' class='ml-5' style='text-decoration:none'><i class='Hui-iconfont'>&#xe6df;</i></a> <a style='text-decoration:none' class='ml-5' onClick='change_password('修改密码','change-password.html','10001','600','270')' href='javascript:;' title='修改密码'><i class='Hui-iconfont'>&#xe63f;</i></a> <a title='删除' href='javascript:;' onclick='member_del(this,'1')' class='ml-5' style='text-decoration:none'><i class='Hui-iconfont'>&#xe6e2;</i></a></td>");
					}
				} ];

	</script>

	<script>
		var eloancn = {};

		eloancn.table = {
			grid : "",
			statusTitle : "请选择一条数据！"
		};

		//dataTables方法封装
		function dataTablesInit(elo) {

			eloancn.table.grid = $('#' + elo.property.tableId)
					.DataTable(
							{
								ajax : {
									url : elo.requestUrl.queryList,//请求后台路径
									type : 'get', //ajax的get	请求获取数据
									data : elo.search,
									dataType : 'json',//获取数据格式为json
									error : function(jqXHR, textStatus,
											errorMsg) {
										alert("请求失败" + errorMsg);
									}

								},
								"searching" : elo.gridInit.searching,//搜索框，默认是开启
								"lengthChange" : elo.gridInit.lengthChange,//是否允许用户改变表格每页显示的记录数，默认是开启
								"paging" : elo.gridInit.paging,//是否开启本地分页，默认是开启
								"processing" : elo.gridInit.processing,//是否显示中文提示
								"scrollCollapse" : elo.gridInit.scrollCollapse, //是否开启DataTables的高度自适应，当数据条数不够分页数据条数的时候，插件高度是否随数据条数而改变
								"serverSide" : elo.gridInit.serverSide, //开启服务器模式，默认是关闭
								"scrollY" : elo.gridInit.scrollY,//设置高
								"scrollX" : elo.gridInit.scrollX,//设置宽度
								"scrollXInner" : elo.gridInit.scrollXInner,//设置内宽度
								"scrollCollapse" : elo.gridInit.scrollCollapse,//设置折叠
								"jQueryUI" : elo.gridInit.jQueryUI,//jquery 风格
								"autoWidth" : elo.gridInit.autoWidth, //是否自适应宽度
								"columns" : elo.filed,//字段
								"columnDefs" : elo.status,//列表状态
								"language" : {
									"sProcessing" : "处理中...",
									"sLengthMenu" : "显示 _MENU_ 项结果",
									"sZeroRecords" : "没有匹配结果",
									"sInfo" : "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
									"sInfoEmpty" : "显示第 0 至 0 项结果，共 0 项",
									"sInfoFiltered" : "(由 _MAX_ 项结果过滤)",
									"sInfoPostFix" : "",
									"sSearch" : "搜索:",
									"sUrl" : "",
									"sEmptyTable" : "未搜索到数据",
									"sLoadingRecords" : "载入中...",
									"sInfoThousands" : ",",
									"oPaginate" : {
										"sFirst" : "首页",
										"sPrevious" : "上页",
										"sNext" : "下页",
										"sLast" : "末页"
									},
									"oAria" : {
										"sSortAscending" : ": 以升序排列此列",
										"sSortDescending" : ": 以降序排列此列"
									}
								},
								"dom" : "<'row'<'col-sm-2'l><'#"+elo.property.buttonId+".col-sm-10'><'col-sm-6'f>r>t<'row'<'col-sm-6'i><'col-sm-6'p>>",
								"initComplete" : function() {
									$("#" + elo.property.buttonId).append(
											elo.buttons);
									if (elo.gridInit.search) {
										$search = $("input[type='search']");
										//隐藏默认的搜索框
										$search.parent().hide();
									}
									//加载完成之后 初始化checkbox
									checkbox(elo.property.tableId);

									$("#reload").click(function() {
										reload();
									});

									$("#batchIds").click(function() {
										batchIds();
									});

									$("#selection").click(function() {
										selection();
									});
									$("#search").click(function() {
										search();
									});
									$("#clearSearch").click(function() {
										clearSearch("form-controlSearch");
									});

									//checkbox全选

									$("#" + elo.property.checkAllId)
											.click(
													function() {
														if ($(this).prop(
																"checked")) {
															$(
																	"input[name='checkList']")
																	.prop(
																			"checked",
																			true);
															$("tr").addClass(
																	'selected');
														} else {
															$(
																	"input[name='checkList']")
																	.prop(
																			"checked",
																			false);
															$("tr")
																	.removeClass(
																			'selected');
														}
													});

									//得到总记录数，显示在表格的右上角位置
									$("#datarowcount")
											.text(
													$(
															'#'
																	+ elo.property.tableId)
															.DataTable().page
															.info().recordsTotal);

								}
							});

			//错误信息提示
			$.fn.dataTable.ext.errMode = function(s, h, m) {
				if (h == 1) {
					alert("连接服务器失败！");
				} else if (h == 7) {
					alert("返回数据错误！");
				}
			};

			//回调，如果返回的时候有问题提示信息
			eloancn.table.grid.on('xhr.dt', function(e, settings, json, xhr) {
				console.log("重新加载了数据");
				if (typeof (json.code) != "undefined" && json.code != "0") {
					alert(json.message);
				}
			});

			//鼠标经过高亮
			var lastIdx = null;
			eloancn.table.grid
					.on('mouseover', 'td',
							function() {

								if (typeof (eloancn.table.grid.cell(this)
										.index()) != "undefined") {
									var colIdx = eloancn.table.grid.cell(this)
											.index().column;
									if (colIdx !== lastIdx) {
										$(eloancn.table.grid.cells().nodes())
												.removeClass('highlight');
										$(
												eloancn.table.grid.column(
														colIdx).nodes())
												.addClass('highlight');
									}
								}
							});

			eloancn.table.grid.on('mouseleave', function() {
				$(eloancn.table.grid.cells().nodes()).removeClass('highlight');
			});

			//自动搜索方法
			$('.form-controlSearch').on('keyup change', function() {
				elo.gridInit.autoSearch = $("#autoSearch").prop("checked");
				if (elo.gridInit.autoSearch) {
					filterColumn($(this).attr('data-column'));
				}
			});
		}

		//选中一行 checkbox选中
		function checkbox(tableId) {
			//每次加载时都先清理
			$('#' + tableId + ' tbody').off("click", "tr");
			$('#' + tableId + ' tbody').on("click", "tr", function() {
				$(this).toggleClass('selected');
				if ($(this).hasClass("selected")) {
					$(this).find("input").prop("checked", true);
				} else {
					$(this).find("input").prop("checked", false);
				}
			});

		}

		//按钮搜索方法
		function search() {

			var oSettings = "";
			$("[data-column]").each(
					function() {
						var filedValue = $(this).attr('data-column');
						if (filedValue != "") {
							console.log($('#col' + filedValue + '_filter')
									.val());
							oSettings = eloancn.table.grid.column(filedValue)
									.search(
											$('#col' + filedValue + '_filter')
													.val());
						}
					});
			//搜索的数据一次条件，节省资源
			eloancn.table.grid.draw(oSettings);
		}

		//搜索
		function filterColumn(i) {

			eloancn.table.grid.column(i)
					.search($('#col' + i + '_filter').val()).draw();
		}

		//清理搜索数据
		function clearSearch(id) {

			$("." + id).each(function() {
				$(this).val("");
			});
			//清空查询条件重新读取数据
			eloancn.table.grid.columns().search("").draw();
		}

		//获取所有选中行的UUID
		function batchIds() {

			var uuid = '';
			var uuids = eloancn.table.grid.rows(".selected").data();
			if (uuids.length == 0) {
				alert(eloancn.table.statusTitle);
			} else {
				for (var i = 0; i < uuids.length; i++) {
					uuid = uuid + uuids[i].extn + ",";
				}
				alert(uuid);
			}
		}

		//单选
		function selection() {

			if (eloancn.table.grid.rows(".selected").data().length == 1) {
				var uuid = eloancn.table.grid.row(".selected").data().extn;

				if (uuid == "") {
					alert(eloancn.table.statusTitle);
				} else {
					alert(uuid);
				}

			} else {
				alert(eloancn.table.statusTitle);
			}
		}

		//刷新页面
		//重新加载数据
		function reload() {
			eloancn.table.grid.ajax.reload();
		}

		//销毁table
		function destroyDataTable(tableId) {

			var dttable = $('#' + tableId).DataTable();
			dttable.destroy();
		}
	</script>

	<script>
		// 初始化数据
		$(document).ready(function() {
			dataTablesInit(employee1);
			dataTablesInit(employee2);
			dataTablesInit(employee3);
			dataTablesInit(employee4);
		});
		$(document).ready(function() {
			$('table.display').dataTable();
		});
	</script>

</body>
</html>