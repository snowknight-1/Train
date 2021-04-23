<%@page import="javax.naming.ldap.HasControls"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>12306</title>
<link href="css/common_css.css" rel="stylesheet">
<link href="css/iconfont.css"  rel="stylesheet"/>
<link href="css/selectSeat.css" rel="stylesheet"/>
<link rel="stylesheet" href="css/index_y_v3000.css">

<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<!--header start-->

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
				<li id="J-index" class="nav-item nav-item-w1">
					<a name="g_href"
					data-type="1" data-href="index.html" data-redirect="Y"
					href="index.jsp" class="nav-hd">首页</a>
				</li>
				<li id="J-chepiao" class="nav-item nav-item-w1">
					<a href="javascript:void(0)" class="nav-hd">车票<img
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
				<li id="J-tuangoufuwu" class="nav-item ">
					<a href="javascript:void(0) " class="nav-hd ">团购服务 <img
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
				<li id="J-huiyuanfuwu" class="nav-item ">
					<a href="javascript:void(0) " class="nav-hd ">会员服务 <img
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
				<li id="J-zhanchefuwu" class="nav-item ">
					<a href="javascript:void(0) " class="nav-hd ">站车服务 <img
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
				<li id="J-shanlvfuwu" class="nav-item ">
					<a href="javascript:void(0) " class="nav-hd ">商旅服务 <img
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


<!--header end-->
<!--页面主体  开始-->
<div class="content"><!--列车信息 开始-->
<div class="layout t-info"><div class="lay-hd">
				列车信息<span class="small">（以下余票信息仅供参考）</span>
</div>
<div class="lay-bd">
  <!--动态显示车站信息-->
  <p class="t-tit" id="ticket_tit_id">
<strong class="mr5"><%=request.getParameter("date")%></strong><strong class="ml5"><%=request.getParameter("id")%></strong>次<strong class="ml5">
<%=new String(request.getParameter("startstation").getBytes("ISO-8859-1"), "UTF-8")%>
</strong> 站   <strong><%=request.getParameter("starttime")%></strong> 开—<strong>
<%=new String(request.getParameter("endstation").getBytes("ISO-8859-1"), "UTF-8")%>
</strong> 站   <strong><%=request.getParameter("endtime")%></strong> 到
</p>
<p class="t-con" id="ticket_con_id">

    <!-- 根据选择的车次型号来赋值class值 -->
        <div class="row">
          <div class="col-sm-9 col-sm-offset-3 col-md-4 col-md-offset-4" style="position:relative;left:-20%">选择席位：</div>
        </div>
        
        <div class="row" style="text-align: center;">
          <!-- 进行座位的动态展示 -->
          <%
            /* 通过train_type来设置这个div有几个 每个占得比例 是多少 */
            /* 通过数据库进行筛选位置并展示出来 */
            Connection conn4 = null;
            ResultSet resultSet = null;
            int divCount = 0;
            String startstation = new String(request.getParameter("startstation").getBytes("ISO-8859-1"), "UTF-8");
            String endstation = new String(request.getParameter("endstation").getBytes("ISO-8859-1"), "UTF-8");
            String date = request.getParameter("date");
            String id = request.getParameter("id");
            
            session.setAttribute("startstation",startstation);
            session.setAttribute("endstation",endstation);
            session.setAttribute("starttime",request.getParameter("starttime"));
            session.setAttribute("endtime",request.getParameter("endtime"));
            session.setAttribute("trainId",id);
            session.setAttribute("date",date);
            session.setAttribute("trainId",id);
            try {
            	Class.forName("com.mysql.jdbc.Driver");
            	conn4 = DriverManager.getConnection("jdbc:mysql://localhost:3306/train?characterEncoding=utf-8",
						"root", "123456");
				Statement stmt = conn4.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
				response.setContentType("text/html;charset=UTF-8");
				request.setCharacterEncoding("UTF-8");

              String sql = "SELECT trainquery.id,trainquery.startstation,trainquery.endstation,trainquery.starttime,trainquery.endtime,trainquery.date,shangwu,yideng,erdeng,gaojiruanwo,ruanwo,dongwo,yingwo,ruanzuo,yingzuo,wuzuo,shangwup,yidengp,erdengp,gaojiruanwop,ruanwop,dongwop,yingwop,ruanzuop,yingzuop,wuzuop"+
              " from trainquery,seatquery,ticket"+
               " where trainquery.id=seatquery.id and trainquery.id=ticket.id and 1=1 and trainquery.startstation=? and trainquery.endstation=? and trainquery.date=? and trainquery.id=?";

              //            预编译sql语句
              PreparedStatement pstmt = conn4.prepareStatement(sql);
              System.out.println(session.getAttribute("startstation").toString());
              System.out.println(session.getAttribute("endstation").toString());
              System.out.println(session.getAttribute("trainId").toString());
              
              pstmt.setString(1, session.getAttribute("startstation").toString());
              pstmt.setString(2, session.getAttribute("endstation").toString());
              pstmt.setString(3, session.getAttribute("date").toString());
              pstmt.setString(4, session.getAttribute("trainId").toString());
              //            执行sql语句
              System.out.println(pstmt);
              resultSet = pstmt.executeQuery();
              //            高铁
              Map seatMap = new HashMap();
              if (resultSet != null) {
					while (resultSet.next()) {
						 seatMap.put("商务座",resultSet.getString("shangwu"));
			              seatMap.put("一等座",resultSet.getString("yideng"));
			              seatMap.put("二等座",resultSet.getString("erdeng"));
			              seatMap.put("gaojiruanwo",resultSet.getString("gaojiruanwo"));
			              seatMap.put("软卧",resultSet.getString("ruanwo"));
			              seatMap.put("dongwo",resultSet.getString("dongwo"));
			              seatMap.put("硬卧",resultSet.getString("yingwo"));
			              seatMap.put("ruanzuo",resultSet.getString("ruanzuo"));
			              seatMap.put("硬座",resultSet.getString("yingzuo"));
			              seatMap.put("无座",resultSet.getString("wuzuo"));
					}
				} else {
					out.println("<h2>无票</h2>");
					return;
				}
              
              
              
             
              
              /* if (resultSet != null) {
                while (resultSet.next()) {
                  seatMap.put(resultSet.getString("seat_name"), resultSet.getInt("COUNT(seat_id)"));
                }
              } else {
                out.println("<h2>无票</h2>");
                return;
              } */
           System.out.println(seatMap.get("商务座"));
                if (seatMap.get("商务座") == null)
                  out.println("<div class='seat' id=1><h3>商务座</h3><h5>0张</h5></div>");
                else
                  out.println("<div class='seat' id=1><h3>商务座</h3><h5>" + seatMap.get("商务座") + "张</h5></div>");
                if (seatMap.get("一等座") == null)
                  out.println("<div class='seat' id=2><h3>一等座</h3><h5>0张</h5></div>");
                else
                  out.println("<div class='seat' id=2><h3>一等座</h3><h5>" + seatMap.get("一等座") + "张</h5></div>");
                if (seatMap.get("二等座") == null)
                  out.println("<div class='seat' id=3><h3>二等座</h3><h5>0张</h5></div>");
                else
                  out.println("<div class='seat' id=3><h3>二等座</h3><h5>" + seatMap.get("二等座") + "张</h5></div>");
             
                if (seatMap.get("软卧") == null)
                  out.println("<div class='seat' id=7><h3>软卧</h3><h5>0张</h5></div>");
                else
                  out.println("<div class='seat' id=7><h3>软卧</h3><h5>" + seatMap.get("软卧") + "张</h5></div>");
                if (seatMap.get("硬卧") == null)
                  out.println("<div class='seat' id=6><h3>硬卧</h3><h5>0张</h5></div>");
                else
                  out.println("<div class='seat' id=6><h3>硬卧</h3><h5>" + seatMap.get("硬卧") + "张</h5></div>");
                if (seatMap.get("硬座") == null)
                  out.println("<div class='seat' id=4><h3>硬座</h3><h5>0张</h5></div>");
                else
                  out.println("<div class='seat' id=4><h3>硬座</h3><h5>" + seatMap.get("硬座") + "张</h5></div>");
                if (seatMap.get("无座") == null)
                  out.println("<div class='seat' id=5><h3>无座</h3><h5>0张</h5></div>");
                else
                  out.println("<div class='seat' id=5><h3>无座</h3><h5>" + seatMap.get("无座") + "张</h5></div>");
              
            } catch (ClassNotFoundException e) {
              // TODO Auto-generated catch block

            } catch (SQLException e) {
              // TODO Auto-generated catch block

            } catch (Exception ex) {
					System.out.println(ex);
            }
          %>
        </div>
      </p>
        <div class="row">
          <div class="col-sm-9 col-sm-offset-3 col-md-4 col-md-offset-4" style="position:relative;left:-20%">选择乘车人：</div>
        </div>
        <form action="./OrderServlet" method="post">
          <div class="row">
            <div class="col-sm-9 col-sm-offset-3 col-md-4 col-md-offset-4" style="position:relative;left:-20%">
              <%
              
                try {
                	
                 Class.forName("com.mysql.jdbc.Driver");
                Connection conn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/train",
            "root", "123456");
        Statement stmt = conn2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

                  String sql = "SELECT passenger_name FROM passenger_list WHERE username = ?";
                  
                  //            预编译sql语句
                  PreparedStatement pstmt = conn2.prepareStatement(sql);
                  System.out.print(session.getAttribute("user_name"));
                  pstmt.setString(1, session.getAttribute("user_name").toString());
                  
                  //            执行sql语句
                  resultSet = pstmt.executeQuery();
                  System.out.print(pstmt);
                  if (resultSet != null) {
                    while (resultSet.next()) {
                      out.println("<input type='checkbox' name='passenger' value='"+ resultSet.getString("passenger_name") + "'>" + resultSet.getString("passenger_name")+ "");
                    }
                  }
                } catch (Exception ex) {
                	System.out.print(ex);
                }
              %>
              <button type="button" id="addPassenger" class="btn btn-primary" style="background-color:#337ab7;border-color:#337ab7;">添加乘车人
            </div>
          </div>
          <br>
          <div class="row">
            <a class="btn btn-default col-md-2 col-md-offset-4"
              href="trainquery.jsp">返回上一级</a> 
              <input class="btn btn-primary col-md-2" type="submit" value="确认订单" style="background-color:#337ab7;border-color:#337ab7;"></input>
          </div>
        </form>
      </div>

    </div>
  </div>


<!--页面主体  结束-->

  <!-- 添加乘车人模态框 -->
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" style="width:100%;background-color:rgb(255,255,255,0);margin-top:100px;">
    <div class="modal-dialog " role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"
            aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h4 class="modal-title">添加乘车人</h4>
        </div>
        <form action="./PassengerServlet" method="post" class="form-horizontal">
        <div class="modal-body">
        <input type="hidden" name="status" value="1"> 
          <div class="form-group">
              <label for="name" class="col-sm-2 control-label">乘客名</label>
              <div class="col-sm-6">
                <input type="text" class="form-control" name="passengerName" placeholder="真实姓名" autocomplete="off" required>
              </div>
              <div class="col-sm-4 tips"><span>* </span>必填</div>
          </div>
          <div class="form-group">
              <label for="mobile" class="col-sm-2 control-label">手机号码</label>
              <div class="col-sm-6">
                <input type="text" class="form-control" name="mobilePhone" placeholder="输入11位手机号码" autocomplete="off" required>
              </div>
              <div class="col-sm-4 tips"><span>* </span>必填</div>
          </div>
          <div class="form-group">
              <label for="email" class="col-sm-2 control-label">E-mail</label>
              <div class="col-sm-6">
                <input type="text" class="form-control" name="email" autocomplete="off" placeholder="请输入邮箱" >
              </div>
              <div class="col-sm-4 tips"></div>
          </div>
          <div class="form-group">
              <label for="card_type" class="col-sm-2 control-label">证件类型</label>
              <div class="col-sm-6">
                <select class="form-control" name="card_type">
                <option value="1">身份证</option>
                <option value="2">学生证</option>
                <option value="3">军人证</option>
                <option value="4">残疾证</option>
              </select>
            </div>
              <div class="col-sm-4 tips"><span>* </span>必填</div>
          </div>  
          <div class="form-group">
              <label for="card_id" class="col-sm-2 control-label">证件号码</label>
              <div class="col-sm-6">
                <input type="text" class="form-control" name="card_id" placeholder="输入用于购票的证件号码" autocomplete="off" required>
              </div>
              <div class="col-sm-4 tips"><span>* </span>必填</div>
          </div>      
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <input type="submit" class="btn btn-primary" value="添加" style="background-color:#337ab7;border-color:#337ab7;"></input>
        </div>
        </form>
      </div>
    </div>
  </div>
<div class="modal fade" id="error1" tabindex="-1" role="dialog">
    <div class="modal-dialog " role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"
            aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h4 class="modal-title">ERROR</h4>
        </div>
        <div class="modal-body">
          <p>请选择座位类型！</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  <div class="modal fade" id="error2" tabindex="-1" role="dialog">
    <div class="modal-dialog " role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"
            aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h4 class="modal-title">ERROR</h4>
        </div>
        <div class="modal-body">
          <p>请选择乘车人！</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  <div class="modal fade" id="error3" tabindex="-1" role="dialog">
    <div class="modal-dialog " role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"
            aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h4 class="modal-title">ERROR</h4>
        </div>
        <div class="modal-body">
          <p>无座位！</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  <div class="modal fade" id="success" tabindex="-1" role="dialog">
    <div class="modal-dialog " role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"
            aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h4 class="modal-title">SUCCESS</h4>
        </div>
        <div class="modal-body">
          <p>添加成功</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  <div class="modal fade" id="error6" tabindex="-1" role="dialog">
    <div class="modal-dialog " role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"
            aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h4 class="modal-title">ERROR</h4>
        </div>
        <div class="modal-body">
          <p>电话号码无效</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
        </div>
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
				alert("请先登录");
				window.location.href = "Login.jsp";
			}
		};
		window.onload = function(){
			var logininfo = '<%=session.getAttribute("login_info")%>';
// 			console.log(logininfo);
			if (logininfo == 'succeed'){
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
  
    $('#addPassenger').on('click', function() {
      //展示模态框
      $('#myModal').modal('show');
    })

    var id;
    $('.seat').click(function() {
      $('.seat').css("background-color", "rgb(245,245,245)");
      $('.seat').css("color", "#000");
      id = $(this).attr("id")
      $("#" + id).css("background-color", "#3B99FC");
      $("#" + id).css("color", "#fff");
      $.ajax({
        url : "../saveDataServlet", //请求的url地址
        dataType : "text", //返回格式为json
        async : true,//请求是否异步，默认为异步，这也是ajax重要特性
        data : {
          "seat_type" : id
        }, //参数值
        type : "POST", //请求方式
        beforeSend : function() {
          //请求前的处理
        },
        success : function(req) {

        },
        complete : function() {
          //请求完成的处理
        },
        error : function() {

        }
      });
    })
  </script>
  
  <div
			style="height: 83px;background-color: #666666; text-align:center;">
			<div style="color: white;padding-top: 20px;">
				<span>版权所有&copy;2008-2018</span> <span>中国铁路信息科技有限责任公司</span> <span>中国铁道科学研究院集团有限公司</span>
			</div>
			<div style="color: white;padding-top: 20px;">
				<span>京ICP1555555号</span> <span>|</span> <span>京ICP证123123号</span>
			</div>
		</div>


</body>
</html>