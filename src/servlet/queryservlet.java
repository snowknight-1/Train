package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
//import java.io.PrintWriter;
//import java.sql.ResultSet;
//import java.sql.SQLException;

//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import db.DBConnection;
import service.ListService;

//@WebServlet(name="queryservlet",urlPatterns={"/queryservlet"})
@WebServlet("/queryservlet")
public class queryservlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	public queryservlet() {
		super();
	}


	public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
		
		request.setCharacterEncoding("utf-8");
        //接受表单内容
        String startstation = request.getParameter("startstation");
        String endstation = request.getParameter("endstation");
        String date = request.getParameter("date");
        //向页面传值
        request.setAttribute("startstation",startstation);
        request.setAttribute("endstation",endstation);
        request.setAttribute("date",date);
        //业务需要
        ListService listService = new ListService();
        //查询消息列表并传给页面
        request.setAttribute("messageList",listService.queryMessageList(startstation,endstation,date));
        //向页面跳转
        request.getRequestDispatcher("/trainquery.jsp").forward(request,response);
        //response.sendRedirect("trainquery.jsp");
		
//		response.setContentType("text/html;charset=UTF-8");
//		request.setCharacterEncoding("UTF-8");
//		String startstation = request.getParameter("startstation");
//        String endstation = request.getParameter("endstation");
//        String date = request.getParameter("date");

		
//		进行订单状态的修改
		//连接数据库根据
//		try{
//			
//			response.setContentType("text/html;charset=UTF-8");
//			request.setCharacterEncoding("UTF-8");
//			request.setAttribute("startstation",startstation);
//	        request.setAttribute("endstation",endstation);
//	        request.setAttribute("date",date);
//			HttpSession session=request.getSession();
//			ListService listService = new ListService();
//			session.setAttribute("messageList", listService.queryMessageList(startstation,endstation,date));
//			response.sendRedirect("trainquery.jsp");	
//			
//		}catch (Exception e) {
//			// TODO: handle exception
//			System.out.println(e);
//		}

	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		doGet(request, response);
	}

}
