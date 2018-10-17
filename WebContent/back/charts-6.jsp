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
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<script type="text/javascript" src="lib/PIE_IE678.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static1/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static1/h-ui/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib1/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib1/icheck/icheck.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static1/h-ui/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static1/h-ui/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>3D柱状图</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 统计管理 <span class="c-gray en">&gt;</span> 3D柱状图 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<div id="container" style="min-width:700px;height:400px"></div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib1/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/lib1/layer/2.1/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static1/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/static1/h-ui/js/H-ui.admin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib1/Highcharts/4.1.7/js/highcharts.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib1/Highcharts/4.1.7/js/modules/exporting.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib1/Highcharts/4.1.7/js/highcharts-3d.js"></script>
<script type="text/javascript">
﻿$(function () {
    // Set up the chart
    var chart = new Highcharts.Chart({
        chart: {
            renderTo: 'container',
            type: 'column',
            margin: 75,
            options3d: {
                enabled: true,
                alpha: 15,
                beta: 15,
                depth: 50,
                viewDistance: 25
            }
        },
        title: {
            text: '住户总迁入数统计表（迁入-迁出）'
        },
        subtitle: {
            text: '2017年'
        },
        xAxis: {
            categories: ['一月', '二月', '三月', '四月', '五月', '六月','七月', '八月', '九月', '十月', '十一月', '十二月']
        },
        yAxis: {
            title: {
                text: '数量 (个)'
            },
            plotLines: [{
                value: 0,
                width: 1,
                color: '#808080'
            }]
        },
        plotOptions: {
            column: {
                depth: 25
            }
        },
        series: [{
        	name: '住户迁入量',
            data: [${tenementList[0].t_countAdd}-${tenementList[0].t_countDel},
            	${tenementList[1].t_countAdd}-${tenementList[1].t_countDel},
            	${tenementList[2].t_countAdd}-${tenementList[2].t_countDel},
            	${tenementList[3].t_countAdd}-${tenementList[3].t_countDel},
            	${tenementList[4].t_countAdd}-${tenementList[4].t_countDel},
            	${tenementList[5].t_countAdd}-${tenementList[5].t_countDel},
            	${tenementList[6].t_countAdd}-${tenementList[6].t_countDel}, 
            	${tenementList[7].t_countAdd}-${tenementList[7].t_countDel},
            	${tenementList[8].t_countAdd}-${tenementList[8].t_countDel}, 
            	${tenementList[9].t_countAdd}-${tenementList[9].t_countDel}, 
            	${tenementList[10].t_countAdd}-${tenementList[10].t_countDel},
            	${tenementList[11].t_countAdd}-${tenementList[11].t_countDel} ]
        }]
    });
    

    // Activate the sliders
    $('#R0').on('change', function(){
        chart.options.chart.options3d.alpha = this.value;
        showValues();
        chart.redraw(false);
    });
    $('#R1').on('change', function(){
        chart.options.chart.options3d.beta = this.value;
        showValues();
        chart.redraw(false);
    });

    function showValues() {
        $('#R0-value').html(chart.options.chart.options3d.alpha);
        $('#R1-value').html(chart.options.chart.options3d.beta);
    }
    showValues();
});
</script>
</body>
</html>