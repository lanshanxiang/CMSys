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
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<LINK rel="Bookmark" href="/favicon.ico" >
<LINK rel="Shortcut Icon" href="/favicon.ico" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui/css/style.css" />
<title>物业缴费信息</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 费用管理 <span class="c-gray en">&gt;</span> 物业缴费(未缴费) <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<article class="cl pd-20"> 
		<div class="text-c">
		        是否自动检索：<input type="checkbox" id="autoSearch">
		        住户名称：<input type="text" class="form-controlSearch input-text " placeholder="输入物业编号" data-column="2" id="col2_filter" style="width:100px;">
		    年：<input type="text" class="form-controlSearch input-text " placeholder="输入年" data-column="3" id="col3_filter" style="width:100px;">
		     月：<input type="text" class="form-controlSearch input-text " placeholder="输入月" data-column="4" id="col4_filter" style="width:100px;">
   		 费用编号：<input type="text" class="form-controlSearch input-text " placeholder="输入费用编号" data-column="7" id="col7_filter" style="width:100px;">
   
		   </div>
			<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a href="javascript:;" id="plsc" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a> <a href="javascript:;" onclick="member_add('添加缴费记录','admin-list-water-electric-add.jsp','','510')" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加缴费记录</a></span> <span class="r">共有数据：<strong><span id="datarowcount"></span></strong> 条</span> </div>
			<div class="mt-20">
				<table id="example" class="table table-border table-bordered table-hover table-bg table-sort">
					<thead>
						<tr class="text-c">
							<th width="25"><input type="checkbox" id="PaymentCheckAll" name="PaymentCheckAll"></th>
							<th>缴费编号</th>
         				    <th>住户名称</th>
          				    <th>年</th>
           					<th>月</th>
           				   <th>上月度数</th>
           				   <th>本月度数</th>
           				   <th>费用类型名称</th>
           				   <th>走表数</th>
           				   <th>应缴费</th>
           				   <th>实缴费</th>
           				   <th>缴费日期</th>
           				   <th width="150">备注</th>
           				   <th>操作</th>
						</tr>
					</thead>
					<tbody>					
					</tbody>
				</table>
			</div>
		</article>
</div>
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
<script type="text/javascript">
$(function(){
	/*暂时注释掉hui自带的dt访问	
	$('.table-sort').dataTable({
		"aaSorting": [[ 1, "desc" ]],//默认第几个排序
		"bStateSave": true,//状态保存
		"aoColumnDefs": [
		  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		  {"orderable":false,"aTargets":[0,8,9]}// 制定列不参与排序
		]
	});
	*/
    /*单击数据行 被选中，再次单击取消选中*/
	$('.table-sort tbody').on( 'click', 'tr', function () {
		if ( $(this).hasClass('selected') ) {
			$(this).removeClass('selected');
		}
		else {
			table.$('tr.selected').removeClass('selected');
			$(this).addClass('selected');
		}
	});
});
$("#plsc").click(function(){
	batchIds();
});
/*用户-添加*/
function member_add(title,url,w,h){
	layer_show(title,url,w,h);
}
/*用户-查看*/
function member_show(title,url,id,w,h){
	layer_show(title,url,w,h);
}

/*用户-编辑*/
function member_edit(title,url,id,w,h){
	layer_show(title,url,w,h);
}

/*用户-删除*/
function member_del(obj,id){
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
						url : "${pageContext.request.contextPath}/PaymentServlet?op=del",//url地址
						type : "post",
						data : {
							"payId" : $(obj).parents("tr").find("td").eq(1).text()
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
											eloancn.table.grid.ajax.reload();
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
  $(function(){
	  //修改密码的超链接单击事件
	
	  
	  
	  
	 //修改费用信息的超链接单击事件
	 $(document).on("click",'.empedit',function()
	 {
		 var _this = $(this); //当前对象 编辑的超链接
	      data =_this.parent().siblings(); //_this.parent() 得到td   siblings(); 当前行的其他td
	      var arr = [];
	     for(var i = 1; i< data.length; i++){ //1 从1开始 从姓名开始
	        arr.push($(data[i]).text());//每一个td中的内容() 放到一个数组里
	     }
	    // console.log(arr);
		 //change-password.html
		 
		 //打开新窗口 编辑窗口
	     layer.open({
	 		type: 2,
	 		area: ['710px', '760px'], //窗口大小
	 		fix: false, //不固定
	 		maxmin: true,
	 		shade:0.4,
	 		title: '编辑费用信息', //显示的标题
	 		content: 'admin-list-water-electric-update.jsp', //很多种写法 其中之一直接写目标窗口(要弹出来窗口)
	 		success: function(layero, index){ //success可以不写
	             var body = layer.getChildFrame('body',index);//建立父子联系
	             var iframeWin = window[layero.find('iframe')[0]['name']];
	             
	             var inputList = body.find('input'); //找所有的input
	             for(var j = 0; j< arr.length; j++){
	                 $(inputList[j]).val(arr[j]); //arr[j] 数组中的值 赋值给  $(inputList[j])
	             }
	         }
	 	});
		 
		 
	 });
	  
	  
  });
</script>



<script src="${pageContext.request.contextPath}/plugin/datatables/jquery.dataTables.min.js"></script>

<script>

    var employee = {};

    employee.property = {
        version:"v1.0",
        name:"employee",
        tableId:"example",//显示数据的容器表格的id
        checkAllId:"employeeCheckAll",
        buttonId:"employeeButtonId",
        formId:"employeeForm",
        corporateFormId:"employeeForm",
        returnStatus:"SUCCESS",
        returnTitle:"操作成功",
        statusTitle:"请选择一条数据！",
        idFailure:"获取id失败",
        prompt:"提示",
        pleaseConfirm:"请确认！",
        wantToDelete:"您确定要删除吗?",
        sexMan:"男",
        sexWoman:"女",
        isTest:"是",
        noTest:"否",
        banned:"禁用",
        enable:"启用"
    };

    //初始化配置
    employee.gridInit = {
        searching:true,
        lengthChange:true,
        paging:true,
        scrollCollapse:true,
        serverSide:false,
        search:true,
        processing:true,
        scrollY:500,
        scrollX:"100%",
        scrollXInner:"100%",
        scrollCollapse:true,
        jQueryUI:false,
        autoWidth:true,
        autoSearch:false
    };

    //路径配置,此处配置的路径是获取数据的重要手段;
    employee.url="/"; //  这里 / 表示的是localhost/
    employee.requestUrl = {
        queryList:employee.url+"CMSys/PaymentServlet?op=before"  //数据是从servlet一侧返回的 json格式
    };

    employee.search={
        uuid:""
    };

    employee.status = [
        {"searchable": false, "orderable": false, "targets": 0},//第一行不进行排序和搜索

        {defaultContent: '',targets: ['_all']} //所有列设置默认值为空字符串
    ];
    //对应的返回数据格式
    
    employee.filed =[
        {   //第一个列
        	"data": "extn",
            "createdCell": function (nTd, sData, oData, iRow, iCol) {
                $(nTd).html("<input type='checkbox' name='checkList' value='" + sData + "'>");
            }
        }, //这里是返回的json对象中的 属性值   {data : }
        {"data": "payId"},
        {"data": "tenementName"},
        {"data": "years"},
        {"data": "months"},
        {"data": "lastHalf"},
        {"data": "thisMonth"},
        {"data": "costName"},
        {"data": "quantity"},
        {"data": "payable"},
        {"data": "practical"},
        {"data": "payDate"},
        {"data": "extent"},
        {    //创建操作那个列
        	"data":"extn",
        	"createdCell":function(nTd)
        	{
        		//表格最后一个列增加很多超链接 启用禁用。 编辑   删除 修改密码
        		$(nTd).html(' <a title="编辑" href="javascript:;" class="empedit ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> <a title="删除" href="javascript:;" onclick="member_del(this,\'1\')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>');
        		
        	}
        }
    ];

     //导航按钮操作
    employee.buttons =
            '<button class="btn btn-default"  type="button" id="reload" data-toggle="modal" data-target="#employeeModal">刷新表格</button>';

</script>

<script>

    var eloancn = {};

    eloancn.table={
        grid:"",
        statusTitle:"请选择一条数据！"
    };

    //dataTables方法封装
    function dataTablesInit(elo){

        eloancn.table.grid = $('#'+elo.property.tableId).DataTable({
            ajax: {
                url: elo.requestUrl.queryList,//请求后台路径
                type: 'get', //ajax的get	请求获取数据
                data: elo.search,
                dataType:'json',//获取数据格式为json
                error: function(jqXHR, textStatus, errorMsg){
                    alert("请求失败"+errorMsg);
                }

            },
            "searching":elo.gridInit.searching,//搜索框，默认是开启
            "lengthChange": elo.gridInit.lengthChange,//是否允许用户改变表格每页显示的记录数，默认是开启
            "paging": elo.gridInit.paging,//是否开启本地分页，默认是开启
            "processing": elo.gridInit.processing,//是否显示中文提示
            "scrollCollapse" : elo.gridInit.scrollCollapse,  //是否开启DataTables的高度自适应，当数据条数不够分页数据条数的时候，插件高度是否随数据条数而改变
            "serverSide": elo.gridInit.serverSide, //开启服务器模式，默认是关闭
            "scrollY": elo.gridInit.scrollY,//设置高
            "scrollX": elo.gridInit.scrollX,//设置宽度
            "scrollXInner": elo.gridInit.scrollXInner,//设置内宽度
            "scrollCollapse": elo.gridInit.scrollCollapse,//设置折叠
            "jQueryUI": elo.gridInit.jQueryUI,//jquery 风格
            "autoWidth" : elo.gridInit.autoWidth, //是否自适应宽度
            "columns":elo.filed,//字段
            "columnDefs":elo.status,//列表状态
            "language": {
                "sProcessing": "处理中...",
                "sLengthMenu": "显示 _MENU_ 项结果",
                "sZeroRecords": "没有匹配结果",
                "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
                "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",
                "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
                "sInfoPostFix": "",
                "sSearch": "搜索:",
                "sUrl": "",
                "sEmptyTable": "未搜索到数据",
                "sLoadingRecords": "载入中...",
                "sInfoThousands": ",",
                "oPaginate": {
                    "sFirst": "首页",
                    "sPrevious": "上页",
                    "sNext": "下页",
                    "sLast": "末页"
                },
                "oAria": {
                    "sSortAscending": ": 以升序排列此列",
                    "sSortDescending": ": 以降序排列此列"
                }
            },
            "dom": "<'row'<'col-sm-2'l><'#"+elo.property.buttonId+".col-sm-10'><'col-sm-6'f>r>t<'row'<'col-sm-6'i><'col-sm-6'p>>",
            "initComplete":function(){
                $("#"+elo.property.buttonId).append(elo.buttons);
                if(elo.gridInit.search){
                    $search = $("input[type='search']");
                    //隐藏默认的搜索框
                    $search.parent().hide();
                }
                //加载完成之后 初始化checkbox
                checkbox(elo.property.tableId);


                $("#reload").click(function(){
                    reload();
                });

                $("#batchIds").click(function () {
                    batchIds();
                });

                $("#selection").click(function () {
                    selection();
                });
                $("#search").click(function () {
                    search();
                });
                $("#clearSearch").click(function () {
                    clearSearch("form-controlSearch");
                });


                //checkbox全选
               
                $("#"+elo.property.checkAllId).click(function () {
                    if ($(this).prop("checked")) {
                        $("input[name='checkList']").prop("checked",true);
                        $("tr").addClass('selected');
                    } else {
                        $("input[name='checkList']").prop("checked",false);
                        $("tr").removeClass('selected');
                    }
                });
                
                
                //得到总记录数，显示在表格的右上角位置
                $("#datarowcount").text($('#'+elo.property.tableId).DataTable().page.info().recordsTotal);

            }
        });

        //错误信息提示
        $.fn.dataTable.ext.errMode = function(s,h,m){
            if(h==1){
                alert("连接服务器失败！");
            }else if(h==7){
                alert("返回数据错误！");
            }
        };

        //回调，如果返回的时候有问题提示信息
        eloancn.table.grid.on('xhr.dt', function ( e, settings, json, xhr ) {
            console.log("重新加载了数据");
            if(typeof(json.code)!="undefined"	&&	json.code!="0"){
                alert(json.message);
            }
        } );

        //鼠标经过高亮
        var lastIdx = null;
        eloancn.table.grid.on( 'mouseover', 'td', function () {

            if(typeof(eloancn.table.grid.cell(this).index())!="undefined"){
                var colIdx = eloancn.table.grid.cell(this).index().column;
                if ( colIdx !== lastIdx ) {
                    $( eloancn.table.grid.cells().nodes() ).removeClass( 'highlight' );
                    $( eloancn.table.grid.column( colIdx ).nodes() ).addClass( 'highlight' );
                }
            }
        } );

        eloancn.table.grid.on( 'mouseleave', function () {
            $(eloancn.table.grid.cells().nodes()).removeClass( 'highlight' );
        } );



        //自动搜索方法
        $('.form-controlSearch').on('keyup change', function () {
            elo.gridInit.autoSearch = $("#autoSearch").prop("checked");
            if(elo.gridInit.autoSearch){
                filterColumn( $(this).attr('data-column') );
            }
        });
    }

    //选中一行 checkbox选中
    function checkbox(tableId){
        //每次加载时都先清理
        $('#'+tableId+' tbody').off("click","tr");
        $('#'+tableId+' tbody').on("click", "tr", function () {
            $(this).toggleClass('selected');
            if($(this).hasClass("selected")){
                $(this).find("input").prop("checked",true);
            }else{
                $(this).find("input").prop("checked",false);
            }
        });


    }

    //按钮搜索方法
    function search(){

        var oSettings = "";
        $("[data-column]").each(function(){
            var filedValue = $(this).attr('data-column');
            if(filedValue!=""){
                console.log($('#col'+filedValue+'_filter').val());
                oSettings = eloancn.table.grid.column(filedValue).search(
                        $('#col'+filedValue+'_filter').val()
                );
            }
        });
        //搜索的数据一次条件，节省资源
        eloancn.table.grid.draw(oSettings);
    }

    //搜索
    function filterColumn(i) {

        eloancn.table.grid.column(i).search(
                $('#col'+i+'_filter').val()
        ).draw();
    }

    //清理搜索数据
    function clearSearch(id){

        $("."+id).each(function(){
            $(this).val("");
        });
        //清空查询条件重新读取数据
        eloancn.table.grid.columns().search("").draw();
    }

  //获取所有选中行的UUID
	function batchIds() {
		var uuid = '';
		var uuids = eloancn.table.grid.rows(".selected").data();
		console.log(uuids.length);
		if (uuids.length == 0) {
			alert(eloancn.table.statusTitle);
		} else {
			// 上面是自带的语句,大概意思就是判断有没有选数据,没有的话进行提示
			// 下面是选中数据后
			// 创建一个数组commentId的数组进行存放选中行所对应要操作的commentId
			var payId = new Array();
			// 循环往数组里添加数据
			for (var i = 0; i < uuids.length; i++) {
				payId.push(uuids[i]['payId']);
			}
			//这里进行ajax
			$.ajax({
				type : 'POST',
				url : '${pageContext.request.contextPath}/PaymentServlet?op=batchDelete',
				// 传递数组
				data : {
					'payId' : payId
				},
				// 设置traditional属性: true后才能将集合传到servlet里面去
				traditional : true,
				dataType : 'text',//接受数据类型为文本类型
				success : function(data) {
					layer.msg('删除成功!', {
						icon : 1,
						time : 1000
					});
					//成功之后重新加载页面
					reload();

				},
				error : function(data) {
					layer.msg('删除失败!', {
						icon : 1,
						time : 1000
					});
				},
			});

		}
	}

    //单选
    function selection(){

        if (eloancn.table.grid.rows(".selected").data().length==1) {
            var uuid =eloancn.table.grid.row(".selected").data().extn;

            if(uuid==""){
                alert(eloancn.table.statusTitle);
            }else{
                alert(uuid);
            }

        }else{
            alert(eloancn.table.statusTitle);
        }
    }

    //刷新页面
    //重新加载数据
    function reload(){
        eloancn.table.grid.ajax.reload();
    }

    //销毁table
    function destroyDataTable(tableId){

        var dttable =  $('#'+tableId).DataTable();
        dttable.destroy();
    }


</script>

<script>
// 初始化数据
    $(document).ready(function(){
        dataTablesInit(employee);
    });
</script>
</body>
</html>