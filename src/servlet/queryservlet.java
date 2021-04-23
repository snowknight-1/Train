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
        //���ܱ�����
        String startstation = request.getParameter("startstation");
        String endstation = request.getParameter("endstation");
        String date = request.getParameter("date");
        //��ҳ�洫ֵ
        request.setAttribute("startstation",startstation);
        request.setAttribute("endstation",endstation);
        request.setAttribute("date",date);
        //ҵ����Ҫ
        ListService listService = new ListService();
        //��ѯ��Ϣ�б�����ҳ��
        request.setAttribute("messageList",listService.queryMessageList(startstation,endstation,date));
        //��ҳ����ת
        request.getRequestDispatcher("/trainquery.jsp").forward(request,response);
        //response.sendRedirect("trainquery.jsp");
		
//		response.setContentType("text/html;charset=UTF-8");
//		request.setCharacterEncoding("UTF-8");
//		String startstation = request.getParameter("startstation");
//        String endstation = request.getParameter("endstation");
//        String date = request.getParameter("date");

		
//		���ж���״̬���޸�
		//�������ݿ����
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
