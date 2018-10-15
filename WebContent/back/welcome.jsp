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
	href="${pageContext.request.contextPath}/static/h-ui/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/lib/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/lib/icheck/icheck.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/h-ui/skin/default/skin.css"
	id="skin" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/h-ui/css/style.css" />
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

	<nav class="navbar navbar-default">
		<ul class="nav navbar-nav" style="float: right;">
			<li><a href="#" style="border-radius: 50%;"><span
					class="glyphicon glyphicon-cloud"></span>管理员<span class="sr-only">(current)</span></a></li>
		</ul>
	</nav>
	<div class="page-container">
		<div style="height: calc(100% - 110px);">
			<div style="margin: -24px -24px 0px;">
				<div class="pageheader" style="position: relative;">
					<div class="pageHeader___IHxdp hideInBreadcrumb">
						<div class="breadcrumb___56dtg ant-breadcrumb">
							<span><span class="ant-breadcrumb-link"><a href="/">首页</a></span><span
								class="ant-breadcrumb-separator">/</span></span>
						</div>
						<div class="detail___3ZDDG">
							<div class="main___2pVfB">
								<div class="row___1IykG"></div>
								<div class="row___1IykG">
									<div class="content___J55wV">
										<div class="pageHeaderContent___--j2N">
											<div class="avatar___2vuWu">
												<span
													class="ant-avatar ant-avatar-lg ant-avatar-circle ant-avatar-image"
													style="cursor: pointer;"><img
													src="https://img.weixiaoqu.com/images/uploads/201803/eac552510eff73e5301fdbaac4678d69.jpg"></span>
											</div>
											<div class="content___sKI1t">
												<div class="contentTitle___Jkbnh">
													<div class="unrenz___3mVRV">
														管理员<img
															src="https://img.weixiaoqu.com/images/uploads/201806/596ab1260b681933c07689aa8a30cd5c.png">
													</div>
												</div>
												<div>
													<span style="cursor: pointer;">欢迎登录飞跃社区管理系统</span>
												</div>
											</div>
										</div>
									</div>
									<div class="extraContent___3YutV">
										<div class="extraContent___IO4n2">
											<div class="statItem___GwOZH">
												<p>可添加小区</p>
												<p>
													<a href="/data/xiaoqu/xiaoqu-buy"
														style="color: rgba(0, 0, 0, 0.85);">10</a>
												</p>
											</div>
											<div class="statItem___GwOZH">
												<p>可添加楼房</p>
												<p>
													<a href="/wuye/note/buy"
														style="color: rgba(0, 0, 0, 0.85);">1100</a>
												</p>
											</div>
											<div class="statItem___GwOZH">
												<p>可添加车位</p>
												<p>
													<a href="/account/bean_mall/my-bean"
														style="color: rgba(0, 0, 0, 0.85);">112</a>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="content___1PNvF">
					<div class="ant-row"
						style="margin-left: -12px; margin-right: -12px;">
						<div
							class="ant-col-xs-24 ant-col-sm-24 ant-col-md-24 ant-col-lg-24 ant-col-xl-18"
							style="padding-left: 12px; padding-right: 12px;">
							<div
								class="ant-card projectList___38S1Z ant-card-wider-padding ant-card-padding-transition ant-card-contain-grid">
								<div class="ant-card-head">
									<div class="ant-card-head-wrapper">
										<div class="ant-card-head-title">
											<div>
												基础数据<i class="anticon anticon-question-circle-o"
													style="margin-left: 10px;"></i>
											</div>
										</div>
									</div>
								</div>
								<div class="ant-card-body" style="padding: 0px;">
									<div class="ant-card-grid projectGrid___kCG_t">
										<div class="ant-card">
											<div class="ant-card-body" style="padding: 0px;">
												<div class="ant-card-meta">
													<div class="ant-card-meta-detail">
														<div class="ant-card-meta-title">
															<div class="cardTitle___3rQK3">
																<span
																	class="ant-avatar ant-avatar-sm ant-avatar-circle ant-avatar-image"><img
																	src="https://img.weixiaoqu.com/images/uploads/201806/8d08365d197dd07731ae09500cf657c7.png"></span>
																<div class="base_hd___3cZJ5">
																	<span>小区</span><span>${listVillage}个</span>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="projectItemContent___2igPb">
													<a href="/data/xiaoqu-operation/add">添加小区</a><a
														href="/data/xiaoqu/xiaoqu-buy">购买小区</a>
												</div>
											</div>
										</div>
									</div>
									<div class="ant-card-grid projectGrid___kCG_t">
										<div class="ant-card">
											<div class="ant-card-body" style="padding: 0px;">
												<div class="ant-card-meta">
													<div class="ant-card-meta-detail">
														<div class="ant-card-meta-title">
															<div class="cardTitle___3rQK3">
																<span
																	class="ant-avatar ant-avatar-sm ant-avatar-circle ant-avatar-image"><img
																	src="https://img.weixiaoqu.com/images/uploads/201806/822076339d0fcb96f1d6bac3148ad03a.png"></span>
																<div class="base_hd___3cZJ5">
																	<span>楼宇</span><span>${listBuilding}个</span>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="projectItemContent___2igPb">
													<a href="/data/building-operation/add">添加楼宇</a>
												</div>
											</div>
										</div>
									</div>
									<div class="ant-card-grid projectGrid___kCG_t">
										<div class="ant-card">
											<div class="ant-card-body" style="padding: 0px;">
												<div class="ant-card-meta">
													<div class="ant-card-meta-detail">
														<div class="ant-card-meta-title">
															<div class="cardTitle___3rQK3">
																<span
																	class="ant-avatar ant-avatar-sm ant-avatar-circle ant-avatar-image"><img
																	src="https://img.weixiaoqu.com/images/uploads/201806/ecb1d54b6f96399277787fa33055cf29.png"></span>
																<div class="base_hd___3cZJ5">
																	<span>房屋</span><span>${listRoom}个</span>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="projectItemContent___2igPb">
													<a href="/data/house-add/add">添加房屋</a><a
														href="/data/import-data/house">导入房屋</a>
												</div>
											</div>
										</div>
									</div>
									<div class="ant-card-grid projectGrid___kCG_t">
										<div class="ant-card">
											<div class="ant-card-body" style="padding: 0px;">
												<div class="ant-card-meta">
													<div class="ant-card-meta-detail">
														<div class="ant-card-meta-title">
															<div class="cardTitle___3rQK3">
																<span
																	class="ant-avatar ant-avatar-sm ant-avatar-circle ant-avatar-image"><img
																	src="https://img.weixiaoqu.com/images/uploads/201806/0e97f50c5b081ffca52c8b2239bad86e.png"></span>
																<div class="base_hd___3cZJ5">
																	<span>住户</span><span>${listTenement}个</span>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="projectItemContent___2igPb">
													<a href="/data/zhuhu-operation/add">添加住户</a><a
														href="/data/import-data/zhuhu">导入住户</a><a
														href="/data/zhuhu/checking">迁入审核</a>
												</div>
											</div>
										</div>
									</div>
									<div class="ant-card-grid projectGrid___kCG_t">
										<div class="ant-card">
											<div class="ant-card-body" style="padding: 0px;">
												<div class="ant-card-meta">
													<div class="ant-card-meta-detail">
														<div class="ant-card-meta-title">
															<div class="cardTitle___3rQK3">
																<span
																	class="ant-avatar ant-avatar-sm ant-avatar-circle ant-avatar-image"><img
																	src="https://img.weixiaoqu.com/images/uploads/201806/0ff4b748752fa292f928954e2eafd7fc.png"></span>
																<div class="base_hd___3cZJ5">
																	<span>车位</span><span>${listParking}个</span>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="projectItemContent___2igPb">
													<a href="/data/parking-operation/add">添加车位</a><a
														href="/data/import-data/parking">导入车位</a>
												</div>
											</div>
										</div>
									</div>
									<div class="ant-card-grid projectGrid___kCG_t">
										<div class="ant-card">
											<div class="ant-card-body" style="padding: 0px;">
												<div class="ant-card-meta">
													<div class="ant-card-meta-detail">
														<div class="ant-card-meta-title">
															<div class="cardTitle___3rQK3">
																<span
																	class="ant-avatar ant-avatar-sm ant-avatar-circle ant-avatar-image"><img
																	src="https://img.weixiaoqu.com/images/uploads/201806/f1330f58869ffc987fb7254ce1f27132.png"></span>
																<div class="base_hd___3cZJ5">
																	<span>用户</span><span>${listUser}个</span>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="projectItemContent___2igPb">
													<a href="/data/car-operation/add">添加用户</a><a
														href="/data/import-data/car">导入用户</a>
												</div>
											</div>
										</div>
									</div>
									<div class="ant-card-grid projectGrid___kCG_t">
										<div class="ant-card">
											<div class="ant-card-body" style="padding: 0px;">
												<div class="ant-card-meta">
													<div class="ant-card-meta-detail">
														<div class="ant-card-meta-title">
															<div class="cardTitle___3rQK3">
																<span
																	class="ant-avatar ant-avatar-sm ant-avatar-circle ant-avatar-image"><img
																	src="https://img.weixiaoqu.com/images/uploads/201806/cf3fc93d3c0b849dd9596cfa393c9306.png"></span>
																<div class="base_hd___3cZJ5">
																	<span>管理员</span><span>${listManager}个</span>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="projectItemContent___2igPb">
													<a href="/staff/staff-txl/inside">添加管理员</a><a
														href="/data/import-data/contact">导入管理员</a><a
														href="/staff/staff-quanxian">权限管理</a>
												</div>
											</div>
										</div>
									</div>
									<div class="ant-card-grid projectGrid___kCG_t">
										<div class="ant-card">
											<div class="ant-card-body" style="padding: 0px;">
												<div class="ant-card-meta">
													<div class="ant-card-meta-detail">
														<div class="ant-card-meta-title">
															<div class="cardTitle___3rQK3">
																<span
																	class="ant-avatar ant-avatar-sm ant-avatar-circle ant-avatar-image"><img
																	src="https://img.weixiaoqu.com/images/uploads/201806/2273fe28116b1c61f3d9288ca3b718b8.png"></span>
																<div class="base_hd___3cZJ5">
																	<span>商家</span><span>0个</span>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="projectItemContent___2igPb">
													<a href="/shop/shop-ruzhu">入驻审核</a><a
														href="/shop/shop-order">商家订单</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="ant-card activeCard___-2Vpj ant-card-wider-padding"
								style="margin-top: 24px;">
								<div class="ant-card-head">
									<div class="ant-card-head-wrapper">
										<div class="ant-card-head-title">操作日志</div>
										<div class="ant-card-extra">
											<a href="/account/userlog">查看更多</a>
										</div>
									</div>
								</div>
								<div class="ant-card-body" style="padding: 0px;">
									<div class="ant-list ant-list-lg ant-list-split">
										<div class="ant-spin-nested-loading">
											<div class="ant-spin-container">
												<div class="activitiesList___1wmsJ">
													<div class="ant-list-item">
														<div class="ant-list-item-meta">
															<div class="ant-list-item-meta-content">
																<h4 class="ant-list-item-meta-title">
																	<div>
																		<span class="m-l-sm">操作时间：2018-10-15 08:59:51</span><span
																			class="m-l-md">操作员：</span><span class="m-l-md">操作内容：超级管理员
																			2018-10-15 08:59:51登陆了系统</span>
																	</div>
																</h4>
															</div>
														</div>
													</div>
													<div class="ant-list-item">
														<div class="ant-list-item-meta">
															<div class="ant-list-item-meta-content">
																<h4 class="ant-list-item-meta-title">
																	<div>
																		<span class="m-l-sm">操作时间：2018-10-14 14:25:33</span><span
																			class="m-l-md">操作员：</span><span class="m-l-md">操作内容：超级管理员
																			2018-10-14 14:25:33登陆了系统</span>
																	</div>
																</h4>
															</div>
														</div>
													</div>
													<div class="ant-list-item">
														<div class="ant-list-item-meta">
															<div class="ant-list-item-meta-content">
																<h4 class="ant-list-item-meta-title">
																	<div>
																		<span class="m-l-sm">操作时间：2018-10-12 10:48:22</span><span
																			class="m-l-md">操作员：</span><span class="m-l-md">操作内容：超级管理员
																			2018-10-12 10:48:22登陆了系统</span>
																	</div>
																</h4>
															</div>
														</div>
													</div>
													<div class="ant-list-item">
														<div class="ant-list-item-meta">
															<div class="ant-list-item-meta-content">
																<h4 class="ant-list-item-meta-title">
																	<div>
																		<span class="m-l-sm">操作时间：2018-10-12 10:45:38</span><span
																			class="m-l-md">操作员：</span><span class="m-l-md">操作内容：超级管理员
																			2018-10-12 10:45:38登陆了系统</span>
																	</div>
																</h4>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div
							class="ant-col-xs-24 ant-col-sm-24 ant-col-md-24 ant-col-lg-24 ant-col-xl-6"
							style="padding-left: 12px; padding-right: 12px;">
							<div class="ant-card">
								<div class="ant-card-head">
									<div class="ant-card-head-wrapper">
										<div class="ant-card-head-title">我的任务</div>
									</div>
								</div>
								<div class="ant-card-body"
									style="padding-top: 12px; padding-bottom: 12px;">
									<div class="members___yGQya">
										<div class="ant-row"
											style="margin-left: -12px; margin-right: -12px;">
											<div class="ant-col-12"
												style="padding-left: 12px; padding-right: 12px;">
												<a href="/account/wx-qrcode"><span
													class="ant-avatar ant-avatar-sm ant-avatar-circle ant-avatar-image"><img
														src="https://img.weixiaoqu.com/images/uploads/201806/bdab3b71bf3b8c17a3383f86415d09d0.png"></span><span
													class="member___bl94w">上传二维码</span></a>
											</div>
											<div class="ant-col-12"
												style="padding-left: 12px; padding-right: 12px;">
												<a href="/account/index/admin"><span
													class="ant-avatar ant-avatar-sm ant-avatar-circle ant-avatar-image"><img
														src="https://img.weixiaoqu.com/images/uploads/201806/075a62b31e31e56cba42f1b7aa902053.png"></span><span
													class="member___bl94w">上传头像</span></a>
											</div>
											<div class="ant-col-12"
												style="padding-left: 12px; padding-right: 12px;">
												<a href="/alipay/jiekou"><span
													class="ant-avatar ant-avatar-sm ant-avatar-circle ant-avatar-image"><img
														src="https://img.weixiaoqu.com/images/uploads/201806/3d8861fe706b91cf12ab9a1a3256e67c.png"></span><span
													class="member___bl94w">实名认证</span></a>
											</div>
											<div class="ant-col-12"
												style="padding-left: 12px; padding-right: 12px;">
												<a href="/alipay/wyjf"><span
													class="ant-avatar ant-avatar-sm ant-avatar-circle ant-avatar-image"><img
														src="https://img.weixiaoqu.com/images/uploads/201806/5f5944b3a34f478dc9798255fcde0fc6.png"></span><span
													class="member___bl94w">开通物业缴费</span></a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="ant-card" style="margin-top: 24px;">
								<div class="ant-card-head">
									<div class="ant-card-head-wrapper">
										<div class="ant-card-head-title">快速开始</div>
									</div>
								</div>
								<div class="ant-card-body" style="padding: 0px;">
									<div class="linkGroup___1MbV0">
										<a href="/cost/center">收银台</a><a href="/cost/unpay-list">未缴账单</a><a
											href="/cost/payed-list/list">已缴账单</a><a
											href="/cost/cost-notice">缴费通知</a><a href="/wuye/notice/list">小区公告</a>
										<button type="button"
											class="ant-btn ant-btn-primary ant-btn-sm ant-btn-background-ghost">
											<i class="anticon anticon-plus"></i><span>添加</span>
										</button>
									</div>
								</div>
							</div>
							<div class="ant-card" style="margin-top: 24px;">
								<div class="ant-card-head">
									<div class="ant-card-head-wrapper">
										<div class="ant-card-head-title">今日提醒</div>
									</div>
								</div>
								<div class="ant-card-body" style="padding: 15px;">
									<div class="ant-list ant-list-vertical ant-list-split">
										<div class="ant-spin-nested-loading">
											<div class="ant-spin-container">
												<div class="ant-list-item list_item___1Akiy"
													style="border-bottom: none; padding: 5px 12px;">
													<div class="ant-list-item-extra-wrap">
														<div class="ant-list-item-main">
															<div
																class="ant-list-item-content ant-list-item-content-single">费用已超期:</div>
														</div>
														<div class="ant-list-item-extra">
															<span
																class="badge_bg___BXSjv ant-badge ant-badge-not-a-wrapper"><sup
																data-show="true"
																class="ant-scroll-number ant-badge-count" title="0">0</sup></span>
														</div>
													</div>
												</div>
												<div class="ant-list-item list_item___1Akiy"
													style="border-bottom: none; padding: 5px 12px;">
													<div class="ant-list-item-extra-wrap">
														<div class="ant-list-item-main">
															<div
																class="ant-list-item-content ant-list-item-content-single">费用即将到期:</div>
														</div>
														<div class="ant-list-item-extra">
															<span
																class="badge_bg___BXSjv ant-badge ant-badge-not-a-wrapper"><sup
																data-show="true"
																class="ant-scroll-number ant-badge-count" title="0">0</sup></span>
														</div>
													</div>
												</div>
												<div class="ant-list-item list_item___1Akiy"
													style="border-bottom: none; padding: 5px 12px;">
													<div class="ant-list-item-extra-wrap">
														<div class="ant-list-item-main">
															<div
																class="ant-list-item-content ant-list-item-content-single">商家即将到期:</div>
														</div>
														<div class="ant-list-item-extra">
															<span
																class="badge_bg___BXSjv ant-badge ant-badge-not-a-wrapper"><sup
																data-show="true"
																class="ant-scroll-number ant-badge-count" title="0">0</sup></span>
														</div>
													</div>
												</div>
												<div class="ant-list-item list_item___1Akiy"
													style="border-bottom: none; padding: 5px 12px;">
													<div class="ant-list-item-extra-wrap">
														<div class="ant-list-item-main">
															<div
																class="ant-list-item-content ant-list-item-content-single">住户即将到期:</div>
														</div>
														<div class="ant-list-item-extra">
															<span
																class="badge_bg___BXSjv ant-badge ant-badge-not-a-wrapper"><sup
																data-show="true"
																class="ant-scroll-number ant-badge-count" title="0">0</sup></span>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
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
	<script>
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