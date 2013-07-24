package com.introviz.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.introviz.model.Admin;
import com.introviz.model.User;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		getServletContext().getRequestDispatcher("/loginpage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//redirect to admin_home.jsp
		HttpSession session=request.getSession(true);
		Date createTime = new Date(session.getCreationTime());
		String time=createTime.toString();
		String username =  request.getParameter("username");
		session.setAttribute("username", username);
		String password= request.getParameter("password");
		session.setAttribute("usernamep", password);
		boolean b;
		if(username.equals("Admin")){
			
			Admin admin=new Admin();
			//response.sendRedirect("Ad_LoginController");
			admin.setAd_username(username);
			admin.setAd_password(password);
			try {
				System.out.println("in logincontroller");
				b = Admin.ValidateAdmin(admin);
				if(b){
					session.setAttribute("validid","true");
					admin.setLogin_time(time);
					System.out.println(admin.getLogin_time());
					String logintime=Admin.UpdateTime(admin);
					session.setAttribute("usernamet",logintime);
					System.out.println("in login servlet..time is"+session.getAttribute("usernamet"));
					getServletContext().getRequestDispatcher("/welcome.jsp").forward(request, response);
				}else{
					session.setAttribute("validid","false");
					response.sendRedirect("loginpage.jsp");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}						
		}else{
			System.out.println("in user login controller");
			User u=new User();
			u.setPassword(password);
			u.setUsername(username);
			try {
				b = u.ValidateUser(u);
				if(b){
					session.setAttribute("validid","true");
					u.setLast_login_time(time);
					System.out.println(u.getLast_login_time());
					String logintime=u.UpdateTime(u);
					session.setAttribute("usernamet",logintime);
					getServletContext().getRequestDispatcher("/welcome.jsp").forward(request, response);
				}else{
					session.setAttribute("validid","false");
					response.sendRedirect("loginpage.jsp");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}						
		}
	}

}
