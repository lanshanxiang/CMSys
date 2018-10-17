<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns:ng="http://angularjs.org">
	<!--<![endif]-->

	<head>
		<title>金蝶社区</title>
		<meta charset="utf-8">
		<meta name="description" content="金蝶社区是金蝶产品官方服务互动门户，为金蝶产品用户提供官方服务及产品知识，是用户互动交流的主要平台及国内领先的企业管理软件垂直社区。" />
		<meta name="keywords" content="金蝶,金蝶软件,金蝶社区,金蝶云,ERP管理系统,财务管理,金蝶服务,金蝶产品,知识">
		<meta itemprop="name" content="金蝶社区" />
		<meta itemprop="image" content="http://clubimg.kingdee.com/club/attachments/school/images/imgupload/20170727quF8C1ruZPRzdTnh.png" />
		<meta name="description" itemprop="description" content="金蝶社区是金蝶产品官方服务互动门户，为金蝶产品用户提供官方服务及产品知识，是用户互动交流的主要平台及国内领先的企业管理软件垂直社区。" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta name="renderer" content="webkit|ie-compile|ie-stand">
		<script type="text/javascript">
			var Host = 'club.kingdee.com'; //当前域名
			var clubHost = 'http://club.kingdee.com/club/'; //社区应用的路径
			var jsPath = 'club/js'; //社区应用的js路径
			var cssPath = 'http://club.kingdee.com/club/css'; //社区应用的css路径
			var cloudApiUrl = 'https://api.kingdee.com'; //云通行证api地址
			var cloudId = 0; //当前用户的云通行证uid
			var discuz_uid = 0; //discuz id
			var cookiepre = 'uchome_2132_'; // COOKIE前缀
			var cookiedomain = ''; // COOKIE作用域
			var cookiepath = '/'; // COOKIE作用路径
			//云通行证api地址
			var examSystem = 'http://cloudexam.kingdee.com'; //
			var userGuideObj = eval('({"novice_guidance_home":false,"novice_guidance_product":false,"novice_guidance_other":false,"page_tips_help":false,"page_tips_ucenter":false,"page_tips_synchronize":false,"page_tips_favorite":false,"guide_old_version":false})');
		</script>
		<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
		<link type="text/css" rel="stylesheet" href="front/css/base/common.css?v=4125e975">
		<link type="text/css" rel="stylesheet" href="front/css/base/fonts.css?v=31ad3187">
		<link rel="stylesheet" type="text/css" href="front/css/external/idangerous.swiper2.7.6.css?v=05042fdf">
		<link rel="stylesheet" type="text/css" href="front/css/component/home.css?v=f5ec48c8">
		<link rel="stylesheet" type="text/css" href="front/css/external/intro.css?v=31945761">
		
        <link rel="stylesheet" href="css/layui.css" media="all">
		<script src="layer.js"></script>
        <script src="layui.js"></script>

		<script type="text/javascript" src="http://clubimg.kingdee.com/club/attachments/js/vendor/jquery-1.10.2.min.js"></script>
		<script type="text/javascript">
			if(typeof jQuery == 'undefined') {
				document.write(unescape('%3Cscript src=\'/club/js/vendor/jquery-1.10.2.min.js\' type=\'text/javascript\'%3E%3C/script%3E'));
			}
		</script>
		<script type="text/javascript" src="club/js/vendor/modernizr-2.6.2.min.js?v=42306a27"></script>
		<script type="text/javascript" src="http://clubimg.kingdee.com/club/attachments/js/vendor/angular.min.js"></script>
		<script type="text/javascript">
			if(typeof angular == 'undefined') {
				document.write(unescape('%3Cscript src=\'/club/js/vendor/angular.min.js\' type=\'text/javascript\'%3E%3C/script%3E'));
			}
		</script>
		<!-- 使angularjs兼容IE7 -->
		<!--[if lt IE 8]>
    <script src="/club/js/vendor/angular-ie7-support.min.js?v=0f962b2a"></script>
    <![endif]-->
		<script src="club/js/vendor/angular-sanitize.min.js?v=d9c422f7"></script>
		<script type="text/javascript" src="front/js/base/kdc_common.js?v=9fc7d52c"></script>
		<script>
			jq = jQuery.noConflict();
			// angular app
			try {
				angular.module('ie7-support');
				// 使得angularjs兼容IE7
				var app = angular.module('clubApp', ['ie7-support', 'ngSanitize']);
			} catch(err) {
				var app = angular.module('clubApp', ['ngSanitize']);
			}
			//angularjs 的$http并没有加上 X-Requested-With 头信息，这里手动加上
			app.config(['$httpProvider', function($httpProvider) {
				$httpProvider.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';
			}]);

			//统计
			// KDIO.init('club2018',{'uc1':cloudId,'uc2':discuz_uid });
		</script>
	</head>

	<body class="ng-app:clubApp" id="ng-app" ng-app="clubApp">
		<!--[if IE 8]>         <input type="hidden" id="v3_low_ie8"/> <![endif]-->
		<!--[if lt IE 9]>
<p class="u-browse-tips">您的浏览器版本太低，将不能正常浏览社区。请下载 <a href="https://sm.myapp.com/original/Browser/69.0.3497.100_chrome_installer.exe" target="_blank">Google Chrome</a> 浏览器</p>
<![endif]-->

		<script type="text/javascript">
			window.guideObj = {
				value: 2,
				list: [{
					no: 1,
					type: 37,
					borderTop: 190,
					borderLeft: 0,
					borderW: 1180,
					borderHeight: 250,
					pointTop: 439,
					pointLeft: 315,
					infoTop: 479,
					infoLeft: 321,
					infoContent: '欢迎访问新版金蝶社区！请选择你所使用的金蝶产品获取服务。'
				}]
			};

			var myProdList = {};
			var myProdArr = [];
			if(myProdList) {
				if(myProdList.exceed) {
					var exceedObj = myProdList.exceed;
					for(var p in exceedObj) {
						if(exceedObj.hasOwnProperty(p)) {
							myProdArr.push({
								companyName: exceedObj[p]['companyName'],
								productNo: exceedObj[p]['productNo'],
								identityCode: exceedObj[p]['identityCode'],
								productName: exceedObj[p]['productName'],
								productType: exceedObj[p]['productType'],
								productVersion: exceedObj[p]['productVersion'],
								serviceEndDate: exceedObj[p]['serviceEndDate']
							});
						}
					}
				}
				if(myProdList.include) {
					var includeArr = myProdList.include;
					for(var index in includeArr) {
						if(includeArr.hasOwnProperty(index) && includeArr[index]['analyzed_icrms']) {
							var proList = includeArr[index]['analyzed_icrms'];
							for(var p in proList) {
								if(proList.hasOwnProperty(p) && typeof proList[p] == 'object' && proList[p]['productNo']) {
									myProdArr.push({
										companyName: proList[p]['companyName'],
										productNo: proList[p]['productNo'],
										identityCode: proList[p]['identityCode'],
										productName: proList[p]['productName'],
										productType: proList[p]['productType'],
										productVersion: proList[p]['productVersion'],
										serviceEndDate: proList[p]['serviceEndDate']
									});
								}
							}
						}
					}
				}
			}
			if(!myProdArr.length) {
				myProdArr = null;
			}
			myProdList = null;

			jq(function() {
				var bigArr = [40, 45, 50, 55, 60, 65];
				var positionArr = [{
						t: 47,
						l: 218
					}, {
						t: 132,
						l: 180
					}, {
						t: 144,
						l: 100
					}, {
						t: 268,
						l: 56
					}, {
						t: 174,
						l: 290
					},
					{
						t: 89,
						l: 433
					}, {
						t: 275,
						l: 424
					}, {
						t: 229,
						l: 553
					}, {
						t: 167,
						l: 687
					}, {
						t: 55,
						l: 747
					},
					{
						t: 249,
						l: 742
					}, {
						t: 120,
						l: 875
					}, {
						t: 202,
						l: 911
					}, {
						t: 71,
						l: 968
					}, {
						t: 144,
						l: 1031
					}
				];
				var GET_PROFESSER_URL = '/club/clubapi/professor/show?per_page=30&product_id=0';
				jq.ajax({
					type: 'GET',
					url: GET_PROFESSER_URL,
					dataType: 'json',
					success: function(data) {
						if(data && data.errcode == 0 && data.data && data.data.data && data.data.data.length) {
							var professorData = data.data.data;
							var professorLength = Math.min(professorData.length, 15);
							var baLength = bigArr.length;
							var professorHTML = [];
							var prodArrObj = {
								'1': 'EAS',
								'2': '金蝶云·星空',
								'3': 'K/3 WISE',
								'4': 'KIS 旗舰版',
								'5': 'KIS 专业版',
								'6': 'KIS 标准版',
								'7': '精斗云',
								'8': '智慧记',
								'9': 's-HR',
								'10': '管易云',
								'11': '云之家',
							};
							professorData.sort(function() {
								return 0.5 - Math.random()
							});
							positionArr.sort(function() {
								return 0.5 - Math.random()
							});
							bigArr.sort(function() {
								return 0.5 - Math.random()
							});
							for(var i = 0, bi = 0; i < professorLength; i++, bi++) {
								if(bi >= baLength) {
									bi = 0;
								}
								var big = bigArr[bi];
								var top = positionArr[i].t - parseInt(big / 2);
								var left = positionArr[i].l - parseInt(big / 2) + 50; //加50的偏差，因为背景图不是完全宽度
								professorHTML[professorHTML.length] = '<div class="prod-professer-item big-' + big + '" style="top:' + top + 'px;left:' + left + 'px;" >';
								professorHTML[professorHTML.length] = '<a href="/club/newclub/account?clubid=' + professorData[i].club_id + '" target="_blank" class="prod-professer-link">';
								professorHTML[professorHTML.length] = '<img src="/uc_server/avatar.php?uid=' + professorData[i].club_id + '&size=middle" class="prod-professer-avatar">';
								professorHTML[professorHTML.length] = '</a>';
								professorHTML[professorHTML.length] = '<div class="prod-professor-info">';
								professorHTML[professorHTML.length] = '<div class="prod-professor-intro">'
								professorHTML[professorHTML.length] = professorData[i].nickname;
								if(professorData[i].product_id && prodArrObj[professorData[i].product_id]) {
									professorHTML[professorHTML.length] = '<i>' + prodArrObj[professorData[i].product_id] + '</i>';
								}
								professorHTML[professorHTML.length] = '</div>';
								professorHTML[professorHTML.length] = '<div class="prod-professor-des">';
								professorHTML[professorHTML.length] = professorData[i].des;
								professorHTML[professorHTML.length] = '</div>';
								professorHTML[professorHTML.length] = '</div>';
								professorHTML[professorHTML.length] = '<div class="prod-professor-border"></div>';
								professorHTML[professorHTML.length] = '</div>';
							}

							if(professorHTML.length) {
								jq('.prod-professer-list').html(professorHTML.join(''));
							}
						}
					},
					error: function(XMLHttpRequest, textStatus, errorThrown) {

					}
				})

			})
		</script>
		<script type="text/javascript">
			(function() {
				var guideInit = false; //标识是否初始化加载
				var userGuideValue = 0; //标记用户的guide值
				if(userGuideObj) {
					if(!userGuideObj.novice_guidance_other && userGuideObj.novice_guidance_other !== undefined) {
						userGuideValue = userGuideValue ^ 1;
					}
					if(!userGuideObj.novice_guidance_home && userGuideObj.novice_guidance_home !== undefined) {
						userGuideValue = userGuideValue ^ 2;
					}
					if(!userGuideObj.novice_guidance_product && userGuideObj.novice_guidance_product !== undefined) {
						userGuideValue = userGuideValue ^ 4;
					}
				}
				var guideEle;
				var guideObj;
				//当前显示的效果用type来控制：关闭1；下一步2；推送4；中间弹框8；定制弹框16；left32；right64；
				var typeEnum = {
					c: 1,
					n: 2,
					p: 4,
					m: 8,
					u: 16,
					l: 32,
					r: 64
				};

				//关闭引导
				function closeGuide() {
					if(guideEle.length) {
						guideEle.hide();
					}
				}

				//返回社区首页
				function gotoHome() {
					window.location.href = '/club/newclub';
				}

				//推送用户当前显示的guide
				function pushGuide(gCode) {
					gCode || (gCode = '');
					if(!gCode && guideObj && guideObj.value) {
						switch(guideObj.value) {
							case 1:
								gCode = 'novice_guidance_other';
								break;
							case 2:
								gCode = 'novice_guidance_home';
								break;
							case 4:
								gCode = 'novice_guidance_product';
								break;
							default:
								break;
						}
					}
					postUserGuide(gCode);
				}

				function pushToOld() {
					postUserGuide('guide_old_version');
				}

				function postUserGuide(gCode) {
					if(gCode) {
						jq.get('/club/newclub/api/finishBonus?code=' + gCode, function(data) {
							if(console) {
								console.log(data);
							}
						});
					}
				}

				function showGuide() {
					if(!guideInit) {
						guideEle = jq('#g-guide');
					}
					if(guideEle.length == 0) {
						return false;
					}
					if(discuz_uid <= 0) { //未登录
						return false;
					}
					if(window.waitingCertification) { //如果等待认证，退出
						window.backToGuide = true;
						return false;
					}
					if(!window.guideObj) { //没有设置值的页面（这里指非首页，非产品首页）
						window.guideObj = {
							value: 1,
							list: [{
								no: 1,
								type: 21,
								content: '欢迎访问新版金蝶社区！我们提供完善的产品在线服务与知识支持，让产品服务更专业。',
								btnOk: '开始体验',
								btnCancel: '留在本页'
							}]
						};
					}
					guideObj = window.guideObj;
					//例外页面不会弹出
					var exceptionReg = /product\/feedback|auth\/bindmobile|newclub\/jycourse/gm;
					if(exceptionReg.test(location.href)) {
						guideObj.value = -1;
					}
					//当前用户的guide值小于当前页面值，才给出引导
					if(userGuideValue < guideObj.value) {
						//当前显示的效果用type来控制：关闭1；下一步2；推送4；中间弹框8；定制弹框16；
						var guideItem = guideObj.list[0];
						renderGuide(guideItem);
						if(!guideInit && !(guideItem.type & typeEnum.u)) {
							jq('#g-guide').on('click', '.guide-button,.guide-btn-u', function() {
								var ele = jq(this);
								var bNo = ele.data('no');
								var bType = ele.data('type');
								if(bType) {
									bType = parseInt(bType);
								} else {
									bType = 1;
								}
								if(bType & typeEnum.p) {
									pushGuide();
								}
								if(bType & typeEnum.n) {
									if(bNo) {
										bNo = parseInt(bNo);
									} else {
										bNo = 999;
									}
									if(bNo >= guideObj.list.length) {
										closeGuide();
									} else {
										renderGuide(guideObj.list[bNo]);
									}
								}
								if(bType & typeEnum.c) {
									closeGuide();
								}
							});
							guideInit = true;
						}
						if(!(guideItem.type & typeEnum.u)) {
							guideEle.show();
						}
					}
				}

				function renderGuide(guideItem) {
					if(guideItem) {
						var chtml = '';
						if(guideItem.type & typeEnum.u) {
							pushGuide();
							dialog.confirm('', guideItem.content,
								function() {
									dialog.removeConfirm();
									gotoHome();
								},
								function() {

								}, {
									className: 0,
									type: 0,
									value: guideItem.btnCancel
								}, {
									className: 1,
									type: 1,
									value: guideItem.btnOk
								});
						} else if(guideItem.type & typeEnum.m) {
							chtml += '<div class="guide-bg"></div>';
							chtml += '<div class="guide-alert" style="width:' + guideItem.infoWidth + 'px;height:' + guideItem.infoHeight + 'px;margin-top:' + (-guideItem.infoHeight / 2) + 'px;margin-left:' + (-guideItem.infoWidth / 2) + 'px" >';
							chtml += '<div class="guide-info-text">' + guideItem.infoContent + '</div>';
							if(guideItem.infoImg) {
								chtml += '<img class="guide-info-img" src="' + guideItem.infoImg + '">';
							}
							if(guideItem.kb) {
								chtml += '<div class="guide-info-kb">' + guideItem.kb + 'K币</div>';
							}
							chtml += '<div class="guide-info-control">';
							if(guideItem.btn1Text) {
								chtml += '<div class="guide-btn-u ' + ((guideItem.btn1Style == 'ok' ? 'guide-btn-ok' : '')) + '" data-no="' + guideItem.no + '" data-type="' + guideItem.btn1Type + '" >' + guideItem.btn1Text + '</div>';
							}
							if(guideItem.btn2Text) {

							}
							chtml += '</div>';

							chtml += '</div>';
						} else {
							chtml = '<div class="guide-bg"></div>';
							chtml += '<div class="guide-panel">';

							chtml += '<div class="guide-border" style="top:' + guideItem.borderTop + 'px;left:' + guideItem.borderLeft + 'px;width:' + guideItem.borderW + 'px;height:' + guideItem.borderHeight + 'px" ></div>';
							chtml += '<div class="guide-point" style="top:' + guideItem.pointTop + 'px;left:' + guideItem.pointLeft + 'px" ><div class="u-dot-0"></div><div class="u-dot-1"></div><div class="u-dot-2"></div> </div>';
							if(guideItem.type & typeEnum.l) {
								chtml += '<div class="guide-info" style="top:' + guideItem.infoTop + 'px;left:' + guideItem.infoLeft + 'px" >';
								chtml += '<div class="guide-superscript-l"></div>';
							} else {
								chtml += '<div class="guide-info" style="top:' + guideItem.infoTop + 'px;right:' + guideItem.infoRight + 'px" >';
								chtml += '<div class="guide-superscript-r"></div>';
							}
							chtml += '<div class="guide-text">' + guideItem.infoContent + '</div>';
							chtml += '<div class="guide-button" data-no="' + guideItem.no + '" data-type="' + guideItem.type + '" >' + (guideItem.btnText ? guideItem.btnText : '知道了') + '</div>';
							chtml += '</div>';

							chtml += '</div>';
						}
						guideEle.html(chtml);
					} else {
						return '';
					}
				}

				window.showGuide = showGuide;

				var guideTipsLoaded = false;

				var guideTipsArr = [];
				var guideTipsClose = '';
				var guideTipsPost = {};

				/***
				 * 呈现引导的tips
				 * **/
				function showGuideTips(tipsObj) {
					if(discuz_uid <= 0) { //未登录
						return false;
					}
					if(window.waitingCertification) { //如果等待认证，退出如果等待认证，退出
						window.backToGuideTips = true;
						return false;
					}
					if(tipsObj) {
						tipsObj.no = guideTipsArr.length;
						if(loadGuideTips(tipsObj)) {
							guideTipsArr.push(tipsObj);
						}
					}
					if(!guideTipsLoaded) {
						jq('[guideTipsNo]').each(function() {
							var ele = this;
							var jqEle = jq(ele);
							var eleNo = jqEle.attr('guideTipsNo');
							if(!eleNo) {
								var tObj = {
									no: guideTipsArr.length,
									ele: ele,
									infoTop: parseInt(jqEle.attr('infoTop')),
									infoLeft: parseInt(jqEle.attr('infoLeft')),
									gCode: jqEle.attr('gCode'),
									infoContent: jqEle.attr('infoContent')
								};
								var floatValue = jqEle.attr('float');
								if(floatValue == 'right') {
									tObj.float = 'right';
								}
								if(userGuideObj && userGuideObj[tObj.gCode] && loadGuideTips(tObj)) {
									if(!guideTipsPost[tObj.gCode]) {
										guideTipsPost[tObj.gCode] = 1;
										postUserGuide(tObj.gCode);
									}
									guideTipsArr.push(tObj);
								}
							}
						});

						if(guideTipsArr.length) {
							//给关联的ele绑定事件处理，点击时关闭tips提示
							jq(document).on('click', '[guideTipsNo]', function() {
								var tNo = jq(this).attr('guideTipsNo');
								if(!~guideTipsClose.indexOf(',' + tNo + ',')) {
									closeGuideTips(tNo);
								}
							});

							jq(document).on('click', '.guide-tips-close', function() {
								var tNo = jq(this).data('no');
								if(!~guideTipsClose.indexOf(',' + tNo + ',')) {
									closeGuideTips(tNo);
								}
							});

							jq(window).resize(function() {
								for(var i = 0, l = guideTipsArr.length; i < l; i++) {
									var tipsObj = guideTipsArr[i];
									if(!~guideTipsClose.indexOf(',' + tipsObj.no + ',')) {
										var tipsPosition = KDC.getElementPosition(tipsObj.ele);
										jq('.guide-tips-' + tipsObj.no).css({
											top: tipsObj.infoTop + tipsPosition.offsetTop,
											left: tipsObj.infoLeft + tipsPosition.offsetLeft
										});
									}
								}
							});
						}

						guideTipsLoaded = true;
					}
				}

				function loadGuideTips(tipsObj) {
					if(tipsObj && tipsObj.ele) {
						var tipsEleObj = jq(tipsObj.ele);
						if(tipsEleObj.length == 0) {
							return false;
						}
						var tipsPosition = KDC.getElementPosition(tipsObj.ele);
						// console.log(tipsPosition.offsetTop,tipsPosition.offsetLeft);
						tipsEleObj.attr('guideTipsNo', tipsObj.no);

						var tipsHTML = '';

						tipsHTML += '<div class="guide-tips-info guide-tips-' + tipsObj.no + '" style="top:' + (tipsObj.infoTop + tipsPosition.offsetTop) + 'px;left:' + (tipsObj.infoLeft + tipsPosition.offsetLeft) + 'px" >';

						if(tipsObj.float && tipsObj.float == 'right') {
							tipsHTML += '<div class="guide-tips-superscript-r"></div>';
						} else {
							tipsHTML += '<div class="guide-tips-superscript-l"></div>';
						}

						tipsHTML += '<div class="guide-tips-text">' + tipsObj.infoContent + '</div>';

						tipsHTML += '<div data-no="' + tipsObj.no + '" class="guide-tips-close"></div>';

						tipsHTML += '</div>';
						jq(document.body).append(tipsHTML);
						return true;
					}
					return false;
				}

				function closeGuideTips(no) {
					jq('.guide-tips-' + no).hide();
					guideTipsClose += ',' + no + ',';
				}

				/***
				 * 返回旧版提示
				 * **/
				function tipToOld() {
					if(discuz_uid <= 0) { //未登录
						return false;
					}
					if(window.waitingCertification) { //如果等待认证，退出
						return false;
					}
					//未走新手引导的新用户，不需要提示返回旧版
					//未走新手引导的老用户，也不需要提示返回旧版
					if(guideInit) {
						return false;
					}
					if(userGuideValue > 6 && userGuideObj && userGuideObj.guide_old_version) {
						guideEle = jq('#g-guide');
						if(guideEle.length == 0) {
							return false;
						}
						var positionX = jq('.header-user-link').width();
						var positionY = jq('.header-user-link').height();
						tipsPosition = {
							imgW: 121,
							imgH: 241
						};

						if(positionY < 50) {
							tipsPosition.imgT = positionY - 5;
							tipsPosition.imgR = positionX - 65;

						} else {
							tipsPosition.imgT = positionY - 8;
							tipsPosition.imgR = positionX - 72;
						}
						tipsPosition.pointT = tipsPosition.imgT + tipsPosition.imgH - 13;
						tipsPosition.pointR = tipsPosition.imgR + tipsPosition.imgW - 8;
						tipsPosition.infoT = tipsPosition.imgT + tipsPosition.imgH - 108;
						tipsPosition.infoR = tipsPosition.imgR + tipsPosition.imgW + 12;

						var chtml;
						chtml = '<div class="guide-bg"></div>';
						chtml += '<div class="guide-panel">';
						chtml += '<img src="//clubimg.kingdee.com/club/attachments/school/images/imgupload/20180918EN1cXpFSwtdiAv6a.png" style="position: absolute; z-index: 99999;width:' + tipsPosition.imgW + 'px;height:' + tipsPosition.imgH + 'px;top:' + tipsPosition.imgT + 'px;right:' + tipsPosition.imgR + 'px" >';
						chtml += '<div class="guide-point" style="top:' + tipsPosition.pointT + 'px;right:' + tipsPosition.pointR + 'px" ><div class="u-dot-0"></div><div class="u-dot-1"></div><div class="u-dot-2"></div> </div>';
						chtml += '<div class="guide-info" style="top:' + tipsPosition.infoT + 'px;right:' + tipsPosition.infoR + 'px" >';
						chtml += '<div class="guide-superscript-rb"></div>';
						chtml += '<div class="guide-text">【返回旧版】移至下拉菜单</div>';
						chtml += '<div class="guide-button guide-get-old"  >知道了</div>';
						chtml += '</div>';
						chtml += '</div>';
						guideEle.html(chtml);
						guideEle.show();
						pushToOld();
						jq('.guide-get-old').on('click', function() {
							jq('#g-guide').hide();
							jq('#g-guide').html('');
						});
					}
				}

				window.showGuideTips = showGuideTips;

				window.tipToOld = tipToOld;

			}());
		</script>
		<div class="v2_login_container">
			<div class="v2_login_box">
				<div class="v2_icon icon-close v2_close"></div>
				<div style="height:55px;"></div>
				<div class="v2_title bg_image">
					<span class="v2_icon icon-title"></span>
				</div>
				<div style="height:28px;"></div>
				<div class="v2_line"></div>
				<div id="v2_qrcode">
					<div class="v2_left_top_widget bg_image " data-type="账号登录">
						<span class="v2_icon icon-qrcode"></span>
					</div>
					<div style="margin-top:10px">社区账号/云之家账号</div>
					<div class="rl v2_input_box" style="z-index:3001;position: relative; " id="login_username">
						<span class="v2_icon icon-people v2_people"></span>
						<input type="text" placeholder="请输入手机号码/邮箱/用户名" t="icon-people_active" class="v2_input" autocomplete="off">
						<ul class="v2_remind_name" id="login_username_remind">
						</ul>
					</div>
					<div style="margin-top:12px">密码</div>
					<div class="rl v2_input_box" id="login_password">
						<span class="v2_icon icon-password v2_password"></span>
						<input type="password" class="v2_input password" t="icon-password_active" maxlength=20>
					</div>
					<div id="login_code_box" class="v2_hide">
						<div style="margin-top:12px">验证码</div>
						<div style="margin-top:6px">
							<span id="login_code" class="rl">
                        <input type="text" id="login_code_input" style="width:156px" class="v2_btn v2_code v2_input"  maxlength=4>
                    </span>
							<img id="login_code_img" data-src="/club/auth/captcha" style="width:90px;height:48px;margin-left: 20px;vertical-align: middle;" />
							<span id="code_change" style="font-size:12px;float:right;margin-top:16.5px;" class="v2_blue_color">换一换</span>
						</div>
					</div>
					<img src="club/images/login/people_active.png" class="v2_hide">
					<img src="club/images/login/password_active.png" class="v2_hide">
					<img src="club/images/login/tick.png" class="v2_hide">
					<div style="margin-top:10px;font-size:12px" class="clearfix">
						<span class="v2_checkbox">记住登录状态</span>
						<a class="v2_forget v2_blue_color" href="https://cloud.kingdee.com/passport/hi/password/forget">忘记密码</a>
					</div>
					<button class="v2_btn v2_btn_blue" id="v2_submit">登     录</button>
					<h3 class="v2_register"><a class="v2_blue_color" href="/club/auth/register" target="_blank">立即注册</a></h3>
					<p class="v2_tips"></p>
					<div class="v2_other_account">
						<span>使用合作账号登录</span>
					</div>
					<ul class="icon-list">
						<li class="v2_icon icon-pt icon-jd icon-JD" data-type="jd"></li>
						<li class="v2_icon icon-pt icon-qq icon-QQ" data-type="qq"></li>
						<li class="v2_icon icon-pt icon-bd icon-baidu" data-type="bd"></li>
						<li class="v2_icon icon-pt icon-wb icon-sina" data-type="wb"></li>
						<li class="v2_icon icon-pt icon-wx icon-wechat" data-type="wx"></li>
					</ul>
				</div>
				<div id="v2_computer" class="v2_hide">
					<div class="v2_left_top_widget  bg_image " data-type="二维码登录">
						<span class="v2_icon icon-computer"></span>
					</div>
					<div class="tc" style="margin-top:30px;font-size:12px">
						快速安全登录
					</div>
					<iframe frameBorder="0" src="" class="cqrcode"></iframe>
					<div class="tc" style="margin-top:24px">
						请使用云之家APP扫描二维码
					</div>
				</div>
			</div>
		</div>

		<div class="g-header extend-m">
			<div class="header-wrap">
				<div class="m-header extend-m">
					<div class="logo-fl">
						<a href="/club/newclub" class="new-logo">

							<span class="icon-kingdee-logo index-logo logo_w"></span>
							<span class="icon-kingdee-logo detail-logo logo_m"></span>
						</a>
					</div>
					<ul class="vertify-list">
						<li class="u-header-selectp">
							<a href="">服务专区</a>
							<i></i>
							<div class="hover-select" style="width: 100px;">
								<ul>
									<li>
										<a href="/club/newclub/services?product_id=2">我要报修</a>
									</li>
									<li>
										<a href="/club/newclub/services?product_id=3">申请住户</a>
									</li>
									<li>
										<a href="/club/newclub/services?product_id=1">申请车位</a>
									</li>
									<li>
										<a href="/club/newclub/services?product_id=4">商家入驻</a>
									</li>
									<li>
										<a href="/club/newclub/services?product_id=8">购买小区</a>
									</li>
								</ul>
							</div>
						</li>
						<li class="w-narrow">
							<a href="/club/newclub/identification">实名认证</a>
						</li>
					</ul>

					<ul class="login">
						<li>
							<a class="v2_login">登录</a>
						</li>
						<li>
							<a class="reg_link" href="/club/auth/register">免费注册</a>
						</li>
					</ul>

					<div class="u-club-wacher">
						公众号
						<div class="m-header-qrcode-main">
							<div class="m-header-qrcode">
								<div class="qrcode-title">金蝶社区微信公众号</div>
								<img class="qrcode-img" src="//clubimg.kingdee.com/club/attachments/school/images/imgupload/20180607d4qQR3FLiEC0UrXc.jpg">
								<div class="qrcode-tip">扫码关注即可获取服务</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="g-content">
			<div class="select-product">
				<div class="m-club-slogan">
					<div class="u-club-slogan">飞跃社区 · 互动门户</div>
					<div>请选择你需要的服务</div>
				</div>
				<div>
					<ul class="product-list" data-step="2" data-intro="选择需要帮助的产品">
						<li class="list-item">
							<a class="list-item" href="know.jsp">我的电费</a>
						</li>
						<li class="list-item">
							<a class="list-item" href="know.jsp">我的水费</a>
						</li>
						<li class="list-item">
							<a class="list-item" href="know.jsp">其他费用</a>
						</li>
						<li class="list-item">
							<a class="list-item" href="know.jsp">我的车位</a>
						</li>
						<br />
						<li class="list-item">
							<a class="list-item" href="know.jsp">维修记录</a>
						</li>
						<li class="list-item">
							<a class="list-item" href="know.jsp">社区公告</a>
						</li>
						<li class="list-item">
							<a class="list-item" href="addLost.jsp">失物招领</a>
						</li>
						<li class="list-item">
							<a class="list-item" href="active.jsp">社区活动</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="m-club-hover">
				<ul class="hover-list">
					<li class="hover-item w-272">
						<div class="hover-num">
							<ul class="hover-num-value hover-help-num" data-num="29738"></ul>
							<span>&nbsp;条</span>
						</div>
						<div class="hover-field">官方知识</div>
					</li>
					<li class="hover-item w-318">
						<div class="hover-num">
							<ul class="hover-num-value hover-course-num" data-num="846"></ul>
							<span>&nbsp;门</span>
						</div>
						<div class="hover-field">视频课程</div>
					</li>
					<li class="hover-item w-318">
						<div class="hover-num">
							<ul class="hover-num-value hover-post-num" data-num="700877"></ul>
							<span>&nbsp;条</span>
						</div>
						<div class="hover-field">分享内容</div>
					</li>
					<li class="hover-item w-272">
						<div class="hover-num">
							<ul class="hover-num-value hover-specialist-num" data-num="218"></ul>
							<span>&nbsp;位</span>
						</div>
						<div class="hover-field">产品专家</div>
					</li>
				</ul>
			</div>
			<div class="m-service-tool">
				<p class="tool-title">服务工具</p>
				<h5>提供最全面的系统管理工具</h5>
				<ul class="tool-list">
					<li class="tool-xgmm">
						<a onclick="serviceTool.modifiPwd()">
							<span class="icon-mima icon-tool">
                    <span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span>
							</span>
							<h3>修改服务密码</h3>
							<div>服务密码用于拨打金蝶热线服务4008-836-836时使用</div>
						</a>
					</li>
					<li class="tool-xkxz">
						<a href="/club/newclub/servicetools/licence/download" target="_blank">
							<span class="icon-xiazai icon-tool">
                <span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span><span class="path7"></span><span class="path8"></span><span class="path9"></span><span class="path10"></span><span class="path11"></span><span class="path12"></span><span class="path13"></span><span class="path14"></span>
							</span>
							<h3>许可下载</h3>
							<div>如损坏或误删除许可可通过此通道重新下载</div>
						</a>
					</li>
					<li class="tool-qypt">
						<a target="_blank" onclick="thirdPart(this)" data-href="https://api.kingdee.com/auth/user/onelogin?redirect_uri=http://cloud.kingdee.com/qy">
							<span class="icon-pingtai icon-tool">
                <span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span><span class="path7"></span><span class="path8"></span><span class="path9"></span><span class="path10"></span><span class="path11"></span><span class="path12"></span>
							</span>
							<h3>企业平台</h3>
							<div>金蝶云企业平台提供在线企业注册及用户注册服务</div>
						</a>
					</li>
					<li class="tool-cpzc">
						<a href="http://reg.kingdee.com/" target="_blank">
							<span class="icon-cpzc icon-tool">
                <span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span><span class="path7"></span><span class="path8"></span><span class="path9"></span><span class="path10"></span><span class="path11"></span>
							</span>
							<h3>产品注册</h3>
							<div>激活产品成为金蝶正式用户</div>
						</a>
					</li>
					<li class="item-last tool-cxzc">
						<a href="http://reg.kingdee.com/rvc/user/rereg/rereginfo" target="_blank">
							<span class="icon-cxzc icon-tool">
                <span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span><span class="path7"></span><span class="path8"></span><span class="path9"></span>
							</span>
							<h3>重新注册</h3>
							<div>如更换中间层服务器或中间层服务器硬盘损坏需要进行重新注册</div>
						</a>
					</li>
					<li class="tool-zhkey">
						<a href="/club/newclub/servicetools/find/cdkey" target="_blank">
							<span class="icon-cdkey icon-tool">
                <span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span>
							</span>
							<h3>找回CDKEY</h3>
							<div>CDKEY（序列号）是您购买产品的密码，此通道含邮箱重置</div>
						</a>
					</li>
					<li class="tool-zbyz">
						<a onclick="serviceTool.validate()">
							<span class="icon-yanzheng icon-tool">
                <span class="path1"></span><span class="path2"></span><span class="path3"></span>
							</span>
							<h3>正版验证</h3>
							<div>查询您所使用的金蝶产品是否正版</div>
						</a>
					</li>
					<li class="tool-xkhb">
						<a onclick="serviceTool.licencePage()">
							<span class="icon-xuke icon-tool">
                <span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span><span class="path7"></span><span class="path8"></span><span class="path9"></span><span class="path10"></span><span class="path11"></span><span class="path12"></span>
							</span>
							<h3>许可合并与拆分</h3>
							<div>支持多个产品合并使用同一个许可文件</div>
						</a>
					</li>
					<li class="tool-ycxz">
						<a target="_blank" href="http://csrc.kingdee.com">
							<span class="icon-yuancheng icon-tool">
                <span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span><span class="path7"></span><span class="path8"></span><span class="path9"></span><span class="path10"></span><span class="path11"></span><span class="path12"></span>
							</span>
							<h3>远程协助</h3>
							<div>通过电脑界面演示指导或远程控制的方式提供服务支持</div>
						</a>
					</li>
					<li class="item-last tool-dsf">
						<a href="/club/newclub/servicetools/thirdParty" target="_blank">
							<span class="icon-sanfang icon-tool">
                <span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span><span class="path7"></span><span class="path8"></span><span class="path9"></span><span class="path10"></span><span class="path11"></span><span class="path12"></span>
							</span>
							<h3>第三方产品加站加模</h3>
							<div>此功能仅适用于天翼和CTBS产品</div>
						</a>
					</li>
				</ul>
			</div>
			<div class="m-new-dynamic">
				<h2>失物招领</h2>
				<h5>展示最新的失物招领信息</h5>
				<ul class="new-dynamic-list" id="swzl">
				
					
				</ul>
			</div>
		</div>
		<div class="g-footer" style="margin-top: 140px;">
			<div class="_footer">
				<div class="links">
					<dl class="iblock">
						<div class="learn_more">
							<dd>
								<span>了解更多</span>
								<a class="child1" href="http://www.kingdee.com?utm_source=club" target="_blank">金蝶官网</a>
								<a class="child2" href="http://mall.kingdee.com" target="_blank">产品商城</a>
								<a class="child3" href="http://www.kingdee.com/company/contact/" target="_blank">金蝶机构</a>
								<a class="child4" href="http://ikd.kingdee.com/" target="_blank">iKD图库</a>
								<a class="child5" href="/club/ue/index" target="_blank">用户调研</a>
								<a class="child6" href="/club/newclub/newCreative" target="_blank">创新杯赛事</a>
								<a class="child7" href="http://q.kingdee.com" target="_blank">轻分析</a>
							</dd>
						</div>
						<div class="friendship_link">
							<dd>
								<span>金蝶产品</span>
								<a class="child1 link_kd" href="http://www.kingdee.com/products/eas/" target="_blank" data-href="https://api.kingdee.com/auth/user/onelogin?redirect_uri=http://www.kingdee.com/" data-type="我的水费">我的水费</a>
								<a class="child2 link_kd" href="http://www.kingdee.com/products/k3cloud/" target="_blank" data-href="https://api.kingdee.com/auth/user/onelogin?redirect_uri=http://www.kingdee.com/" data-type="我的电费">我的电费</a>
								<a class="child3 link_kd" href="http://www.kingdee.com/products/k3wise/" target="_blank" data-href="https://api.kingdee.com/auth/user/onelogin?redirect_uri=http://www.kingdee.com/" data-type="金蝶K/3 WISE">其他费用</a>
								<a class="child4 link_kd" href="http://www.kingdee.com/products/kis/" target="_blank" data-href="https://api.kingdee.com/auth/user/onelogin?redirect_uri=http://www.kingdee.com/" data-type="金蝶KIS系列">我的车位</a>
								<a class="child5 yunpan" target="_blank" onclick="thirdPart(this)" data-href="https://pan.kingdee.com/sso/onetologin?redirect_uri=https%3a%2f%2fpan.kingdee.com%2f" href="https://pan.kingdee.com/sso/onetologin?redirect_uri=https%3a%2f%2fpan.kingdee.com%2f" data-type="云盘">维修记录</a>
								<a class="child6 link_kd" target="_blank" data-type="企业平台" onclick="thirdPart(this)" data-href="https://api.kingdee.com/auth/user/onelogin?redirect_uri=http://cloud.kingdee.com/qy" href="https://api.kingdee.com/auth/user/onelogin?redirect_uri=http://cloud.kingdee.com/qy" class="kd_cloud">社区公告</a>
								<a class="child7" href="http://kdweibo.com/home/?utm_source=&utm_medium=" target="_blank">失物招领</a>
								<a class="child8" href="http://www.jdy.com/" target="_blank">社区活动</a>
							</dd>
							<dd class="second">
								<span></span>
								<a class="child1 link_kd" href="http://www.ik3cloud.com/" target="_blank" onclick="thirdPart(this)" data-href="https://api.kingdee.com/auth/user/onelogin?redirect_uri=http://www.ik3cloud.com/" data-type="金蝶云">金蝶云</a>
								<a class="child2" href="http://www.cargeer.com/" target="_blank">车商悦</a>
								<a class="child3" href="http://assistant.youshang.com" target="_blank">友商网</a>
								<a class="child4" href="http://www.zhihuiji.com/" target="_blank">智慧记</a>
							</dd>
						</div>
						<div class="contact">
							<span class="contact_me">联系我们</span>
							<span class="hotline">4008 836 836（服务）</span>
							<span class="hotline">4008 830 830（销售）</span>
							<span class="hotline">4008 836 836-9（投诉）</span>
							<a id="business" data-href="http://icrmcloud.kingdee.com:81/xt/opportunity/outSource/index.jsp" target="_blank" needLogin>我有商机</a>
							<!--<span class="hotline last">rm@kingdee.com（邮箱）</span>-->
						</div>
					</dl>
					<div class="qr_box img_box fR">
						<p>金蝶社区移动端</p>
						<img src="//clubimg.kingdee.com/club/attachments/school/images/imgupload/20180607d4qQR3FLiEC0UrXc.jpg" alt="金蝶社区移动端" title="金蝶社区移动端">
					</div>
					<div class="qr_box aboult fR">
						<p class="title">关于我们</p>
						<p>金蝶社区是金蝶产品官方服务互动门户，我们服务于金蝶产品用户，聚焦解决产品使用问题、提供产品操作教程、文档与工具，鼓励交流财务及管理信息，推动建立开放共赢企业生态圈。</p>
					</div>
				</div>
				<div class="copy_right">
					<p class="copy_right_en">金蝶版权所有 © 1993- 2018 Kingdee Software (China) Inc. All Rights Reserved 粤ICP备05041751号-18</p>
				</div>
			</div>

			<script>
				jq(function() {

					(function() {
						if(/(bbstest)|(dev)/g.test(location.host)) {
							return;
						}
						var xhr = null;
						if(window.XMLHttpRequest) {
							xhr = new window.XMLHttpRequest();
						} else {
							xhr = new ActiveObject('Microsoft');
						}
						xhr.open('GET', '/glt.php', true);
						xhr.send(null);
						xhr.onreadystatechange = function() {
							if(xhr.readyState == 2 && xhr.status == 200) {
								jQuery('.copy_right_en').append('<b>Beta</b>')
							}
						}
					}());

					if(typeof head_active_tab === 'number') {
						var showHeaderSearch = false;
						var searchPlaceholder = '';
						var searchMod = '';
						switch(head_active_tab) {
							case 0:
								jq('#prod-tab-service').addClass('active');
								break;
							case 1:
								jq('#prod-tab-help').addClass('active');
								break;
							case 2:
								showHeaderSearch = true;
								searchPlaceholder = '';
								searchMod = 'course';
								jq('#prod-tab-school').addClass('active');
								break;
							case 3:
								showHeaderSearch = true;
								searchPlaceholder = '';
								searchMod = 'bbs';
								jq('#prod-tab-forum').addClass('active');
								jq('#u-headersearch-input').attr('placeholder', '搜索你想要的文章');
								break;
							default:
								break;
						}
						if(window.hideHeaderSearch && g_prodInfo && g_prodInfo.product_id && !jq('#m-header-search').length) { //如果全局设置不显示头部搜索框
							showHeaderSearch = false;
						}
						if(showHeaderSearch) {
							jq('#m-header-search').removeClass('hide');
							if(searchPlaceholder) {
								jq('#u-headersearch-input').attr('placeholder', searchPlaceholder);
							}
							if((g_prodInfo && (g_prodInfo.product_id == '7' || g_prodInfo.product_id == '8' || g_prodInfo.product_id == '10' || g_prodInfo.product_id == '11' || g_prodInfo.product_id == '12')) || !discuz_uid || discuz_uid == '0') {
								jq('#m-header-search').css('right', '2px');
							}

							function gotoSearch() {
								var searchTxt = jq('#u-headersearch-input').val();
								searchTxt = jq.trim(searchTxt);
								if(searchTxt && g_prodInfo && g_prodInfo.product_id) {
									// window.open('/club/newclub/search?product_id=' + g_prodInfo.product_id + '&mod='+searchMod+'#'+searchMod+'/' + encodeURIComponent(searchTxt), '_blank');
									if(!discuz_uid || discuz_uid == '0') {
										window._href = '/club/newclub/search?product_id=' + g_prodInfo.product_id + '&mod=' + searchMod + '#' + searchMod + ((searchMod == 'bbs' && FID) ? FID : '') + '/' + encodeURIComponent(searchTxt);
										LoginModule.turntoLogin();
										return false;
									}
									window.location.href = '/club/newclub/search?product_id=' + g_prodInfo.product_id + '&mod=' + searchMod + '#' + searchMod + ((searchMod == 'bbs' && FID) ? FID : '') + '/' + encodeURIComponent(searchTxt);
								}
							}
							jq('#u-headersearch-btn').on('click', gotoSearch);

							jq('#u-headersearch-input').on('keypress', function(event) {
								if(event.keyCode == "13") {
									gotoSearch();
								}
							})

						}
					}

					(function() {
						if(new Date().getTime() > 1536646300000) {
							return;
						}
						var rightValue;
						//时间之内，显示图标
						if(jq('#m-header-search').hasClass('hide')) {
							if(jq('.m-curr-prod').length) {
								if(jq('.prod-bind').length) {
									rightValue = 180;
								} else if(jq('.m-curr-prod').children().length) {
									rightValue = jq('.m-curr-prod').width() + 100;
								} else {
									rightValue = 2;
								}
							} else {
								rightValue = 2;
							}
						} else {
							rightValue = jq('#m-header-search').css('right');
							if(rightValue) {
								rightValue = parseInt(rightValue);
							} else {
								rightValue = 0;
							}
							rightValue += 275;
						}
						jq('.m-header-promotion').css('right', rightValue + 'px');
						jq('.m-header-promotion').show();
					}());

					window.commonFavorite = {
						fileNameRecord: '',
						remove: function remove() {
							jq('.move-cover').remove();
							commonFavorite.selectId = null;
							jq('body').css({
								'overflow': 'auto',
								'marginRight': 0
							});
						},
						reset: function reset() {
							commonFavorite.remove();
							jq.ajax({
								async: false,
								url: '/club/newclub/account/favfolder/list?clubid=' + discuz_uid,
								type: 'get',
								headers: {
									'Content-Type': 'application/json'
								}
							}).done(function(data) {
								if(data.errcode == 0) {
									var newList = '<li class="list-item hidden">' +
										'<img src="http://clubimg.kingdee.com/club/attachments/school/images/imgupload/20171209V3BKSRsgOUF6WgE0.png">' +
										'<div class="m-move-new">' +
										'<input type="text" name="fileName" placeholder="请输入收藏夹名称">' +
										'<a href="javascript:void(0);" class="cancel" onclick="commonFavorite.confirmCancel()"><span></span></a>' +
										'<a href="javascript:void(0);" class="confirm" onclick="commonFavorite.confirmNew()"><span></span></a>' +
										'<p class="red hidden">收藏夹重名</p>' +
										'</div></li>';
									var listHtml = '<li class="list-item" folderId="0" onclick="commonFavorite.selectFoler(this)">' +
										'<img src="http://clubimg.kingdee.com/club/attachments/school/images/imgupload/20171209V3BKSRsgOUF6WgE0.png">' +
										'<p class="list-item-title">我的收藏夹</p>' +
										'</li>';
									commonFavorite.fileNameRecord = data.data.data;
									for(var i = 0; i < data.data.data.length; i++) {
										listHtml += '<li class="list-item" onclick="commonFavorite.selectFoler(this)" folderId="' + data.data.data[i].id + '">' +
											'<img src="http://clubimg.kingdee.com/club/attachments/school/images/imgupload/20171209V3BKSRsgOUF6WgE0.png">' +
											'<p class="list-item-title">' + data.data.data[i].name + '</p>' +
											'</li>';
									}
									var favoriteHtml = '<div class="move-cover"><div class="m-move-content"><div class="m-move-inner"' +
										'<div class="m-move-inner"><p class="m-move-title">收藏到</p>' +
										'<ul class="m-file-list">' +
										newList + listHtml +
										'</ul>' +
										'<div class="m-move-bottom">' +
										'<button class="btn-new" onclick="commonFavorite.newFile()">新建收藏夹</button>' +
										'<button class="btn-cancel" onclick="commonFavorite.remove();">取消</button>' +
										'<button class="btn-confirm" onclick="commonFavorite.conFirmFavorite()">确定</button>' +
										'</div></div></div></div></div>';
									jq('body').append(favoriteHtml);
									jq('body').css({
										'overflow': 'hidden',
										'marginRight': 17 + 'px'
									});
									commonFavorite.selectId = '0';
									commonFavorite.selectName = '我的收藏夹';
								}
							}).fail(function() {
								dialog.alert('', '抱歉，网络错误！');
							});
						},
						newFile: function newFile() { //新建
							jq('.m-move-content .list-item.hidden').removeClass('hidden');
							jq('.m-file-list').scrollTop(0);
						},
						confirmNew: function confirmNew() {
							var newName = jq('.m-move-content .list-item').find('input').val();
							if(newName.length > 0) {
								var renameData = {
									'clubid': discuz_uid,
									'foldername': newName
								};
								var isSame = 0;
								if(newName == '我的收藏夹') {
									var isSame = 1;
								} else {
									for(var i = commonFavorite.fileNameRecord.length - 1; i >= 0; i--) {
										if(newName == commonFavorite.fileNameRecord[i].name) {
											isSame = 1;
										}
									}
								}
								if(isSame) {
									jq('.m-move-new p').removeClass('hidden').text('收藏夹不能同名，请重新命名');
									// dialog.alert('','收藏夹重名');
								} else {
									jq.ajax({
										async: false,
										url: '/club/newclub/account/favfolder/add',
										type: 'post',
										data: JSON.stringify(renameData),
										headers: {
											'Content-Type': 'application/json'
										}
									}).done(function(data) {
										if(data.errcode == 0) {
											commonFavorite.reFreshList();
										} else {
											// dialog.alert('','新建收藏夹失败');
											jq('.m-move-new p').removeClass('hidden').text('新建收藏夹失败')
										}
									}).fail(function() {});
								}
							} else {
								// dialog.alert('','输入新建收藏夹名字');
								jq('.m-move-new p').removeClass('hidden').text('输入新建收藏夹名字')
							}
						},
						confirmCancel: function confirmCancel() {
							jq('.m-move-content .list-item').eq(0).addClass('hidden');
						},
						selectFoler: function selectFoler(evt) {
							jq('.m-move-content .list-item').removeClass('select');
							jq(evt).addClass('select');
							commonFavorite.selectId = jq(evt).attr('folderId');
							commonFavorite.selectName = jq(evt).find('p').text();
						},
						conFirmFavorite: function conFirmFavorite(callback) {
							if(commonFavorite.selectId) {
								this.callback(commonFavorite.selectId, commonFavorite.selectName);
							} else {
								dialog.alert('', '请选择收藏夹');
							}
						},
						reFreshList: function reFreshList() {
							jq.ajax({
								async: false,
								url: '/club/newclub/account/favfolder/list?clubid=' + discuz_uid,
								type: 'get',
								headers: {
									'Content-Type': 'application/json'
								}
							}).done(function(data) {
								if(data.errcode == 0) {
									var newList = '<li class="list-item hidden">' +
										'<img src="http://clubimg.kingdee.com/club/attachments/school/images/imgupload/20171209V3BKSRsgOUF6WgE0.png">' +
										'<div class="m-move-new">' +
										'<input type="text" name="fileName" placeholder="请输入收藏夹名称">' +
										'<a class="confirm" href="javascript:void(0);" onclick="commonFavorite.confirmCancel()"><span></span></a>' +
										'<a href="javascript:void(0);" class="cancel" onclick="commonFavorite.confirmNew()"><span></span></a>' +
										'<p class="red hidden">收藏夹重名</p>' +
										'</div></li>';
									var listHtml = '<li class="list-item" folderId="0" onclick="commonFavorite.selectFoler(this)">' +
										'<img src="http://clubimg.kingdee.com/club/attachments/school/images/imgupload/20171209V3BKSRsgOUF6WgE0.png">' +
										'<p class="list-item-title">我的收藏夹</p>' +
										'</li>';
									for(var i = 0; i < data.data.data.length; i++) {
										listHtml += '<li class="list-item" onclick="commonFavorite.selectFoler(this)" folderId="' + data.data.data[i].id + '">' +
											'<img src="http://clubimg.kingdee.com/club/attachments/school/images/imgupload/20171209V3BKSRsgOUF6WgE0.png">' +
											'<p class="list-item-title">' + data.data.data[i].name + '</p>' +
											'</li>';
									}
									jq('.m-file-list .list-item').remove();
									jq('.m-file-list').append(newList + listHtml);
									commonFavorite.selectId = data.data.data[0].id;
									commonFavorite.selectName = data.data.data[0].name;
								}
							}).fail(function() {});
						},
						submit: function submit(callback) {
							commonFavorite.reset();
							this.callback = callback;
						}
					};

					if(discuz_uid > 0) {
						/***
						 * 引入MD5.js
						 * **/
						var script = document.createElement('script');
						var head = document.getElementsByTagName('head')[0];
						script.src = '/front/js/external/md5.js';
						head.appendChild(script)
						/***
						 * 获取消息
						 * **/
						jq.ajax({
							async: false,
							url: '/club/newclub/message/notification/getunreadnum',
							type: 'get',
							headers: {
								'Content-Type': 'application/json'
							}
						}).done(function(data) {
							var data = jq.parseJSON(data);
							if(data.errcode == 0) {
								var unReadNews = data.data.notifyUnreadNum;
								var unReadPravites = data.data.msgUnreadNum;;
								if(unReadNews || unReadPravites) {
									jq('.already-login li.news').append('<i class="dot"><i>');
								}
								if(unReadNews) {
									jq('.news_about li').eq(0).find('a').append('<i class="dot"><i>');
								}
								if(unReadPravites) {
									jq('.news_about li').eq(1).find('a').append('<i class="dot"><i>');
								}
							}

						}).fail(function() {});
						/***
						 * 我有商机跳转
						 * **/

						jq('#business').on('click', function() {
							var that = this;
							jq.ajax({
								async: false,
								url: '/club/auth/icrminfo',
								type: 'GET',
								dataType: 'json'
							}).done(function(data) {
								if(data.errcode == 0) {
									var addInfo = '?source=' + encodeURI('外部推荐-金蝶社区') + '&hash=' + jq.md5(data.data.phone + "5998498670981230171");
									/*当前用户手机号*/
									if(data.data.phone) {
										addInfo += '&cellephone=' + encodeURI(data.data.phone);
									}
									/*当前用户所属公司*/
									if(data.data.company) {
										addInfo += '&company=' + encodeURI(data.data.company);
									}
									/*当前用户账号(云之家)*/
									if(data.data.cloudNickName) {
										addInfo += '&account=' + encodeURI(data.data.cloudNickName);
									}
									/*当前用户账号(社区)*/
									if(data.data.clubNickName) {
										addInfo += '&name=' + encodeURI(data.data.clubNickName);
									}
									// console.log('http://icrmcloud.kingdee.com:81/xt/opportunity/outSource/index.jsp'+addInfo);
									jq(that).attr('href', 'http://icrmcloud.kingdee.com:81/xt/opportunity/outSource/index.jsp' + addInfo);
								}
							})
						})
						/***
						 * 实名认证弹窗
						 * **/
						if(window.location.pathname != '/club/auth/bindmobile' && getCookie('phoneOrCompany')) {
							if(KDC.localStorage.get('phoneOrCompany') != getCookie('club_token')) {
								KDC.localStorage.set('phoneOrCompany', getCookie('club_token'));
								window.waitingCertification = true;
								dialog.confirm("", "根据国家《网络实名制》规定，为您提供更好的账号保护，请完成实名认证。目前为实行期，4月16日起，账号需完成实名认证才能登录。", function() {
									window.location.href = "/club/auth/bindmobile?redirect=" + escape(window.location.href) + "&type=newclub";
									dialog.removeConfirm();
								}, function() {
									window.waitingCertification = false;
									if(window.backToGuide && window.showGuide) {
										showGuide();
									}
									if(window.backToGuideTips && window.showGuideTips) {
										showGuideTips();
									}
								}, {
									className: 0,
									type: 0,
									value: "以后再说"
								}, {
									className: 1,
									type: 1,
									value: "前往绑定",
									attr: {
										'target': '_blank'
									}
								})
							}
						}
						if(window.tipToOld && window.tipToOld) {
							tipToOld();
						}
					}
					/***
					 * 单点登录
					 * **/
					var thirdCount = 0;
					window.thirdPart = function(evt) {
						var that = evt;
						var _href = jq(evt).attr('data-href');
						var _type = jq(evt).attr('data-type');
						var _noLoginHref = jq(evt).attr('data-noLoginHref');
						if(_href && discuz_uid) {
							if(_type == 'creative' && thirdCount > 1) {
								dialog.alert('', '服务器繁忙，请稍后再试！');
								setTimeout("thirdCount = 0", 60000);
							} else {
								jq.ajax({
										async: false,
										url: '/club/account/authcode',
										type: 'GET',
										dataType: 'json'
									})
									.done(function(data) {
										if(data.code == 200) {
											var authcode = data.data;
											var _url = _href + (_href.search(/\?.*=.*/) > -1 ? '&' : '?') + 'auth_code=' + authcode;
											jq(that).attr('href', _url);

										} else if(_type == 'creative') {
											thirdCount++
											thirdPart(evt);
										} else if(data.code == 401) {
											window.location.href = '/club/auth/logout';
										} else if(data.code == 1000) {
											LoginModule.turntoLogin();
										}
									})
							}

						} else {
							if(_noLoginHref) {
								jq(evt).attr('href', _noLoginHref);
							} else {
								LoginModule.turntoLogin()
							}
						}
					}

					window.avatarManager = (function() {
						function update(t) {
							if(discuz_uid && discuz_uid != '0') {
								var avatarManager = KDC.localStorage.get('avatarManager');
								if(avatarManager) {
									avatarManager = JSON.parse(avatarManager);
								} else {
									avatarManager = {};
								}
								avatarManager[discuz_uid] = t;
								KDC.localStorage.set('avatarManager', JSON.stringify(avatarManager));
							}
						}

						function reload() {
							if(discuz_uid && discuz_uid != '0') {
								var avatarManager = KDC.localStorage.get('avatarManager');
								if(avatarManager) {
									avatarManager = JSON.parse(avatarManager);
									var t = avatarManager[discuz_uid];
									if(t) {
										jq('img').each(function() {
											var imgSrc = jq(this).attr('src');
											if(imgSrc.indexOf('/avatar.php?uid=' + discuz_uid) > -1) {
												imgSrc += '&t=' + t;
												jq(this).attr('src', imgSrc);
											}
										})
									}
								}
							}
						}

						return {
							update: update,
							reload: reload
						}
					})();

					avatarManager.reload();

				});
			</script>
		</div>
		<div id="g-guide" class="g-guide">

		</div>

		<script type="text/javascript" src="front/js/base/main.js?v=117dc66c"></script>
		<script type="text/javascript" src="front/js/external/idangerous.swiper2.7.6.js?v=7d55ecda"></script>
		<script type="text/javascript" src="front/js/component/service_tools.js?v=4398839e"></script>
		<script type="text/javascript" src="front/js/component/run_number.js?v=ab458c3f"></script>
		<script type="text/javascript">
			/*百度统计代码 start*/
			var _bdhmProtocol = (('https:' == document.location.protocol) ? ' https://' : ' http://');
			document.write(unescape('%3Cscript src=\'' + _bdhmProtocol + 'hm.baidu.com/h.js%3F65e708a86ef5df894af1fcf5a9120d13\'  type=\'text/javascript\'%3E%3C/script%3E'));
			/*百度统计代码 end*/
		</script>
		<!-- <script src="/club/js/monitor.js?v=eebdde39"></script> -->
		
		<script>
	layui.use('flow', function(){
		  var $ = layui.jquery; //不用额外加载jQuery，flow模块本身是有依赖jQuery的，直接用即可。
		  var flow = layui.flow;
		  flow.load({
		    elem: '#swzl' //指定列表容器
		    ,isAuto: false
		     ,isLazyimg: true
		    ,done: function(page, next){ //到达临界点（默认滚动触发），触发下一页
		      var lis = [];
		      //以jQuery的Ajax请求为例，请求下一页数据（注意：page是从2开始返回）
		      $.ajax({
     			 url:"${pageContext.request.contextPath}/FrontLostServlet",
     			 type:"get",
     			 data:{
     				 "page":page
     			 },
     			 dataType:"text",
     			 success:function(res){
		        //假设你的列表返回在data集合中
		          var one = res.lastIndexOf("]");
		          var totalPage=res.substring(one+1);
     			  var result=res.substring(0,one+1);
     			  
     			  console.log(result);
     			 var array = JSON.parse(result);
		          layui.each(array, function(index, lost){
		        	  var text = "";
		        	  text += "<li class=\"new-dynamic-item\" style=\"margin-bottom: 300px; width: 300px;\">";
		        	  text += "						<a target=\"_blank\" href=\"#\">";
		        	  text += "							<img src=\"img/1.png\" alt=\"\">";
		        	  text += "							<div class=\"news-subject\">物品名称："+lost.lostGood+"</div>";
		        	  text += "							<div class=\"news-subject\">捡取时间："+lost.lostDate+"</div>";
		        	  text += "							<div class=\"news-subject\">捡取地点："+lost.lostArea+"</div>";
		        	  text += "							<div class=\"news-subject\">捡取人："+lost.lostName+"</div>";
		        	  text += "							<div class=\"news-subject\">捡取人联系电话："+lost.lostTel+"</div>";
		        	  text += "						</a>";
		        	  text += "					</li>";


		            lis.push(text);
		        }); 
		        
		        //执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
		        //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
		        next(lis.join(''), page < totalPage);
     			 }
		      });
		    }
		  });
		});
</script>

	</body>

</html>