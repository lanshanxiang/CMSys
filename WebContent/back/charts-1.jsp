<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>

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
<title>折线图</title>
<%
	if (null == request.getSession().getAttribute("users")) {
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}
%>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 统计管理 <span class="c-gray en">&gt;</span> 折线图 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<div id="container" style="min-width:700px;height:400px"></div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib1/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/lib1/layer/2.1/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static1/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/static1/h-ui/js/H-ui.admin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib1/Highcharts/4.1.7/js/highcharts.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib1/Highcharts/4.1.7/js/modules/exporting.js"></script>
<script type="text/javascript">
$(function () {
    $('#container').highcharts({
        title: {
            text: '楼房，房屋，小区，车位统计图',
            x: -20 //center
        },
        subtitle: {
            text: '2017年',
            x: -20
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
        tooltip: {
            valueSuffix: '个'
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle',
            borderWidth: 0
        },
        series: [{
            name: '新增楼房',
            data: [${buildingList[0].b_countAdd}-${buildingList[0].b_countDel},
            	${buildingList[1].b_countAdd}-${buildingList[1].b_countDel},
            	${buildingList[2].b_countAdd}-${buildingList[2].b_countDel},
            	${buildingList[3].b_countAdd}-${buildingList[3].b_countDel},
            	${buildingList[4].b_countAdd}-${buildingList[4].b_countDel},
            	${buildingList[5].b_countAdd}-${buildingList[5].b_countDel},
            	${buildingList[6].b_countAdd}-${buildingList[6].b_countDel}, 
            	${buildingList[7].b_countAdd}-${buildingList[7].b_countDel},
            	${buildingList[8].b_countAdd}-${buildingList[8].b_countDel}, 
            	${buildingList[9].b_countAdd}-${buildingList[9].b_countDel}, 
            	${buildingList[10].b_countAdd}-${buildingList[10].b_countDel},
            	${buildingList[11].b_countAdd}-${buildingList[11].b_countDel} ]
        }, {
            name: '新增房屋',
            data: [${roomList[0].r_countAdd}-${roomList[0].r_countDel},
            	${roomList[1].r_countAdd}-${roomList[1].r_countDel},
            	${roomList[2].r_countAdd}-${roomList[2].r_countDel},
            	${roomList[3].r_countAdd}-${roomList[3].r_countDel},
            	${roomList[4].r_countAdd}-${roomList[4].r_countDel},
            	${roomList[5].r_countAdd}-${roomList[5].r_countDel},
            	${roomList[6].r_countAdd}-${roomList[6].r_countDel}, 
            	${roomList[7].r_countAdd}-${roomList[7].r_countDel},
            	${roomList[8].r_countAdd}-${roomList[8].r_countDel}, 
            	${roomList[9].r_countAdd}-${roomList[9].r_countDel}, 
            	${roomList[10].r_countAdd}-${roomList[10].r_countDel},
            	${roomList[11].r_countAdd}-${roomList[11].r_countDel} ]
        }, {
            name: '新增小区',
            data: [${villageList[0].v_countAdd}-${villageList[0].v_countDel},
            	${villageList[1].v_countAdd}-${villageList[1].v_countDel},
            	${villageList[2].v_countAdd}-${villageList[2].v_countDel},
            	${villageList[3].v_countAdd}-${villageList[3].v_countDel},
            	${villageList[4].v_countAdd}-${villageList[4].v_countDel},
            	${villageList[5].v_countAdd}-${villageList[5].v_countDel},
            	${villageList[6].v_countAdd}-${villageList[6].v_countDel}, 
            	${villageList[7].v_countAdd}-${villageList[7].v_countDel},
            	${villageList[8].v_countAdd}-${villageList[8].v_countDel}, 
            	${villageList[9].v_countAdd}-${villageList[9].v_countDel}, 
            	${villageList[10].v_countAdd}-${villageList[10].v_countDel},
            	${villageList[11].v_countAdd}-${villageList[11].v_countDel} ]
        }, {
            name: '新增车位',
            data: [${parkingList[0].p_countAdd}-${parkingList[0].p_countDel},
            	${parkingList[1].p_countAdd}-${parkingList[1].p_countDel},
            	${parkingList[2].p_countAdd}-${parkingList[2].p_countDel},
            	${parkingList[3].p_countAdd}-${parkingList[3].p_countDel},
            	${parkingList[4].p_countAdd}-${parkingList[4].p_countDel},
            	${parkingList[5].p_countAdd}-${parkingList[5].p_countDel},
            	${parkingList[6].p_countAdd}-${parkingList[6].p_countDel}, 
            	${parkingList[7].p_countAdd}-${parkingList[7].p_countDel},
            	${parkingList[8].p_countAdd}-${parkingList[8].p_countDel}, 
            	${parkingList[9].p_countAdd}-${parkingList[9].p_countDel}, 
            	${parkingList[10].p_countAdd}-${parkingList[10].p_countDel},
            	${parkingList[11].p_countAdd}-${parkingList[11].p_countDel} ]
        }],
    });
});
</script>
</body>
</html>