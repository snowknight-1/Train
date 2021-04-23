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
<meta charset="UTF-8">
<title>中国铁路12306</title>
<link rel="shortcut icon"
	href="https://www.12306.cn/index/img/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="css/iconfont-2.css" />
<link rel="stylesheet" href="css/index_y_v3000.css">

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

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
						style="width: 420px;height: 28px;border: 1px darkgray solid;"
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
							href="Login.jsp" id="is_login"
							style="font-size: 13px;text-decoration: none;">登录</a>
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
						src="img/act2.jpg" /> </a>
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
									href="javascript:is_login_alter()">退票</a>
								</li>
								<li class="nav_res"><a name="g_href" data-type="2"
									href="javascript:is_login_alter()">改签</a>
								</li>
								<li class="nav_chg"><a name="g_href" data-type="2"
									href="javascript:is_login_alter()">变更到站</a>
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
						src="img/act2.jpg" /> </a>
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
						src="img/act2.jpg" /> </a>
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

		<!--页面主体  开始-->
		<div class="content" id="main_content" style="min-height: 830px;">
			<!--支付提示 开始-->
			<div class="t-succ t-lock">
				<div class="pay-tips" id="time">
					<span class="i-lock"></span>
					<h3>
						<span> 席位已锁定，请在<span style="color: red">30</span>
							分钟内进行支付，完成网上购票。 <span>支付剩余时间：<strong id="ShowTime"
								class="colorA"><strong style="color: red">29分30秒</strong>
							</strong> </span> </span>
					</h3>
				</div>
			</div>

			<!--订单信息 开始-->
			<div class="layout b-info" id="order">
				<div class="lay-hd">订单信息</div>
				<div class="lay-bd">
					<div class="info" id="show_title_ticket">

						<strong class="mr5">2020-05-30（周六）</strong> <strong class="mr5">T212
							次 </strong> <strong class="ml5">杭州东</strong>站<strong>（05:50开）—上海南</strong>站（

						08:18到）
					</div>
					<table class="table-a" id="table_list">
						<tbody>
							<tr>
								<th width="40" rowspan="1" colspan="1"><strong>序号</strong>
								</th>
								<th width="75" rowspan="1" colspan="1"><strong>姓名</strong>
								</th>
								<th width="140" rowspan="1" colspan="1"><strong>证件类型</strong>
								</th>
								<th width="210" rowspan="1" colspan="1"><strong>证件号码</strong>
								</th>
								<th width="140" rowspan="1" colspan="1"><strong>票种</strong>
								</th>
								<th width="70" rowspan="1" colspan="1"><strong>席别</strong>
								</th>
								<th width="70" rowspan="1" colspan="1"><strong>车厢</strong>
								</th>
								<th width="70" rowspan="1" colspan="1"><strong>席位号</strong>
								</th>
								<th rowspan="1" colspan="1"><strong>票价（元）</strong></th>
							</tr>
						</tbody>

						<tbody id="show_ticket_message">
							<tr>
								<td align="center">1</td>
								<td title="小明">小明</td>
								<td>中国居民身份证</td>
								<td>5************4</td>
								<td>成人票</td>
								<td>硬卧</td>
								<td>17</td>

								<td>19号下铺</td>

								<td>78.5 元</td>
							</tr>
						</tbody>
					</table>

					<div class="total-box">
						<div class="item">
							总票价：<span class="price" id="total_ticket_price">78.5 元</span>
						</div>
					</div>

					<div style="">

						<button type="button" id="cancelButton" onclick="payplay_alert()">取消订单</button>
						<input type="button" id="payButton" onclick="payplay_alert()"
							value="网上支付">
					</div>
				</div>
				<script type="text/javascript">
					function is_login_alter() {
						var logininfo = '<%=session.getAttribute("login_info")%>';
						if (logininfo == 'succeed') {
							window.location.href = "search_2.jsp";
						} else {
							// 			alert(logininfo);
							alert("请先登录");
							window.location.href = "Login.jsp";
						}
					};
					window.onload = function() {
						var logininfo = '<%=session.getAttribute("login_info")%>';
						// 			console.log(logininfo);
						if (logininfo == 'succeed') {
							var user_name = '<%=session.getAttribute("user_name")%>';
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
					function payplay_alert() {
						alert("交易成功" + "\n" + "感谢您的交易，祝您旅途愉快！");
						window.location.href = "index.jsp";
					}

					function cancelplay_alert() {
						alert("订单取消" + "\n" + "欢迎您的下次交易！")
					}
				</script>
</body>
</html>
