<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<script type="text/javascript" src="lib/PIE_IE678.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static1/h-ui/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/lib1/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/lib/icheck/icheck.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static1/h-ui/skin/default/skin.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static1/h-ui/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/My.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<title>我的桌面</title>
<style type="text/css">
</style>


</head>
<body style="background-color: #CDCDC1;">

	
	<div class="page-container">
		<div class="ant-card activeCard___-2Vpj ant-card-wider-padding"
								style="margin-top: 24px;">
								<div class="ant-card-head">
									<div class="ant-card-head-wrapper">
										<div class="ant-card-head-title">操作日志</div>
										
									</div>
								</div>
								<div class="ant-card-body" style="padding: 0px;">
									<div class="ant-list ant-list-lg ant-list-split">
										<div class="ant-spin-nested-loading">
											<div class="ant-spin-container">
												<div class="activitiesList___1wmsJ">
												<c:forEach items="${listLogNo}" var="log">
													<div class="ant-list-item">
														<div class="ant-list-item-meta">
															<div class="ant-list-item-meta-content">
																<h4 class="ant-list-item-meta-title">
																	<div>
																		<span class="m-l-sm">操作时间：${log.logDate}</span><span
																			class="m-l-md">操作员：${log.logName}</span><span class="m-l-md">操作内容：${log.logContent}</span>
																	</div>
																</h4>
															</div>
														</div>
													</div>
												</c:forEach>	
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
		</div>

	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/h-ui/js/H-ui.js"></script>
	<script type="text/javascript" >
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "//hm.baidu.com/hm.js?080836300300be57b7f34f4b3e97d911";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();
		var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://"
				: " http://");
		document
				.write(unescape("%3Cscript src='"
						+ _bdhmProtocol
						+ "hm.baidu.com/h.js%3F080836300300be57b7f34f4b3e97d911' type='text/javascript'%3E%3C/script%3E"));
	</script>
</body>
</html>