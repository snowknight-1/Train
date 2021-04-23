<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>User Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/login.css">
<link rel="shortcut icon"
	href="https://www.12306.cn/index/images/favicon.ico"
	type="image/x-icon" />
<link rel="stylesheet" href="css/index_y_v3000.css">
</head>
<body>
	<div style="height: auto;background-color: white;">
		<!--上面第1个大div-->
		<div style="height: 80px;background-color:white;">
			<div
				style="width: 220px;height: 60px;background-color: red;float: left;margin-left: 40px;margin-top: 10px;background: url(img/logo.jpg);">
			</div>
			<div
				style="width: 965px;height: 60px;background-color: blue;float: right;margin-top: 20px;background: url(img/search.jpg) no-repeat;;">
				<div
					style="float: left;width: 460px;height: 30px;background-color: #F8F8F8;margin-left: 130px;margin-top: 5px;">
					<input type="text"
						style="width: 420px;height: 28px;border: 1px darkgray solid;position: relative;top: 2px;"
						placeholder="搜索车票/常旅客/餐饮/相关规章" ; /> <img src="img/searchbtn.jpg" />
				</div>
				<div
					style="width: 180px;height: 35px;background-color:#F8F8F8;float: right;margin-right: 50px;margin-top: 2px;">
					<ul style="list-style: none;">
						<li style="float: left;margin-top: 10px;"><font
							color="#7099FB" size="2">我的12306</font></li>
						<li style="float: left;margin-left: 6px;margin-top: 10px;"><img
							src="img/list_1.jpg" />
						</li>
						<li style="float: left;margin-left: 6px;margin-top: 10px;"><img
							src="img/line.jpg" />
						</li>
						<li style="float: left;margin-left: 6px;margin-top: 10px;"><a
							href="Login.jsp" style="font-size: 13px;text-decoration: none;">登录</a>
						</li>
						<li style="float: left;margin-left: 6px;margin-top: 10px;"><a
							href="Register.jsp"
							style="font-size: 13px;text-decoration: none;">注册</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!--上面第2个大div-->
		<!-- 导航 -->
		<div class="nav-box">
			<ul class="nav1">
				<li id="J-index" class="nav-item nav-item-w1"><a name="g_href"
					data-type="1" data-href="index.html" data-redirect="Y"
					href="index.jsp;" class="nav-hd">首页</a>
				</li>
				<li id="J-chepiao" class="nav-item nav-item-w1"><a
					href="javascript:void(0)" class="nav-hd">车票<img
						src="img/act2.jpg" />
				</a>
					<div class="nav-bd">
						<div class="nav-bd-item nav-col2">
							<h3 class="nav-tit">购买</h3>
							<ul class="nav-con">
								<li class="nav_dan"><a name="g_href" data-type="2"
									data-href="leftTicket/init?linktypeid=dc" data-redirect="Y"
									href="trainquery.jsp">单程</a>
								</li>
								<li class="nav_wang"><a name="g_href" data-type="2"
									data-href="leftTicket/init?linktypeid=wf" data-redirect="Y"
									href="javascript:;">往返</a>
								</li>
								<li><a name="g_href" data-type="2" data-href="lcQuery/init"
									data-redirect="Y" href="javascript:;">接续换乘</a>
								</li>
								<li></li>
							</ul>
						</div>
						<div class="nav-bd-item nav-col2">
							<h3 class="nav-tit">变更</h3>
							<ul class="nav-con">
								<li class="nav_ref"><a name="g_href" data-type="2"
									data-href="view/train_order.html?type=2&typefilt=4"
									data-redirect="Y" href="javascript:is_login_alter()">退票</a>
								</li>
								<li class="nav_res"><a name="g_href" data-type="2"
									data-href="view/train_order.html?type=2&typefilt=2"
									data-redirect="Y" href="javascript:is_login_alter()">改签</a>
								</li>
								<li class="nav_chg"><a name="g_href" data-type="2"
									data-href="view/train_order.html?type=2&typefilt=3"
									data-redirect="Y" href="javascript:is_login_alter()">变更到站</a>
								</li>
								<li></li>
							</ul>
						</div>
						<div class="nav-bd-item nav-col2">
							<h3 class="nav-tit border-none">更多</h3>
							<ul class="nav-con">
								<li><a name="g_href" data-type="1"
									data-href="view/ticket/zt_card.html" data-redirect="Y"
									href="javascript:;">中铁银通卡</a>
								</li>
								<li class="border-none"><a name="g_href" data-type="1"
									data-href="view/ticket/through_train.html" data-redirect="Y"
									href="javascript:;">广九直通车</a>
								</li>
								<li><a name="g_href" data-type="1"
									data-href="view/ticket/railway.html" data-redirect="Y"
									href="javascript:;">市郊快速铁路</a>
								</li>
								<li><a name="g_href" data-type="1"
									data-href="view/ticket/international_train.html"
									data-redirect="Y" href="javascript:;">国际列车</a>
								</li>
							</ul>
						</div>
					</div></li>
				<li id="J-tuangoufuwu" class="nav-item "><a
					href="javascript:void(0) " class="nav-hd ">团购服务 <img
						src="img/act2.jpg" /> </a>
					<div class="nav-bd ">
						<div class="nav-bd-item nav-col6 ">
							<ul class="nav-con ">
								<li><a name="g_href" data-type="1"
									data-href="view/group/group_management.html?type=1"
									data-redirect="Y" href="javascript:;">务工人员</a>
								</li>

								<li><a name="g_href" data-type="1"
									data-href="view/group/group_management.html?type=2"
									data-redirect="Y" href="javascript:;">学生团体</a>
								</li>
							</ul>
						</div>
					</div></li>
				<li id="J-huiyuanfuwu" class="nav-item "><a
					href="javascript:void(0) " class="nav-hd ">会员服务 <img
						src="img/act2.jpg" /> </a>
					<div class="nav-bd ">
						<div class="nav-bd-item nav-col6">
							<ul class="nav-con ">
								<li><a name="g_href" data-type="3" data-href="index.html"
									data-redirect="Y" href="javascript:;">会员管理</a>
								</li>
								<li><a name="g_href" data-type="3" data-href="index.html"
									data-redirect="Y" href="javascript:;">积分账户</a>
								</li>
								<li><a name="g_href" data-type="3" data-href="index.html"
									data-redirect="Y" href="javascript:;">积分兑换</a>
								</li>
								<li><a name="g_href" data-type="3" data-href="index.html"
									data-redirect="Y" href="javascript:;">会员专享</a>
								</li>
								<li class="border-none "><a name="g_href" data-type="3"
									data-href="welcome.html" data-redirect="Y" href="javascript:;">会员中心</a>
								</li>
							</ul>
						</div>
					</div></li>
				<li id="J-zhanchefuwu" class="nav-item "><a
					href="javascript:void(0) " class="nav-hd ">站车服务 <img
						src="img/act2.jpg" />
				</a>
					<div class="nav-bd ">
						<div class="nav-bd-item nav-col4 ">
							<ul class="nav-con ">
								<li><a name="g_href" data-type="2"
									data-href="view/icentre_qxyyInfo.html" data-redirect="Y"
									href="javascript:;">重点旅客预约</a>
								</li>
								<li><a name="g_href" data-type="1"
									data-href="view/station/hand.html" data-redirect="Y"
									href="javascript:;">便民托运</a>
								</li>
								<li><a name="g_href" data-type="1"
									data-href="view/station/shared_Car.html" data-redirect="Y"
									href="javascript:;">共享汽车</a>
								</li>
								<li><a name="g_href" data-type="4" data-href="czyd_2143/"
									data-redirect="Y" href="javascript:;">车站引导</a>
								</li>
								<li><a name="g_href" data-type="2"
									data-href="view/icentre_lostInfo.html" data-redirect="Y"
									href="javascript:;">遗失物品查找</a>
								</li>
								<li><a name="g_href" data-type="1"
									data-href="view/station/train_intro.html" data-redirect="Y"
									href="javascript:;">动车组介绍</a>
								</li>
								<li><a name="g_href" data-type="1"
									data-href="view/station/custom_PickUp.html" data-redirect="Y"
									href="javascript:;">定制接送</a>
								</li>
								<li><a name="g_href" data-type="4" data-href="zcfc_2548/"
									data-redirect="Y" href="javascript:;">站车风采</a>
								</li>
							</ul>
						</div>
						<!-- <div class="nav-bd-item ">
								<ul class="nav-con ">
									<li>
										<a name="g_href" data-type="4" data-href="czyd_2143/" data-redirect="Y" href="javascript:;">车站引导</a>
									</li>
									<li>
										<a name="g_href" data-type="4" data-href="zcfc_2548/" data-redirect="Y" href="javascript:;">站车风采</a>
									</li>
								</ul>
							</div> -->
					</div></li>
				<li id="J-shanlvfuwu" class="nav-item "><a
					href="javascript:void(0) " class="nav-hd ">商旅服务 <img
						src="img/act2.jpg" /> </a>
					<div class="nav-bd ">
						<div class="nav-bd-item nav-col6 ">
							<ul class="nav-con ">
								<li><a name="g_href" data-type="10" data-href="index.html"
									data-redirect="Y" href="javascript:;">餐饮•特产</a>
								</li>
								<li><a name="g_href" data-type="5" data-href=""
									data-redirect="Y" href="javascript:;">旅游</a></li>
								<li><a name="g_href" data-type="2"
									data-href="view/my_insurance.html" data-redirect="Y"
									href="javascript:;">保险</a>
								</li>
							</ul>
						</div>
					</div></li>
				<li id="J-chuxingzhinan" class="nav-item "><a
					href="javascript:void(0) " class="nav-hd ">出行指南 <img
						src="img/act2.jpg" /> </a>
					<div class="nav-bd ">
						<div class="nav-bd-item nav-col2 ">
							<h3 class="nav-tit ">常见问题</h3>
							<ul class="nav-con ">
								<li><a name="g_href" data-type="2"
									data-href="gonggao/ticketType.html" data-redirect="Y"
									href="javascript:;">车票</a>
								</li>
								<li><a name="g_href" data-type="2"
									data-href="gonggao/ticketWindow.html" data-redirect="Y"
									href="javascript:;">购票</a>
								</li>
								<li><a name="g_href" data-type="2"
									data-href="gonggao/windowEndorse.html" data-redirect="Y"
									href="javascript:;">改签、变更到站</a>
								</li>
								<li><a name="g_href" data-type="2"
									data-href="gonggao/windowRefund.html" data-redirect="Y"
									href="javascript:;">退票</a>
								</li>
								<li><a name="g_href" data-type="2"
									data-href="gonggao/help.html" data-redirect="Y"
									href="javascript:;" class="txt-lighter">更多>></a>
								</li>
								<li></li>
							</ul>
						</div>
						<div class="nav-bd-item nav-col2 ">
							<h3 class="nav-tit ">旅客须知</h3>
							<ul class="nav-con ">
								<li><a name="g_href" data-type="2"
									data-href="gonggao/usersNeedToKnow.html?linktypeid=txt"
									data-redirect="Y" href="javascript:;">铁路电子客票</a>
								</li>
								<li><a name="g_href" data-type="2"
									data-href="gonggao/saleTicketMeans.html?linktypeid=means5"
									data-redirect="Y" href="javascript:;">身份核验</a>
								</li>
								<li><a name="g_href" data-type="2"
									data-href="gonggao/help.html" data-redirect="Y"
									href="javascript:;" class="txt-lighter">更多>></a>
								</li>
								<li></li>
							</ul>
						</div>
						<div class="nav-bd-item nav-col2 ">
							<h3 class="nav-tit border-none ">相关章程</h3>
							<ul class="nav-con ">
								<li><a name="g_href" data-type="2"
									data-href="gonggao/saleTicketMeans.html?linktypeid=means1"
									data-redirect="Y" href="javascript:;">铁路互联网售票暂行办法</a>
								</li>
								<li class="border-none"><a name="g_href" data-type="2"
									data-href="gonggao/saleTicketMeans.html?linktypeid=means2"
									data-redirect="Y" href="javascript:;">铁路旅客运输规程</a>
								</li>
								<li style="text-overflow:ellipsis;white-space:nowrap;"><a
									name="g_href" data-type="2"
									data-href="gonggao/saleTicketMeans.html?linktypeid=means6"
									data-redirect="Y" href="javascript:;">铁路进站乘车禁止和限制携带品公告</a>
								</li>
								<li class="border-none"
									style="text-overflow:ellipsis;white-space:nowrap;"><a
									name="g_href" data-type="2"
									data-href="gonggao/saleTicketMeans.html?linktypeid=means7"
									data-redirect="Y" href="javascript:;">广深港高速铁路跨境旅客运输组织规则</a>
								</li>
								<li><a name="g_href" data-type="2"
									data-href="gonggao/help.html" data-redirect="Y"
									href="javascript:;" class="txt-lighter">更多>></a>
								</li>
								<li></li>
							</ul>
						</div>
					</div></li>
				<li id="J-xinxichaxun" class="nav-item last "><a
					href="javascript:void(0) " class="nav-hd ">信息查询<img
						src="img/act2.jpg" />
				</a>
					<div class="nav-bd ">
						<div class="nav-bd-item nav-col5 ">
							<h3 class="nav-tit border-none ">常用查询</h3>
							<ul class="nav-con ">
								<li><a name="g_href" data-type="2" data-href="zwdch/init"
									data-redirect="Y" href="javascript:;">正晚点</a>
								</li>
								<li><a name="g_href" data-type="2"
									data-href="queryTrainInfo/init" data-redirect="Y"
									href="javascript:;">时刻表</a>
								</li>
								<li><a name="g_href" data-type="2"
									data-href="leftTicketPrice/initPublicPrice" data-redirect="Y"
									href="javascript:;">公布票价</a>
								</li>
								<li><a name="g_href" data-type="1"
									data-href="view/infos/ticket_check.html" data-redirect="Y"
									href="javascript:;">检票口</a>
								</li>
								<li><a name="g_href" data-type="1"
									data-href="view/infos/sale_time.html" data-redirect="Y"
									href="javascript:;">起售时间</a>
								</li>
								<li><a name="g_href"
									data-href="https://forecast.lytq.com/pc.html" data-redirect="N"
									data-target="_blank" href="javascript:;">天气</a>
								</li>
								<li><a name="g_href" data-type="1"
									data-href="view/infos/jiaotong.html" data-redirect="Y"
									href="javascript:;">交通查询</a>
								</li>
								<li><a name="g_href" data-type="2"
									data-href="queryAgencySellTicket/init" data-redirect="Y"
									href="javascript:;">代售点</a>
								</li>
								<li><a name="g_href" data-type="1"
									data-href="view/infos/service_number.html" data-redirect="Y"
									href="javascript:;">客服电话</a>
								</li>
								<li></li>
							</ul>
						</div>
						<div class="nav-bd-item ">
							<ul class="nav-con nav-con-pt ">
								<li class="border-none"><a id="gLink"
									href="javascript:void(0)">最新发布</a>
								</li>
								<li class="border-none"><a name="g_href" data-type="6"
									data-href="queryDishonest/init" data-redirect="Y"
									href="javascript:;">信用信息</a>
								</li>
							</ul>
						</div>
					</div></li>
			</ul>
		</div>

		<!--上面第3个大div-->
		<div class="container div-relative" id='Logindiv3'>
			<div class="jumbotron" id='FromBackground'>
				<h1>铁路12306</h1>
				<br>
				<p class="somewords">用心呵护 放心出行</p>
				<p class="somewords">12306铁路保障出行安全</p>
				<br>
				<p class="btn1">
					<a class="btn btn-lg btn-primary" href="Register.jsp" role="button"
						style='background-color: #3B99FC;border-color: #2676E3;color: white;z-index:9999'>注册
						&raquo;</a>
				</p>
			</div>

			<div class="container div-login" style="width:500px;">
				<form id='formSize' style="width:90%;" class="form-signin" action=./LoginServlet
					method="post">
					<h4 class="form-signin-heading" style='font-size:20px;'>手机号登录</h4>
					<br>
					<div>
						<label for="inputPhoneNumber" class="sr-only">输入手机号</label> <input
							type="text" id="inputPhoneNumber" name="phonenumber"
							class="form-control" placeholder="输入手机号" required autofocus>
						<br> <label for="inputPassword" class="sr-only">输入密码</label>
						<input type="password" id="inputPassword" name="password"
							class="form-control" placeholder="输入密码" required>
					</div>
					<div class="checkbox">
						<label class="agreeItems"> <input type="checkbox"
							name="agree" id="ischecked"> 我同意<a href=""><u>《服务条款》</u> </a>和<a
							href=""><u>《铁路12306隐私政策》</u> </a> </label> <a href="" class="forgetPword">忘记密码</a>
					</div>
					<br>
					<button class="btn btn-md btn-primary btn-block" type="submit"
						id='BtnLogin'
						style='background-color: #3B99FC;border-color: #2676E3;color: white;'>登录</button>
				</form>

			</div>

		</div>
		<!--上面第4个大div-->
		<div style="height: 135px;background-color: white">
			<div
				style="width: 1179px;height:135px;background-color: white;margin: auto;background: url(img/list_4.jpg) no-repeat 40px 40px;">
				<ul style="list-style: none;">
					<li
						style="font-family: '微软雅黑';float: left;margin-left: 20px;margin-top: 80px;">重点旅客预约</li>
					<li
						style="font-family: '微软雅黑';float: left;margin-left: 70px;margin-top: 80px;">遗失物品查找</li>
					<li
						style="font-family: '微软雅黑';float: left;margin-left: 90px;margin-top: 80px;">共享汽车</li>
					<li
						style="font-family: '微软雅黑';float: left;margin-left: 100px;margin-top: 80px;">便民托运</li>
					<li
						style="font-family: '微软雅黑';float: left;margin-left: 110px;margin-top: 80px;">车站引导</li>
					<li
						style="font-family: '微软雅黑';float: left;margin-left: 110px;margin-top: 80px;">站车风采</li>
					<li
						style="font-family: '微软雅黑';float: left;margin-left: 100px;margin-top: 80px;">用户反馈</li>
				</ul>
			</div>
		</div>
		<!--上面第5个大div-->
		<div style="height: 340px;background-color: white;">
			<div
				style="width: 1190px;height:340px;background-color:white;margin: auto;">
				<div style="width: 590px;height: 160px;float: left;">
					<a><img src="img/abanner01.jpg"
						style="width: 590px;height: 160px;" /> </a>
				</div>
				<div
					style="width: 590px;height: 160px;float: right;margin-left: 5px;">
					<a><img src="img/abanner02.jpg"
						style="width: 590px;height: 160px;" /> </a>
				</div>
				<div
					style="width: 590px;height: 160px;float: left;margin-top: 20px;">
					<a><img src="img/abanner03.jpg"
						style="width: 590px;height: 160px;" /> </a>
				</div>
				<div
					style="width: 590px;height: 160px;float: right;margin-top: 20px;">
					<a><img src="img/abanner04.jpg"
						style="width: 590px;height: 160px;" /> </a>
				</div>

			</div>

		</div>
		<!--上面第6个大div-->
		<div style="height: 80px;background-color: white;">
			<div
				style="width: 1190px; height: 80px;background-color: white;margin: auto;">
				<div
					style="width: 75px;height: 50px;background-color: white;float: left;margin-top: 20px;border-bottom: 2px solid dodgerblue;">
					<h4
						style="font-family: '微软雅黑';color: cornflowerblue;line-height: 50px;margin-left: 5px;">铁路旅游</h4>
				</div>
				<div
					style="width: 1115px;height: 50px;background-color: white;float: right;margin-top: 20px;border-bottom: 2px solid gray">
					<h4
						style="font-family: '微软雅黑';color: gray;line-height: 50px;margin-left: 5px;float: right;">更多></h4>
				</div>
			</div>
		</div>

		<!--上面第7个大div-->
		<div style="height: 540px;background-color: white;">
			<div
				style="width: 1190px;height: 540px;background-color: white;margin: auto;">
				<!--8个小的div-->
				<div
					style="width: 290px;height: 245px;background-color: white;border: 1px gainsboro solid;float: left;">
					<!--图文混排效果：-->
					<dl>
						<dt>
							<a><img src="img/pro1.jpg" width="290px" height="160px" /><br />
								<br /> <font
								style="font-family: 宋体;font-size: 14px;margin-left: 6px;">"环西部火车游"高品质旅游版专线列车</font>
							</a>
						</dt>
						<dd style="margin-top: 10px;">
							<font
								style="font-weight: bold;color: darkorange;font-size: 14px;margin-left: 6px;">￥</font>
							<font
								style="font-weight: bold;color: darkorange;font-size: 20px;margin-left: 5px;">2560</font>
						</dd>
					</dl>
				</div>

				<div
					style="width: 290px;height: 245px;background-color: white;border: 1px gainsboro solid;float: left;margin-left: 7px;">
					<!--图文混排效果：-->
					<dl>
						<dt>
							<a><img src="img/pro1.jpg" width="290px" height="160px" /><br />
								<br /> <font
								style="font-family: 宋体;font-size: 14px;margin-left: 6px;">"环西部火车游"高品质旅游版专线列车</font>
							</a>
						</dt>
						<dd style="margin-top: 10px;">
							<font
								style="font-weight: bold;color: darkorange;font-size: 14px;margin-left: 6px;">￥</font>
							<font
								style="font-weight: bold;color: darkorange;font-size: 20px;margin-left: 5px;">2560</font>
						</dd>
					</dl>
				</div>

				<div
					style="width: 290px;height: 245px;background-color: white;border: 1px gainsboro solid;float: left;margin-left: 7px;">
					<!--图文混排效果：-->
					<dl>
						<dt>
							<a><img src="img/pro1.jpg" width="290px" height="160px" /><br />
								<br /> <font
								style="font-family: 宋体;font-size: 14px;margin-left: 6px;">"环西部火车游"高品质旅游版专线列车</font>
							</a>
						</dt>
						<dd style="margin-top: 10px;">
							<font
								style="font-weight: bold;color: darkorange;font-size: 14px;margin-left: 6px;">￥</font>
							<font
								style="font-weight: bold;color: darkorange;font-size: 20px;margin-left: 5px;">2560</font>
						</dd>
					</dl>
				</div>

				<div
					style="width: 290px;height: 245px;background-color: white;border: 1px gainsboro solid;float: left;margin-left: 7px;">
					<!--图文混排效果：-->
					<dl>
						<dt>
							<a><img src="img/pro1.jpg" width="290px" height="160px" /><br />
								<br /> <font
								style="font-family: 宋体;font-size: 14px;margin-left: 6px;">"环西部火车游"高品质旅游版专线列车</font>
							</a>
						</dt>
						<dd style="margin-top: 10px;">
							<font
								style="font-weight: bold;color: darkorange;font-size: 14px;margin-left: 6px;">￥</font>
							<font
								style="font-weight: bold;color: darkorange;font-size: 20px;margin-left: 5px;">2560</font>
						</dd>
					</dl>
				</div>
				<div
					style="margin-top: 15px;width: 290px;height: 245px;background-color: white;border: 1px gainsboro solid;float: left;">
					<!--图文混排效果：-->
					<dl>
						<dt>
							<a><img src="img/pro1.jpg" width="290px" height="160px" /><br />
								<br /> <font
								style="font-family: 宋体;font-size: 14px;margin-left: 6px;">"环西部火车游"高品质旅游版专线列车</font>
							</a>
						</dt>
						<dd style="margin-top: 10px;">
							<font
								style="font-weight: bold;color: darkorange;font-size: 14px;margin-left: 6px;">￥</font>
							<font
								style="font-weight: bold;color: darkorange;font-size: 20px;margin-left: 5px;">2560</font>
						</dd>
					</dl>
				</div>

				<div
					style="margin-top: 15px;width: 290px;height: 245px;background-color: white;border: 1px gainsboro solid;float: left;margin-left: 7px;">
					<!--图文混排效果：-->
					<dl>
						<dt>
							<a><img src="img/pro1.jpg" width="290px" height="160px" /><br />
								<br /> <font
								style="font-family: 宋体;font-size: 14px;margin-left: 6px;">"环西部火车游"高品质旅游版专线列车</font>
							</a>
						</dt>
						<dd style="margin-top: 10px;">
							<font
								style="font-weight: bold;color: darkorange;font-size: 14px;margin-left: 6px;">￥</font>
							<font
								style="font-weight: bold;color: darkorange;font-size: 20px;margin-left: 5px;">2560</font>
						</dd>
					</dl>
				</div>

				<div
					style="margin-top: 15px;width: 290px;height: 245px;background-color: white;border: 1px gainsboro solid;float: left;margin-left: 7px;">
					<!--图文混排效果：-->
					<dl>
						<dt>
							<a><img src="img/pro1.jpg" width="290px" height="160px" /><br />
								<br /> <font
								style="font-family: 宋体;font-size: 14px;margin-left: 6px;">"环西部火车游"高品质旅游版专线列车</font>
							</a>
						</dt>
						<dd style="margin-top: 10px;">
							<font
								style="font-weight: bold;color: darkorange;font-size: 14px;margin-left: 6px;">￥</font>
							<font
								style="font-weight: bold;color: darkorange;font-size: 20px;margin-left: 5px;">2560</font>
						</dd>
					</dl>
				</div>

				<div
					style="margin-top: 15px;width: 290px;height: 245px;background-color: white;border: 1px gainsboro solid;float: left;margin-left: 7px;">
					<!--图文混排效果：-->
					<dl>
						<dt>
							<a><img src="img/pro1.jpg" width="290px" height="160px" /><br />
								<br /> <font
								style="font-family: 宋体;font-size: 14px;margin-left: 6px;">"环西部火车游"高品质旅游版专线列车</font>
							</a>
						</dt>
						<dd style="margin-top: 10px;">
							<font
								style="font-weight: bold;color: darkorange;font-size: 14px;margin-left: 6px;">￥</font>
							<font
								style="font-weight: bold;color: darkorange;font-size: 20px;margin-left: 5px;">2560</font>
						</dd>
					</dl>
				</div>
			</div>
		</div>

		<!--上面第8个大div-->
		<div style="height: 365px;background-color: white;">
			<div
				style="width: 1190px;height: 365px;background-color: white;margin: auto;">
				<!--上面的div-->
				<div style="width: 1190px;height: 40px;background-color: white;">
					<div
						style="width: 390px;height: 40px;background-color: #3B99FC;float: left;">
						<font
							style="font-size: 16px;font-family: '微软雅黑';color: white;line-height: 40px;margin-left: 165px;">
							最新发布</font>
					</div>
					<div
						style="width: 390px;height: 40px;background-color: #EFEFF4;float: left;margin-left: 10px;">
						<font
							style="font-size: 16px;font-family: '微软雅黑';color:black;line-height: 40px;margin-left: 165px;">
							最新发布</font>
					</div>
					<div
						style="width: 390px;height: 40px;background-color: #EFEFF4;float: left;margin-left: 10px;">
						<font
							style="font-size: 16px;font-family: '微软雅黑';color: black;line-height: 40px;margin-left: 165px;">
							最新发布</font>
					</div>
				</div>
				<!--下面的div-->
				<div
					style="border: 1px gainsboro solid;width: 1190px;height: 260px;">
					<!--左侧div-->
					<div
						style="width: 580px;height: 225px;background-color: white;float: left;">
						<ul style="list-style: none;">
							<li
								style="background: url(img/act.jpg) no-repeat 5px 5px;margin-left: 50px;margin-top: 25px;">
								<font
								style="margin-left: 20px;font-family: '微软雅黑';font-size: 14px;">一分钟读懂高铁复兴号</font>
								<span style="font-size: 14px;color: gray;margin-left: 230px;">2018-11-04</span>
							</li>
							<li
								style="background: url(img/act.jpg) no-repeat 5px 5px;margin-left: 50px;margin-top: 20px;">
								<font
								style="margin-left: 20px;font-family: '微软雅黑';font-size: 14px;">一分钟读懂高铁复兴号</font>
								<span style="font-size: 14px;color: gray;margin-left: 230px;">2018-11-04</span>
							</li>
							<li
								style="background: url(img/act.jpg) no-repeat 5px 5px;margin-left: 50px;margin-top: 20px;">
								<font
								style="margin-left: 20px;font-family: '微软雅黑';font-size: 14px;">一分钟读懂高铁复兴号</font>
								<span style="font-size: 14px;color: gray;margin-left: 230px;">2018-11-04</span>
							</li>
							<li
								style="background: url(img/act.jpg) no-repeat 5px 5px;margin-left: 50px;margin-top: 20px;">
								<font
								style="margin-left: 20px;font-family: '微软雅黑';font-size: 14px;">一分钟读懂高铁复兴号</font>
								<span style="font-size: 14px;color: gray;margin-left: 230px;">2018-11-04</span>
							</li>
							<li
								style="background: url(img/act.jpg) no-repeat 5px 5px;margin-left: 50px;margin-top: 20px;">
								<font
								style="margin-left: 20px;font-family: '微软雅黑';font-size: 14px;">一分钟读懂高铁复兴号</font>
								<span style="font-size: 14px;color: gray;margin-left: 230px;">2018-11-04</span>
							</li>
						</ul>
					</div>
					<!--右侧div-->
					<div
						style="width: 595px;height: 225px;background-color: white;float: right;">
						<ul style="list-style: none;">
							<li
								style="background: url(img/act.jpg) no-repeat 5px 5px;margin-left: 50px;margin-top: 25px;">
								<font
								style="margin-left: 20px;font-family: '微软雅黑';font-size: 14px;">一分钟读懂高铁复兴号</font>
								<span style="font-size: 14px;color: gray;margin-left: 230px;">2018-11-04</span>
							</li>
							<li
								style="background: url(img/act.jpg) no-repeat 5px 5px;margin-left: 50px;margin-top: 20px;">
								<font
								style="margin-left: 20px;font-family: '微软雅黑';font-size: 14px;">一分钟读懂高铁复兴号</font>
								<span style="font-size: 14px;color: gray;margin-left: 230px;">2018-11-04</span>
							</li>
							<li
								style="background: url(img/act.jpg) no-repeat 5px 5px;margin-left: 50px;margin-top: 20px;">
								<font
								style="margin-left: 20px;font-family: '微软雅黑';font-size: 14px;">一分钟读懂高铁复兴号</font>
								<span style="font-size: 14px;color: gray;margin-left: 230px;">2018-11-04</span>
							</li>
							<li
								style="background: url(img/act.jpg) no-repeat 5px 5px;margin-left: 50px;margin-top: 20px;">
								<font
								style="margin-left: 20px;font-family: '微软雅黑';font-size: 14px;">一分钟读懂高铁复兴号</font>
								<span style="font-size: 14px;color: gray;margin-left: 230px;">2018-11-04</span>
							</li>
							<li
								style="background: url(img/act.jpg) no-repeat 5px 5px;margin-left: 50px;margin-top: 20px;">
								<font
								style="margin-left: 20px;font-family: '微软雅黑';font-size: 14px;">一分钟读懂高铁复兴号</font>
								<span style="font-size: 14px;color: gray;margin-left: 230px;">2018-11-04</span>
							</li>
							<li style="margin-top: 20px;"><font
								style="color: gray;font-family: '微软雅黑';font-size: 14px;margin-left:475px;">更多></font>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<!--上面第九个大div-->
		<div
			style="height: 195px;background-color:#F8F8F8;margin-top: 20px;margin: 0 auto;">
			<div
				style="height: 160px;background-color:#F8F8F8;margin-left: 20px;padding-top: 20px;">
				<div style="height: 155px;background-color:#F8F8F8;float: left;">
					<h5 style="height: 40px;line-height: 40px;margin-left: 20px;">友情链接</h5>
					<ul style="list-style: none;">
						<li style="float: left;margin-left: 20px;"><img
							src="img/link01.png"
							style="border: 1px solid cadetblue;width: 200px;height: 35px;" />
						</li>
						<li style="margin-left: 240px;"><img src="img/link01.png"
							style="border: 1px solid cadetblue;width: 200px;height: 35px;" />
						</li>
						<li style="float: left;margin-left: 20px;"><img
							src="img/link01.png"
							style="border: 1px solid cadetblue;width: 200px;height: 35px;" />
						</li>
						<li style="margin-left: 240px;"><img src="img/link01.png"
							style="border: 1px solid cadetblue;width: 200px;height: 35px;" />
						</li>
					</ul>
				</div>
				<div
					style="width: 530px;height: 155px;background-color:#F8F8F8;float: left;">
					<ul>
						<li style="margin-left: 20px;margin-top: 25px;float: left;">
							<h5>中国官方铁路微信</h5> <img src="img/download.png" width="80px"
							height="80px" style="margin-top: 5px;margin-left: 15px;" />
						<li>
						<li style="margin-left: 20px;margin-top: 25px;float: left;">
							<h5>中国官方铁路微信</h5> <img src="img/download.png" width="80px"
							height="80px" style="margin-top: 5px;margin-left: 15px;" />
						<li>
						<li style="margin-left: 20px;margin-top: 25px;float: left;">
							<h5>中国官方铁路微信</h5> <img src="img/download.png" width="80px"
							height="80px" style="margin-top: 5px;margin-left: 15px;" />
						<li>
						<li style="margin-left: 20px;margin-top: 25px;float: left;">
							<h5>中国官方铁路微信</h5> <img src="img/download.png" width="80px"
							height="80px" style="margin-top: 5px;margin-left: 15px;" />
						<li>
					</ul>
				</div>
				<div
					style="width: 170px;height: 20px;background-color:#F8F8F8;float: left;">
					<div
						style="background: url(img/textbackground.bmp) no-repeat 5px;width: 230px;height: 90px;margin-top: 40px;margin-left: 5px;">
						<font
							style="font-family: '微软雅黑';font-size: 14px;position: relative;top: 20px;margin-left: 20px;">
							官方APP下载，目前铁路未授<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;权其他网站或APP开展类似服<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;务内容，敬请广大用户注意
						</font>
					</div>
				</div>
			</div>


		</div>
		<!--上面第十个大div-->
		<div
			style="height: 83px;background-color: #666666; text-align:center;">
			<div style="color: white;padding-top: 20px;">
				<span>版权所有&copy;2008-2018</span> <span>中国铁路信息科技有限责任公司</span> <span>中国铁道科学研究院集团有限公司</span>
			</div>
			<div style="color: white;padding-top: 20px;">
				<span>京ICP1555555号</span> <span>|</span> <span>京ICP证123123号</span>
			</div>
		</div>

	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
	<script>
		function is_login_alter(){
			var logininfo = '<%=session.getAttribute("login_info")%>';
			if (logininfo == 'succeed'){
				window.location.href = "search_2.jsp";
			} else {
	// 			alert(logininfo);
				alert("请先登录");
				window.location.href = "Login.jsp";
			}
		};
		window.onload = function(){
			var logininfo = '<%=session.getAttribute("login_info")%>';
			console.log(logininfo);
			if (logininfo == 'succeed'&&logininfo != 'null'){
				var user_name = '<%=session.getAttribute("user_name")%>';
				var user_id = '<%=session.getAttribute("user_id")%>';
				alert(user_id);
				document.getElementById('is_login').innerText = user_name;
				document.getElementById('is_login').href = '#';

				document.getElementById('is_sign').innerText = '登出';
				document.getElementById('is_sign').href = 'UserServlet?action=exit';
			} else {
				document.getElementById('is_login').innerText = '登录';
				document.getElementById('is_login').href = 'Login.jsp';
				document.getElementById('is_sign').innerText = '注册';
				document.getElementById('is_sign').href = 'Register.jsp;';
			}
		};
		$('#BtnLogin').on('click', function() {
			phoneNumber = document.getElementById('inputPhoneNumber').value;
			//验证手机号
			var phone = phoneNumber;
			if (phone == '') {
				alert("请填写手机号码");
				return false;
			} else if (!(/^1(3|4|5|6|7|8|9)\d{9}$/.test(phone))) {
				alert("手机号码有误，请重新填写");
				return false;
			}
			
			var ischeck = document.getElementsByName("agree")[0].checked;
			if (ischeck == false) {
				alert("请仔细阅读协议条款，并勾选为已阅");
				return false;
			}
		})
	</script>
</body>
</html>
