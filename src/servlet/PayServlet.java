package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/PayServlet")
public class PayServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public PayServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Connection conn = null;
		ResultSet resultSet = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
	        System.out.println("测试加载数据库成功");
			conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/train?useSSL=false",
				"root", "123456");

			Statement stmt =conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			response.setContentType("text/html;charset=UTF-8");
			request.setCharacterEncoding("UTF-8");
//			String change_state = "INSERT INTO order_info (姓名，证件号码，证件类型，票种，席别，车厢，席位号，票价，流水号) VALUES ('小明', '330***********0000', '身份证', '成人票','坐席','17','17A','78.5','1')";
//			PreparedStatement pstmt = conn.prepareStatement(change_state);

			
//			pstmt.executeUpdate();
//			HttpSession session=request.getSession();
//			session.setAttribute("pay_status", "1");
	        request.getRequestDispatcher("index.jsp").forward(request,response);
//			response.sendRedirect("index.jsp");		
			
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Connection conn = null;
		ResultSet resultSet = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
//	        System.out.println("测试加载数据库成功");
			conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/train?useSSL=false",
				"root", "123456");

			Statement stmt =conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			response.setContentType("text/html;charset=UTF-8");
			request.setCharacterEncoding("UTF-8");
//			String change_state = "INSERT INTO order_info (姓名，证件号码，证件类型，票种，席别，车厢，席位号，票价，流水号) VALUES ('小明', '330***********0000', '身份证', '成人票','坐席','17','17A','78.5','1')";
//			PreparedStatement pstmt = conn.prepareStatement(change_state);
//			pstmt.setString(1,order_id);
			
//			pstmt.executeUpdate();
//			HttpSession session=request.getSession();
//			session.setAttribute("pay_status", "1");
	        request.getRequestDispatcher("index.jsp").forward(request,response);
//			response.sendRedirect("index.jsp");		
			
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
