package servlet;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.imageio.ImageTypeSpecifier;
import javax.naming.spi.DirStateFactory.Result;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.sendRedirect("pay.jsp");	
		//未选择乘车人
//		if(request.getParameterValues("passenger")==null){
//			response.sendRedirect("order.jsp?msg=error2");
//			return;
//		}
//		String[] passengers=request.getParameterValues("passenger");
//		//得到乘车人和座位类型，车次就可以分配座位了
//		//将分配好的座位都封装好，封在session中
//		//在session中解析出来就可以展示了
//		HttpSession session = request.getSession();
//		//进行异常判断
//		//error1：未选择坐席
//		if(session.getAttribute("seat_type")==null){
//			response.sendRedirect("order.jsp?msg=error1");
//			return;
//		}
//		
//		
//		
//		//生成订单号
//		final long order_id = System.currentTimeMillis();
//		//连接数据库进行表的操作
//		Connection conn = null;
//		
//		//存储每一次筛选出来的座位号
//		ResultSet resultSet = null;
//		//存储筛选出来的座位名称以及车厢号
//		ResultSet rs = null;
//		//筛选出对应的乘客cardid信息
//		ResultSet rs_passenger = null;
//		//筛选出的票价信息
//		ResultSet rs_price = null;
//		//筛选出里程
//		ResultSet rs_miles = null;
//		try{
//			Class.forName("com.mysql.jdbc.Driver");
//			Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/train",
//														"root", "123456");
//			Statement stmt = conn1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
//			response.setContentType("text/html;charset=UTF-8");
//			request.setCharacterEncoding("UTF-8");
//			
//			String sql_order_list= "insert into order_list(username,order_id,status) values(?,?,?)";
//			String sql_order_info = "insert into ticker_order(id,start_name,end_name,passengerCount) values(?,?,?,?)";
//			
//			
////			预编译sql语句
//			PreparedStatement pstmt_order_list = conn.prepareStatement(sql_order_list);
//			pstmt_order_list.setString(1, session.getAttribute("userName").toString());
//			pstmt_order_list.setLong(2, order_id);
//			pstmt_order_list.setInt(3, 0);
//			
//			PreparedStatement pstmt_order_info = conn.prepareStatement(sql_order_info);
//			pstmt_order_info.setLong(1, order_id);
//			pstmt_order_info.setString(2, session.getAttribute("start_name").toString());
//			pstmt_order_info.setString(3, session.getAttribute("end_name").toString());
//			pstmt_order_info.setInt(4, passengers.length);
//			
//			
//			//向order_list中插入数据完毕
//			pstmt_order_list.executeUpdate();
//			//向order_info中插入数据完毕
//			pstmt_order_info.executeUpdate();
//			
//			//进行价格的计算-->单价*里程
//			double pricePerMile = 0;
//			String select_price = "SELECT seat_price FROM seat_name WHERE seat_type=?";
//			
//			PreparedStatement pstmt_select_price= conn.prepareStatement(select_price);
//			pstmt_select_price.setString(1, session.getAttribute("seat_type").toString());
//			rs_price = pstmt_select_price.executeQuery();
//			if (rs_price != null) {		
//				while (rs_price.next()) {
//					pricePerMile = rs_price.getDouble("seat_price");
//				}
//			}
//			//进行订单单价的计算
//			double price = Double.parseDouble(session.getAttribute("mile").toString())*pricePerMile;
//			
//			
//			
//			
//			//进行座位的筛选
//			String select_seat = "SELECT seat_id FROM seat_info WHERE train_id=? AND date=? AND status=? AND seat_type=?";
//			//进行预编译
//			PreparedStatement pstmt_select_seat = conn.prepareStatement(select_seat);
//			pstmt_select_seat.setString(1, session.getAttribute("train_id").toString());
//			pstmt_select_seat.setString(2,session.getAttribute("setOutDate").toString());
//			pstmt_select_seat.setInt(3,1);
//			pstmt_select_seat.setString(4,session.getAttribute("seat_type").toString());
//	
//			ArrayList seatList=new ArrayList();
//			resultSet = pstmt_select_seat.executeQuery();
//			if (resultSet != null) {		
//				while (resultSet.next()) {
//					seatList.add(resultSet.getInt("seat_id"));
//				}
//			}
//			
//			//坐席位置张数小于所选择的乘车人数
//			if(seatList.size()<passengers.length){
//				response.sendRedirect("order.jsp?msg=error3");
//				return;
//			}
//			//对于每一个乘客都要进行一次执行和遍历
//			Integer ticket_id=1;
//			for(String passenger:passengers){
//				seatList.clear();
//				resultSet = pstmt_select_seat.executeQuery();
//				if (resultSet != null) {		
//					while (resultSet.next()) {
//						seatList.add(resultSet.getInt("seat_id"));
//					}
//				}
//
//				String selectSeatName = "SELECT carriage_name,seat_name FROM seat_info WHERE train_id=? AND date=? AND seat_id=?";
//				PreparedStatement pstmt_select_seat_name= conn.prepareStatement(selectSeatName);
//				pstmt_select_seat_name.setString(1, session.getAttribute("train_id").toString());
//				pstmt_select_seat_name.setString(2,session.getAttribute("setOutDate").toString());
//				pstmt_select_seat_name.setString(3,seatList.get(0).toString());
//				
//				rs = pstmt_select_seat_name.executeQuery();
//				String seat_name = "";
//				Integer carriage = 0;
//				if (rs != null) {		
//					while (rs.next()) {
//						seat_name = rs.getString("seat_name");
//						carriage = rs.getInt("carriage_name");
//					}
//				}
//				//更新座位的status
//				String update_seat = "UPDATE seat_info SET status = ? WHERE train_id = ? AND date = ? AND seat_id = ?";
//				PreparedStatement pstmt_update = conn.prepareStatement(update_seat);
//				pstmt_update.setInt(1, 2);
//				pstmt_update.setString(2,session.getAttribute("train_id").toString());
//				pstmt_update.setString(3,session.getAttribute("setOutDate").toString());
//				pstmt_update.setString(4,seatList.get(0).toString());
//				
//				pstmt_update.executeUpdate();
//
//				//筛选得到乘车人的cardid
//				String select_card_id = "SELECT card_id FROM passenger_list WHERE username=? AND passenger_name=?";
//				
//				PreparedStatement pstmt_select_id= conn.prepareStatement(select_card_id);
//				pstmt_select_id.setString(1, session.getAttribute("userName").toString());
//				pstmt_select_id.setString(2, passenger);
//				
//				rs_passenger = pstmt_select_id.executeQuery();
//				String card_id = "";
//				if (rs_passenger != null) {		
//					while (rs_passenger.next()) {
//						card_id = rs_passenger.getString("card_id");
//					}
//				}
//				
//				
//				//将信息插入ticket_info中
//				String insert_info = "insert into ticket_detail(order_id,passenger_name,seat_name,carriage_name,ticket_price"
//						+ "ticket_type,setout-time,card_type,seat_type,ticket_status,id) "
//						+ "values(?,?,?,?,?,?,?,?,?,?,?)";
//				PreparedStatement pstmt_insert_info= conn.prepareStatement(insert_info);
//				pstmt_insert_info.setLong(1, order_id);
//				pstmt_insert_info.setString(6, seat_name);
//				//号码
//				pstmt_insert_info.setString(3,card_id);
//				pstmt_insert_info.setInt(4, Integer.parseInt(session.getAttribute("train_id").toString()));
//				pstmt_insert_info.setInt(5, carriage);
//				pstmt_insert_info.setString(6, seat_name);
//				pstmt_insert_info.setString(7, seatList.get(0).toString());
//				pstmt_insert_info.setString(8, session.getAttribute("setOutTime").toString());
//				pstmt_insert_info.setString(9, session.getAttribute("setOutStation").toString());
//				pstmt_insert_info.setString(10, session.getAttribute("arriveStation").toString());
//				pstmt_insert_info.setString(11, session.getAttribute("arriveTime").toString());
//				pstmt_insert_info.setString(12, session.getAttribute("setOutDate").toString());
//				//计算价格
//				pstmt_insert_info.setDouble(13, price);
//				pstmt_insert_info.setString(14, session.getAttribute("seat_type").toString());
//				pstmt_insert_info.setInt(15, 0);
//				pstmt_insert_info.setInt(16, ticket_id);
//				pstmt_insert_info.executeUpdate();	
//				ticket_id++;
//			}
//			session.setAttribute("order_id", order_id);
//			response.sendRedirect("pay.jsp");				
//		}
//		catch (ClassNotFoundException e) {
//			// TODO Auto-generated catch block
//			request.getRequestDispatcher("error.jsp").forward(request, response);
//			
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			request.getRequestDispatcher("error.jsp").forward(request, response);
//		}
//		catch(Exception ex){
//			request.getRequestDispatcher("error.jsp").forward(request, response);
//		}
//		finally{
//			try {
//				conn.close();
//			} catch (SQLException e) {
//				request.getRequestDispatcher("error.jsp").forward(request, response);
//			}
//		}	
	}

}
