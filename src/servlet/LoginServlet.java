package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.train.dao.UserDao;
import com.train.bean.User;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public LoginServlet() {
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

//		response.setContentType("text/html");
//		PrintWriter out = response.getWriter();
//		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
//		out.println("<HTML>");
//		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
//		out.println("  <BODY>");
//		out.print("    This is ");
//		out.print(this.getClass());
//		out.println(", using the GET method");
//		out.println("  </BODY>");
//		out.println("</HTML>");
//		out.flush();
//		out.close();
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
		
		//获取Login.jsp页面提交的账号和密码
		String phonenumber = request.getParameter("phonenumber");
		String password = request.getParameter("password");
		//测试数据
		System.out.println(phonenumber+" "+password);
		
		//获取Login.jsp页面提交的账号密码设置到实体类User中
		User user = new User();
		user.setPhonenumber(phonenumber);
		user.setPassword(password);
		
		//引入数据交互层
		UserDao userDao = new UserDao();
		User resultuser = userDao.login(user);

		if(resultuser != null){
			request.setAttribute("logininfo", "登录成功!");
			//创建session
		    request.setCharacterEncoding("utf-8");
		    response.setContentType("text/html;charset=utf-8");
		    HttpSession session=request.getSession();
//		    System.out.println(resultuser.getUsername());
//		    System.out.println(resultuser);
		    session.setAttribute("user_name", resultuser.getUsername());
		    session.setAttribute("login_info", "succeed");
		    session.setAttribute("user_id", resultuser.getUser_id());
		}
		else{
			request.setAttribute("logininfo", "登录失败!");
		}
		
		request.getRequestDispatcher("is_login.jsp").forward(request,response);
	}


}
