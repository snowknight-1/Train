package servlet;

import java.io.IOException;
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

/**
 * Servlet implementation class changeOrderServlet
 */
@WebServlet("/changeOrderServlet")
public class changeOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public changeOrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String ticket_id = request.getParameter("ticket_id");
		
//		进行订单状态的修改
		//连接数据库根据
		Connection conn = null;
		ResultSet resultSet = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/train?useSSL=false",
					"root", "123456");
//			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/train",
//					"root", "123456");
			Statement stmt =conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			response.setContentType("text/html;charset=UTF-8");
			request.setCharacterEncoding("UTF-8");
			String change_state = "UPDATE ticket_detail SET ticket_status = 4 WHERE id = ?";
			PreparedStatement pstmt = conn.prepareStatement(change_state);
			pstmt.setString(1,ticket_id);
			
			pstmt.executeUpdate();
			HttpSession session=request.getSession();
			session.setAttribute("change_status", "1");
			response.sendRedirect("search_2.jsp");		
			
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
