package com.introviz.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.introviz.model.Admin;
import com.introviz.model.User;


/**
 * Servlet implementation class Ad_ReadUpdateController
 */
@WebServlet("/Ad_ReadUpdateController")
public class Ad_ReadUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ad_ReadUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession(true);
		session.setAttribute("updateResult", "false");
		String username=(String)session.getAttribute("checked");
		String password=request.getParameter("password");
		if(username.equals("Admin")){
			Admin admin=new Admin();
			admin.setAd_username(username);
			admin.setAd_password(password);
			try{
				boolean b=Admin.UpdateAdmin(admin);
				if(b){
					session.setAttribute("updateResult", "true");
					//System.out.println(session.getAttribute("updateResult"));
					getServletContext().getRequestDispatcher("/output.jsp").forward(request, response);
				}
			}catch (Exception e) {
				
				// TODO Auto-generated catch block
				PrintWriter pw=response.getWriter();
				pw.println(e.toString());
			}
			
		}else{
			User user=new User();
			user.setUsername(username);
			user.setPassword(password);
			try{
				boolean b=user.UpdateUser(user);
				if(b){
					session.setAttribute("updateResult","Record Updated");
					getServletContext().getRequestDispatcher("/output.jsp").forward(request, response);
				}
			}catch(Exception e){
				PrintWriter pw=response.getWriter();
				pw.println(e.toString());
			}
			
		}
		
		
	}

}
