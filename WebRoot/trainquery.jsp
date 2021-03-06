<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Train List</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- bootstrap-CSS -->
<link href="css/font-awesome.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- Fontawesome-CSS -->
<link
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet">

<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://cdn.bootcss.com/moment.js/2.22.0/moment-with-locales.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script type='text/javascript' src='js/jquery-2.2.3.min.js'></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<!-- metatags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- /metatags -->
<!-- online fonts -->
<link
	href="http://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,vietnamese"
	rel="stylesheet">
<link
	href="http://fonts.googleapis.com/css?family=Oxygen:300,400,700&amp;subset=latin-ext"
	rel="stylesheet">
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	rel="stylesheet">

<link rel="stylesheet" href="css/index_y_v3000.css">
<!-- /online fonts -->
<link rel="stylesheet" href="css/iconfont.css" />
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
		<!--?????????1??????div-->
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
						placeholder="????????????/?????????/??????/????????????" ; /> <img src="img/searchbtn.jpg" />
				</div>
				<div
					style="width: 180px;height: 35px;background-color:#F8F8F8;float: right;margin-right: 50px;margin-top: 2px;">
					<ul style="list-style: none;">
						<li style="float: left;margin-top: 10px;"><font
							color="#7099FB" size="2">??????12306</font>
						</li>
						<li style="float: left;margin-left: 6px;margin-top: 10px;"><img
							src="img/list_1.jpg" /></li>
						<li style="float: left;margin-left: 6px;margin-top: 10px;"><img
							src="img/line.jpg" /></li>
						<li style="float: left;margin-left: 6px;margin-top: 10px;"><a
							href="Login.jsp" id="is_login"
							style="font-size: 13px;text-decoration: none;">??????</a></li>
						<li style="float: left;margin-left: 6px;margin-top: 10px;"><a
							href="Register.jsp" id="is_sign"
							style="font-size: 13px;text-decoration: none;">??????</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!--?????????2??????div-->
		<!-- ?????? -->
		<div class="nav-box">
			<ul class="nav1">
				<li id="J-index" class="nav-item nav-item-w1"><a name="g_href"
					data-type="1" data-href="index.html" data-redirect="Y"
					href="index.jsp" class="nav-hd">??????</a></li>
				<li id="J-chepiao" class="nav-item nav-item-w1"><a
					href="javascript:void(0)" class="nav-hd">??????<img
						src="img/act2.jpg" /> </a>
					<div class="nav-bd">
						<div class="nav-bd-item nav-col2">
							<h3 class="nav-tit">??????</h3>
							<ul class="nav-con">
								<li class="nav_dan"><a name="g_href" data-type="2"
									data-href="leftTicket/init?linktypeid=dc" data-redirect="Y"
									href="trainquery.jsp">??????</a></li>
								<li class="nav_wang"><a name="g_href" data-type="2"
									data-href="leftTicket/init?linktypeid=wf" data-redirect="Y"
									href="javascript:;">??????</a></li>
								<li><a name="g_href" data-type="2" data-href="lcQuery/init"
									data-redirect="Y" href="javascript:;">????????????</a></li>
								<li></li>
							</ul>
						</div>
						<div class="nav-bd-item nav-col2">
							<h3 class="nav-tit">??????</h3>
							<ul class="nav-con">
								<li class="nav_ref"><a name="g_href" data-type="2"
									href="javascript:is_login_alter()">??????</a></li>
								<li class="nav_res"><a name="g_href" data-type="2"
									href="javascript:is_login_alter()">??????</a></li>
								<li class="nav_chg"><a name="g_href" data-type="2"
									href="javascript:is_login_alter()">????????????</a></li>
								<li></li>
							</ul>
						</div>
						<div class="nav-bd-item nav-col2">
							<h3 class="nav-tit border-none">??????</h3>
							<ul class="nav-con">
								<li><a name="g_href" data-type="1"
									data-href="view/ticket/zt_card.html" data-redirect="Y"
									href="javascript:;">???????????????</a></li>
								<li class="border-none"><a name="g_href" data-type="1"
									data-href="view/ticket/through_train.html" data-redirect="Y"
									href="javascript:;">???????????????</a></li>
								<li><a name="g_href" data-type="1"
									data-href="view/ticket/railway.html" data-redirect="Y"
									href="javascript:;">??????????????????</a></li>
								<li><a name="g_href" data-type="1"
									data-href="view/ticket/international_train.html"
									data-redirect="Y" href="javascript:;">????????????</a></li>
							</ul>
						</div>
					</div>
				</li>
				<li id="J-tuangoufuwu" class="nav-item "><a
					href="javascript:void(0) " class="nav-hd ">???????????? <img
						src="img/act2.jpg" /> </a>
					<div class="nav-bd ">
						<div class="nav-bd-item nav-col6 ">
							<ul class="nav-con ">
								<li><a name="g_href" data-type="1"
									data-href="view/group/group_management.html?type=1"
									data-redirect="Y" href="javascript:;">????????????</a></li>

								<li><a name="g_href" data-type="1"
									data-href="view/group/group_management.html?type=2"
									data-redirect="Y" href="javascript:;">????????????</a></li>
							</ul>
						</div>
					</div>
				</li>
				<li id="J-huiyuanfuwu" class="nav-item "><a
					href="javascript:void(0) " class="nav-hd ">???????????? <img
						src="img/act2.jpg" /> </a>
					<div class="nav-bd ">
						<div class="nav-bd-item nav-col6">
							<ul class="nav-con ">
								<li><a name="g_href" data-type="3" data-href="index.html"
									data-redirect="Y" href="javascript:;">????????????</a></li>
								<li><a name="g_href" data-type="3" data-href="index.html"
									data-redirect="Y" href="javascript:;">????????????</a></li>
								<li><a name="g_href" data-type="3" data-href="index.html"
									data-redirect="Y" href="javascript:;">????????????</a></li>
								<li><a name="g_href" data-type="3" data-href="index.html"
									data-redirect="Y" href="javascript:;">????????????</a></li>
								<li class="border-none "><a name="g_href" data-type="3"
									data-href="welcome.html" data-redirect="Y" href="javascript:;">????????????</a>
								</li>
							</ul>
						</div>
					</div>
				</li>
				<li id="J-zhanchefuwu" class="nav-item "><a
					href="javascript:void(0) " class="nav-hd ">???????????? <img
						src="img/act2.jpg" /> </a>
					<div class="nav-bd ">
						<div class="nav-bd-item nav-col4 ">
							<ul class="nav-con ">
								<li><a name="g_href" data-type="2"
									data-href="view/icentre_qxyyInfo.html" data-redirect="Y"
									href="javascript:;">??????????????????</a></li>
								<li><a name="g_href" data-type="1"
									data-href="view/station/hand.html" data-redirect="Y"
									href="javascript:;">????????????</a></li>
								<li><a name="g_href" data-type="1"
									data-href="view/station/shared_Car.html" data-redirect="Y"
									href="javascript:;">????????????</a></li>
								<li><a name="g_href" data-type="4" data-href="czyd_2143/"
									data-redirect="Y" href="javascript:;">????????????</a></li>
								<li><a name="g_href" data-type="2"
									data-href="view/icentre_lostInfo.html" data-redirect="Y"
									href="javascript:;">??????????????????</a></li>
								<li><a name="g_href" data-type="1"
									data-href="view/station/train_intro.html" data-redirect="Y"
									href="javascript:;">???????????????</a></li>
								<li><a name="g_href" data-type="1"
									data-href="view/station/custom_PickUp.html" data-redirect="Y"
									href="javascript:;">????????????</a></li>
								<li><a name="g_href" data-type="4" data-href="zcfc_2548/"
									data-redirect="Y" href="javascript:;">????????????</a></li>
							</ul>
						</div>
						<!-- <div class="nav-bd-item ">
								<ul class="nav-con ">
									<li>
										<a name="g_href" data-type="4" data-href="czyd_2143/" data-redirect="Y" href="javascript:;">????????????</a>
									</li>
									<li>
										<a name="g_href" data-type="4" data-href="zcfc_2548/" data-redirect="Y" href="javascript:;">????????????</a>
									</li>
								</ul>
							</div> -->
					</div>
				</li>
				<li id="J-shanlvfuwu" class="nav-item "><a
					href="javascript:void(0) " class="nav-hd ">???????????? <img
						src="img/act2.jpg" /> </a>
					<div class="nav-bd ">
						<div class="nav-bd-item nav-col6 ">
							<ul class="nav-con ">
								<li><a name="g_href" data-type="10" data-href="index.html"
									data-redirect="Y" href="javascript:;">???????????????</a></li>
								<li><a name="g_href" data-type="5" data-href=""
									data-redirect="Y" href="javascript:;">??????</a>
								</li>
								<li><a name="g_href" data-type="2"
									data-href="view/my_insurance.html" data-redirect="Y"
									href="javascript:;">??????</a></li>
							</ul>
						</div>
					</div>
				</li>
				<li id="J-chuxingzhinan" class="nav-item "><a
					href="javascript:void(0) " class="nav-hd ">???????????? <img
						src="img/act2.jpg" /> </a>
					<div class="nav-bd ">
						<div class="nav-bd-item nav-col2 ">
							<h3 class="nav-tit ">????????????</h3>
							<ul class="nav-con ">
								<li><a name="g_href" data-type="2"
									data-href="gonggao/ticketType.html" data-redirect="Y"
									href="javascript:;">??????</a></li>
								<li><a name="g_href" data-type="2"
									data-href="gonggao/ticketWindow.html" data-redirect="Y"
									href="javascript:;">??????</a></li>
								<li><a name="g_href" data-type="2"
									data-href="gonggao/windowEndorse.html" data-redirect="Y"
									href="javascript:;">?????????????????????</a></li>
								<li><a name="g_href" data-type="2"
									data-href="gonggao/windowRefund.html" data-redirect="Y"
									href="javascript:;">??????</a></li>
								<li><a name="g_href" data-type="2"
									data-href="gonggao/help.html" data-redirect="Y"
									href="javascript:;" class="txt-lighter">??????>></a></li>
								<li></li>
							</ul>
						</div>
						<div class="nav-bd-item nav-col2 ">
							<h3 class="nav-tit ">????????????</h3>
							<ul class="nav-con ">
								<li><a name="g_href" data-type="2"
									data-href="gonggao/usersNeedToKnow.html?linktypeid=txt"
									data-redirect="Y" href="javascript:;">??????????????????</a></li>
								<li><a name="g_href" data-type="2"
									data-href="gonggao/saleTicketMeans.html?linktypeid=means5"
									data-redirect="Y" href="javascript:;">????????????</a></li>
								<li><a name="g_href" data-type="2"
									data-href="gonggao/help.html" data-redirect="Y"
									href="javascript:;" class="txt-lighter">??????>></a></li>
								<li></li>
							</ul>
						</div>
						<div class="nav-bd-item nav-col2 ">
							<h3 class="nav-tit border-none ">????????????</h3>
							<ul class="nav-con ">
								<li><a name="g_href" data-type="2"
									data-href="gonggao/saleTicketMeans.html?linktypeid=means1"
									data-redirect="Y" href="javascript:;">?????????????????????????????????</a></li>
								<li class="border-none"><a name="g_href" data-type="2"
									data-href="gonggao/saleTicketMeans.html?linktypeid=means2"
									data-redirect="Y" href="javascript:;">????????????????????????</a></li>
								<li style="text-overflow:ellipsis;white-space:nowrap;"><a
									name="g_href" data-type="2"
									data-href="gonggao/saleTicketMeans.html?linktypeid=means6"
									data-redirect="Y" href="javascript:;">????????????????????????????????????????????????</a></li>
								<li class="border-none"
									style="text-overflow:ellipsis;white-space:nowrap;"><a
									name="g_href" data-type="2"
									data-href="gonggao/saleTicketMeans.html?linktypeid=means7"
									data-redirect="Y" href="javascript:;">???????????????????????????????????????????????????</a></li>
								<li><a name="g_href" data-type="2"
									data-href="gonggao/help.html" data-redirect="Y"
									href="javascript:;" class="txt-lighter">??????>></a></li>
								<li></li>
							</ul>
						</div>
					</div>
				</li>
				<li id="J-xinxichaxun" class="nav-item last "><a
					href="javascript:void(0) " class="nav-hd ">????????????<img
						src="img/act2.jpg" /> </a>
					<div class="nav-bd ">
						<div class="nav-bd-item nav-col5 ">
							<h3 class="nav-tit border-none ">????????????</h3>
							<ul class="nav-con ">
								<li><a name="g_href" data-type="2" data-href="zwdch/init"
									data-redirect="Y" href="javascript:;">?????????</a></li>
								<li><a name="g_href" data-type="2"
									data-href="queryTrainInfo/init" data-redirect="Y"
									href="javascript:;">?????????</a></li>
								<li><a name="g_href" data-type="2"
									data-href="leftTicketPrice/initPublicPrice" data-redirect="Y"
									href="javascript:;">????????????</a></li>
								<li><a name="g_href" data-type="1"
									data-href="view/infos/ticket_check.html" data-redirect="Y"
									href="javascript:;">?????????</a></li>
								<li><a name="g_href" data-type="1"
									data-href="view/infos/sale_time.html" data-redirect="Y"
									href="javascript:;">????????????</a></li>
								<li><a name="g_href"
									data-href="https://forecast.lytq.com/pc.html" data-redirect="N"
									data-target="_blank" href="javascript:;">??????</a></li>
								<li><a name="g_href" data-type="1"
									data-href="view/infos/jiaotong.html" data-redirect="Y"
									href="javascript:;">????????????</a></li>
								<li><a name="g_href" data-type="2"
									data-href="queryAgencySellTicket/init" data-redirect="Y"
									href="javascript:;">?????????</a></li>
								<li><a name="g_href" data-type="1"
									data-href="view/infos/service_number.html" data-redirect="Y"
									href="javascript:;">????????????</a></li>
								<li></li>
							</ul>
						</div>
						<div class="nav-bd-item ">
							<ul class="nav-con nav-con-pt ">
								<li class="border-none"><a id="gLink"
									href="javascript:void(0)">????????????</a></li>
								<li class="border-none"><a name="g_href" data-type="6"
									data-href="queryDishonest/init" data-redirect="Y"
									href="javascript:;">????????????</a></li>
							</ul>
						</div>
					</div>
				</li>
			</ul>
		</div>

		<div class="agile-trains w3layouts-content">
			<div class="container">
				<div class="col-md-12 bann-info">
					<div class="book-a-ticket">
						<div class=" bann-info">
							<form action="./queryservlet" method="post">
								<div class="ban-top">
									<div class="bnr-left" style="float: left;margin-right: 20px">
										<label class="inputLabel">?????????:</label> <input class="city"
											type="text" name="startstation" placeholder="??????????????????"
											required="required" value="${startstation}" />
									</div>

									<div class="bnr-left" style="float: left;margin-right: 20px">
										<label class="inputLabel">?????????:</label> <input class="city"
											type="text" name="endstation" placeholder="??????????????????"
											required="required" value="${endstation}" />
									</div>
									<!-- <div class="clearfix"></div> -->
								</div>
								<div class="ban-bottom">
									<div class="bnr-left"
										style="width:200px; height:15px; float:right; margin-right: 20px; margin-top:5px; padding-top: 5px; position:relative;left: -380px;">
										<label class="inputLabel"
											style=" position:relative;top: -8px;">??????:</label> <input
											class="glyphicon glyphicon-calendar" type="date" name="date"
											placeholder="???????????????" required="required" value="${date}"
											style="position:relative;top:-1px; width:183px; height:42px" />
									</div>
								</div>



								<!-- <div class="clearfix"></div> -->
								<!-- start-date-piker -->
								<link rel="stylesheet" href="css/jquery-ui.css">
								<!-- /End-date-piker -->
						</div>
					</div>
					<div class="search"
						style="padding-top: 40px;position: relative;left: 400px;width:200px;">
						<a href="trains-list.html">
							<button type="submit"
								style="width: 250px; height: 40px; background-color: rgb(241, 241, 241); border:2px solid; border-radius:25px;"
								value="??????">??????</button> </a>
					</div>

					</form>
				</div>
			</div>

		</div>
		<div class="clearfix"></div>
	</div>
	</div>



	<div class="agile-trains-list w3layouts-content">
		<div class="container">
			<div class="w3agile bus-midd">
				<div class="table-responsive">
					<table class="table table-bordered agileinfo">
						<thead>
							<tr>
								<th>??????</th>
								<th>?????????<br> <br>?????????</th>
								<th>????????????<br> <br>????????????</th>
								<th>??????</th>
								<th>?????????</th>
								<th>?????????</th>
								<th>?????????</th>
								<th>????????????</th>
								<th>??????/?????????</th>
								<th>??????</th>
								<th>??????/?????????</th>
								<th>??????</th>
								<th>??????</th>
								<th>??????</th>
								<th>????????????</th>
							</tr>
						</thead>
						<c:forEach var="row" items="${messageList}" varStatus="status">
							<tr>
								<td class="t1"><c:out value="${row.id}" />
								</td>
								<td class="t2"><c:out value="${row.startstation}" /><br>
									<br> <c:out value="${row.endstation}" />
								</td>
								<td class="t3"><c:out value="${row.starttime}" /><br>
									<br> <c:out value="${row.endtime}" />
								</td>
								<td class="t4"><c:out value="${row.date}" />
								</td>
								<td class="t5"><c:out value="${row.shangwu}" /><br> <br>
									<c:out value="${row.shangwup}" />
								</td>
								<td class="t6"><c:out value="${row.yideng}" /><br> <br>
									<c:out value="${row.yidengp}" />
								</td>
								<td class="t7"><c:out value="${row.erdeng}" /><br> <br>
									<c:out value="${row.erdengp}" />
								</td>
								<td class="t8"><c:out value="${row.gaojiruanwo}" /><br>
									<br> <c:out value="${row.gaojiruanwop}" />
								</td>
								<td class="t9"><c:out value="${row.ruanwo}" /><br> <br>
									<c:out value="${row.ruanwop}" />
								</td>
								<td class="t10"><c:out value="${row.dongwo}" /><br> <br>
									<c:out value="${row.dongwop}" />
								</td>
								<td class="t11"><c:out value="${row.yingwo}" /><br> <br>
									<c:out value="${row.yingwop}" />
								</td>
								<td class="t12"><c:out value="${row.ruanzuo}" /><br>
									<br> <c:out value="${row.ruanzuop}" />
								</td>
								<td class="t13"><c:out value="${row.yingzuo}" /><br>
									<br> <c:out value="${row.yingzuop}" />
								</td>
								<td id="try" class="t14"><c:out value="${row.wuzuo}" /><br>
									<br> <c:out value="${row.wuzuop}" />
								</td>
								<td class="t15"><a
									href="order.jsp?date=${row.date}&id=${row.id}&startstation=${row.startstation}&starttime=${row.starttime}&endstation=${row.endstation}&endtime=${row.endtime}&username='<%=session.getAttribute("user_name")%>'"
									data-target="#myModalbook" class="seat-button two"
									id="orderBtn">??????</a> <a href="javascript:is_login_alter();"
									data-target="#myModalbook" class="seat-button two"
									id="orderBtn_nologin">??????</a></td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!--??????????????????div-->
	<div
		style="height: 195px;background-color:#F8F8F8;margin-top: 20px;margin: 0 auto;">
		<div
			style="height: 160px;background-color:#F8F8F8;margin-left: 20px;padding-top: 20px;">
			<div style="height: 155px;background-color:#F8F8F8;float: left;">
				<h5 style="height: 40px;line-height: 40px;margin-left: 20px;">????????????</h5>
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
						<h5>????????????????????????</h5> <img src="img/download.png" width="80px"
						height="80px" style="margin-top: 5px;margin-left: 15px;" />
					<li>
					<li style="margin-left: 20px;margin-top: 25px;float: left;">
						<h5>????????????????????????</h5> <img src="img/download.png" width="80px"
						height="80px" style="margin-top: 5px;margin-left: 15px;" />
					<li>
					<li style="margin-left: 20px;margin-top: 25px;float: left;">
						<h5>????????????????????????</h5> <img src="img/download.png" width="80px"
						height="80px" style="margin-top: 5px;margin-left: 15px;" />
					<li>
					<li style="margin-left: 20px;margin-top: 25px;float: left;">
						<h5>????????????????????????</h5> <img src="img/download.png" width="80px"
						height="80px" style="margin-top: 5px;margin-left: 15px;" />
					<li>
				</ul>
			</div>
			<div
				style="width: 170px;height: 20px;background-color:#F8F8F8;float: left;">
				<div
					style="background: url(img/textbackground.bmp) no-repeat 5px;width: 230px;height: 90px;margin-top: 40px;margin-left: 5px;">
					<font
						style="font-family: '????????????';font-size: 14px;position: relative;top: 20px;margin-left: 20px;">
						??????APP???????????????????????????<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;??????????????????APP???????????????<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;????????????????????????????????????
					</font>
				</div>
			</div>
		</div>


	</div>
	<!--??????????????????div-->
	<div style="height: 83px;background-color: #666666; text-align:center;">
		<div style="color: white;padding-top: 20px;">
			<span>????????????&copy;2008-2018</span> <span>??????????????????????????????????????????</span> <span>?????????????????????????????????????????????</span>
		</div>
		<div style="color: white;padding-top: 20px;">
			<span>???ICP1555555???</span> <span>|</span> <span>???ICP???123123???</span>
		</div>
	</div>

	</div>
	<script>
		function is_login_alter(){
			var logininfo = '<%=session.getAttribute("login_info")%>';
			if (logininfo == 'succeed'){
				window.location.href = "search_2.jsp";
			} else {
	// 			alert(logininfo);
				alert("????????????");
				window.location.href = "Login.jsp";
			}
		};
		window.onload = function(){
			var logininfo = '<%=session.getAttribute("login_info")%>';
// 			console.log(logininfo);
			if (logininfo == 'succeed' && logininfo != 'null'){
				var user_name = '<%=session.getAttribute("user_name")%>';
				// 							alert(user_name);
				document.getElementById('is_login').innerText = user_name;
				document.getElementById('is_login').href = '#';

				document.getElementById('is_sign').innerText = '??????';
				document.getElementById('is_sign').href = 'UserServlet?action=exit';

				$('.t15>#orderBtn').show();
				$('.t15>#orderBtn_nologin').hide();

			} else {
				document.getElementById('is_login').innerText = '??????';
				document.getElementById('is_login').href = 'Login.jsp';
				document.getElementById('is_sign').innerText = '??????';
				document.getElementById('is_sign').href = 'Register.jsp;';

				$('.t15>#orderBtn').hide();
				$('.t15>#orderBtn_nologin').show();
				//				document.getElementById('orderBtn').href = 'javascript:is_login_alter();';
			}
		};
	</script>

</body>
</html>
