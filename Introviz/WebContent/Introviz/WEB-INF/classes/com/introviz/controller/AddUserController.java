package com.introviz.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.introviz.model.MailSend;
import com.introviz.model.User;

/**
 * Servlet implementation class AddUserController
 */
@WebServlet("/AddUserController")
public class AddUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUserController() {
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
		String username=request.getParameter("name");
		String password=request.getParameter("password");
		String emailid=request.getParameter("emailid");
		session.setAttribute("addRecord", "false");
		User s= new User();
		s.setUsername(username);
		s.setPassword(password);
		s.setEmail_id(emailid);
		boolean b,b1;
		try {
			System.out.println("in adduserservlet1");
			b=s.ReadUsername(username);
			if(b){
				response.sendRedirect("output2.jsp");
			}
			else{
				System.out.println("in adduserservlet2");
				b1 = s.CreateUser(s);
				if(b1){
					MailSend mailSend = new MailSend();
					mailSend.sendMail(s.getEmail_id(),username,password);
					session.setAttribute("addRecord", "true");
					response.sendRedirect("output1.jsp");
				}else{
					response.sendRedirect("failure.jsp");
				}
			}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
	}

}
