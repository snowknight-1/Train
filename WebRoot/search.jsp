<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>中国铁路12306</title>
<link rel="shortcut icon"
	href="https://www.12306.cn/index/images/favicon.ico"
	type="image/x-icon" />
<link rel="stylesheet" href="css/index_y_v3000.css">
<link rel="stylesheet" href="css/iconfont.css" />
<link rel="stylesheet" href="css/iconfont_1.css" />
<link rel="stylesheet" href="css/changeTicket.css" />
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
						style="width: 420px;height: 28px;border: 1px darkgray solid;position: relative;top: -9px;"
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
							href="Login.jsp" id="is_login" style="font-size: 13px;text-decoration: none;">登录</a>
						</li>
						<li style="float: left;margin-left: 6px;margin-top: 10px;"><a
							href="Register.jsp" id="is_sign"
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
					href="index.jsp" class="nav-hd">首页</a>
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
		<!--第三个div区域-->
		<div class="wrapper content">
			<div class="breadcrumb">
				当前位置：<a href="./index.html">个人中心</a><span class="sep">&nbsp;&nbsp;>&nbsp;&nbsp;</span><span
					class="active" style="color: #3B99FC;">火车票订单</span>
			</div>
		</div>

		<div class="center-box">
			<ul class="center-menu">
				<li class="menu-item" id="gerenzhongxin">
					<h2 class="menu-tit">
						<a href="./index.html">个人中心</a>
					</h2>
				</li>
				<li class="menu-item">
					<h2 class="menu-tit">
						订单中心<i class="icon icon-switch"></i>
					</h2>
					<ul class="menu-sub">
						<li id="chepiaodingdan"><a href="./train_order.html"
							style="color: #3B99FC;">火车票订单</a></li>
						<li id="houbudingdan"><a href="./lineUp_order.html">候补订单</a></li>
						<li><a name="g_href" data-type="10"
							data-href="queryMyOrder.html" data-redirect="Y"
							href="javascript:;">餐饮•特产</a></li>
						<li id="baoxiandingdan"><a href="./my_insurance.html">保险订单</a></li>
					</ul>
				</li>
				<li id="gerenxingcheng" class="menu-item">
					<h2 class="menu-tit">
						<a href="./personal_travel.html">本人车票</a>
					</h2>
				</li>
				<li class="menu-item">
					<h2 class="menu-tit">
						<a name="g_href" data-type="3" data-href="welcome.html"
							data-redirect="Y" href="javascript:;">会员中心</a>
					</h2>
				</li>
				<li class="menu-item">
					<h2 class="menu-tit">
						个人信息<i class="icon icon-switch"></i>
					</h2>
					<ul class="menu-sub">
						<li id="gerenxinxi"><a href="./information.html">查看个人信息</a></li>
						<li id="zhanghaoanquan"><a href="./userSecurity.html">账号安全</a></li>
						<li id="shoujiheyan"><a href="./userSecurity_bindTel.html">手机核验</a></li>
						<li id="zhanghaozhuxiao"><a href="./accountCancellation.html">账号注销</a></li>
					</ul>
				</li>
				<li class="menu-item">
					<h2 class="menu-tit">
						常用信息管理<i class="icon icon-switch"></i>
					</h2>
					<ul class="menu-sub">
						<li id="cylianxiren"><a href="./passengers.html">乘车人</a></li>
						<li id="chepiaokuaidi"><a href="./address_init.html">车票快递地址</a></li>
					</ul>
				</li>
				<li class="menu-item">
					<h2 class="menu-tit">
						温馨服务<i class="icon icon-switch"></i>
					</h2>
					<ul class="menu-sub">
						<li id="lvkeyuyue"><a href="./icentre_qxyyInfo.html">重点旅客预约</a></li>
						<li id="yishiwupin"><a href="./icentre_lostInfo.html">遗失物品查找</a></li>
						<li id="J-icentre_serviceQuery"><a
							href="./icentre_serviceQuery.html">服务查询</a></li>
					</ul>
				</li>
				<li class="menu-item">
					<h2 class="menu-tit">
						投诉和建议<i class="icon icon-switch"></i>
					</h2>
					<ul class="menu-sub">
						<li id="J-advice_complaintInfo"><a
							href="./advice_complaintInfo.html">投诉</a></li>
						<li id="J-advice_adviceInfo"><a
							href="./advice_adviceInfo.html">建议</a></li>
					</ul>
				</li>
			</ul>
			<!-- 个人中心右侧 -->
			<div class="center-main">
				<!-- 待付款 、 未完成 、 历史订单-->
				<div class="subway-order">
					<div class="panel-tab">
						<div class="tab-hd">
							<ul class="tab-hd-list" id="order_tab">
								<li class="active"><a href="javascript:;">未完成订单 </a></li>
								<li data-type="0"><a href="search_2.jsp">未出行订单 </a></li>
								<li data-type="1"><a href="search_3.jsp">历史订单</a></li>
							</ul>
						</div>
						<div class="tab-bd">
							<!-- 待付款订单 -->
							<div class="tab-item" style="display: block;">
								<!-- 订单排队中 -->
								<!-- 待付款订单列表 -->
								<div class="order-panel order-panel-unpaid">

									<!-- 订单-订单列表头部 -->

									<table class="order-panel-head title-text">
										<colgroup>
											<col class="col-train">
											<col class="col-passenger">
											<col class="col-seat">
											<col class="col-price">
											<col class="col-state">
											<col>
										</colgroup>
										<tr>
											<th>车次信息</th>
												<th style="width: 200px">旅客信息</th>
												<th>席位信息</th>
												<th>票价</th>
												<th>车票状态</th>
												<th>操作</th>
										</tr>
									</table>
									<div>
										<div class="order-item" id="not_complete">
											<!-- 表格 -->
											<%
												int userid = (Integer)session.getAttribute("user_id");
												Class.forName("com.mysql.jdbc.Driver");
												Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/train",
														"root", "123456");
												Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
												response.setContentType("text/html;charset=UTF-8");
												request.setCharacterEncoding("UTF-8");

												String get_order = "SELECT * FROM ticket_order WHERE user_id = ? AND order_state = 0";
												PreparedStatement pstmt = conn.prepareStatement(get_order);
												pstmt.setString(1, String.valueOf(userid));
												
												ResultSet rs = pstmt.executeQuery();
												request.setCharacterEncoding("UTF-8");
												if (rs.next()) {
													rs.previous();
													out.println("<div class='order-item'>");
													while (rs.next()) {
														out.println("<div class='order-item-hd'>");
														out.println("<div class='order-hd-info'>");
														out.println("<span class='txt-light'>订票日期</span>");
														out.println("<span class='dingqiaoDate'>" + rs.getString("setout_date") + "</span>");
														out.println("</div>");
														out.println("<div class='order-hd-info'>");
														out.println("<span class='txt-light'>订单号</span>" + rs.getString("id") + "</div></div>");
														/* =================================================以上是每一个订单的头信息 */
														
														String get_ticket = "SELECT * FROM ticket_detail WHERE order_id = ?";
														PreparedStatement pstmt_ticket = conn.prepareStatement(get_ticket);
														pstmt_ticket.setString(1, rs.getString("id"));

														ResultSet rs_ticket = pstmt_ticket.executeQuery();

														if(rs_ticket != null) {
															out.println("<div class='order-item-bd'>");
															out.println("<table class='order-item-table'>");
															out.println("<tbody>");
															while (rs_ticket.next()) {
																/* 进行订单状态的转换：0未完成；1已出行；2未出行；3已改签；4已退票 */
																out.println("<tr class='has-order-num item-disabled'>");
																out.println("<td class='order-left align-top' rowspan='1' style='width: 230px'>");
																out.println("<div class='order-info-ticket'>");
																out.println("<div class='txt-bold txt-lg'>"+ rs.getString("start_name")+" -> "+rs.getString("end_name")+"&nbsp;&nbsp;" +rs.getString("train_name")+"</div>");
																out.println("<div>"+rs.getString("setout_date")+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+rs_ticket.getString("setout-time")+"</div>");
																out.println("</div></td>");
																
																out.println("<td style='width: 180px'>");
																out.println("<div>" + rs_ticket.getString("passenger_name") + "</div>");
																out.println("<div>" + rs_ticket.getString("card_type") + "</div></td>");

																out.println("<td>");
																out.println("<div>" + rs_ticket.getString("seat_name") + "</div>");
																out.println("<div>" + rs_ticket.getString("seat_type") + "</div></td>");

																out.println("<td>");
																out.println("<div>" + rs_ticket.getString("ticket_type") + "</div>");
																out.println("<div>" + rs_ticket.getString("ticket_price") + "</div></td>");

																out.println("<td>");
																out.println("<div>未完成</div></td>");
																
																out.println("<td>");
																out.println("<div><a href=payOrderServlet?order_id="+rs.getString("id")+">去支付</a></td></tr>");
															}
															out.println("</tbody></table></div>");
														}
														
													}
													out.println("</div>");
												}else{
													out.println("<div class='order-empty'><div class='empty-pic'></div><div class='empty-txt'><p>您没有对应的订单内容哦～</p><p>您可以通过<a class='txt-primary underline' href='index.jsp'>车票预订</a>功能，来制定出行计划。</p></div></div>");
												}
											%>
											
										</div>
										<div class="tips-box mt-lg shao-tips" style="display: block">
											<h4 class="tips-tit ">温馨提示</h4>
											<p>1.席位已锁定，请在指定时间内完成网上支付。</p>
											<p>2.逾期未支付，系统将取消本次交易。</p>
											<p>3.在完成支付或取消本订单之前，您将无法购买其他车票。</p>
											<p>4.未尽事宜详见《铁路旅客运输规程》等有关规定和车站公告。</p>
										</div>
									</div>
								</div>
							</div>
						</div>
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
		
</body>
<%
		if(session.getAttribute("pay_status")!=null){
			%>
<script type="text/javascript" >
	alert("支付成功");
</script>
<%	
	}
	%>
<script src="js/laydate/laydate.js"></script>
<script>
	lay('#version').html('-v' + laydate.v);
	laydate.render({
		elem : '#historyFromDate'
	});
</script>
<script>
	lay('#version').html('-v' + laydate.v);
	laydate.render({
		elem : '#historyToDate'
	});
</script>
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
			if (logininfo == 'succeed'){
				var user_name = '<%=session.getAttribute("user_name")%>';
// 							alert(user_name);
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
</script>
</html>