package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;

import com.train.dao.UserDao;
import com.train.bean.User;
import com.train.utils.BaseDao;

//@WebServlet(name="RegisterServlet",urlPatterns={"/RegisterServlet"})
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	/**
	 * Constructor of the object.
	 */
	public RegisterServlet() {
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
		System.out.print(1);
		String username = request.getParameter("username");
		System.out.print(username);
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String idnumber = request.getParameter("idnumber");
		String email = request.getParameter("email");
		String phonenumber = request.getParameter("phonenumber");

		User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setName(name);
        user.setIdnumber(idnumber);
        user.setEmail(email);
        user.setPhonenumber(phonenumber);
        
        UserDao userDao = new UserDao();
        boolean flag = userDao.register(user);
        
        if(flag == false){
        	System.out.println("×¢²áÊ§°Ü");
            request.setAttribute("registerinfo", "×¢²áÊ§°Ü!");
        }
        if(flag == true){
            System.out.println("×¢²á³É¹¦");
            request.setAttribute("registerinfo", "×¢²á³É¹¦!");
        }

        request.getRequestDispatcher("is_register.jsp").forward(request,response);
	}

}
