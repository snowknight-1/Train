package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class PassengerServlet
 */
@WebServlet("/PassengerServlet")
public class PassengerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PassengerServlet() {
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
		//添加乘车人--->连接数据库进行insert，在重定向到select页面
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		System.out.println("???");
		String passengerName = request.getParameter("passengerName");
		String mobilePhone = request.getParameter("mobilePhone");
		String email = "";
		String status = request.getParameter("status");
		
		System.out.println(passengerName);
		System.out.println(mobilePhone);
		System.out.println(email);
		System.out.println(status);
		if(!request.getParameter("email").equals("")){
			email = request.getParameter("email");
		}
		String card_type = request.getParameter("card_type");
		String card_id = request.getParameter("card_id");
		
//		if(mobilePhone.length()<7||mobilePhone.length()>11){
//			switch(status){
//			case "1":
//				response.sendRedirect("JspFiles/selectSeat.jsp?msg=0");
//				return;
//			case "2":
//				response.sendRedirect("JspFiles/Mine.jsp?msg=0");
//				return;
//			default:
//				break;
//			}
//		}
		//进行数据库的插入
		Connection conn = null;
		HttpSession session = request.getSession();
		try{
			Class.forName("com.mysql.jdbc.Driver");
	        System.out.println("测试加载数据库成功");
			conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/train","root","123456");
	        System.out.println("测试数据库链接成功");
			Statement stmt =conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			response.setContentType("text/html;charset=UTF-8");
			request.setCharacterEncoding("UTF-8");
			
			String sql = "insert into passenger_list(username,passenger_name,phone_num,card_type,card_id,email) values(?,?,?,?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, session.getAttribute("user_name").toString());
			pstmt.setString(2, passengerName);
			pstmt.setString(3, mobilePhone);
			pstmt.setString(4, card_type);
			pstmt.setString(5, card_id);
			pstmt.setString(6, email);
			
			String startstation=session.getAttribute("startstation").toString();
            String endstation = session.getAttribute("endstation").toString();
            String starttime = session.getAttribute("starttime").toString();
            String endtime = session.getAttribute("endtime").toString();
            String date = session.getAttribute("date").toString();
            String id = session.getAttribute("trainId").toString();
            String username=session.getAttribute("user_name").toString();
			
			pstmt.executeUpdate();
			response.sendRedirect("order.jsp?date="+date+"&id="+id+"&startstation="+startstation+"&starttime="+starttime+"&endstation="+endstation+"&endtime="+endtime+"&username="+username+"");

//			switch(status){
//			case "1":
//				response.sendRedirect("order.jsp");
//				return;
//			case "2":
//				response.sendRedirect("Mine.jsp?msg=1");
//				return;
//			default:
//				break;
//			}
			
		}catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("ClassNotFoundException e!");
			request.getRequestDispatcher("error.jsp").forward(request, response);
			
		} catch (SQLException e) {
			System.out.println("SQLException e!");
			// TODO Auto-generated catch block
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
		catch(Exception ex){
			System.out.println("Exception e!");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
		finally{
			try {
				conn.close();
			} catch (SQLException e) {
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
		}
	}

}
