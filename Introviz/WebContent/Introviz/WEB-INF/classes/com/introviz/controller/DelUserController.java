package com.introviz.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.introviz.model.User;

/**
 * Servlet implementation class DelUserController
 */
@WebServlet("/DelUserController")
public class DelUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelUserController() {
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
		session.setAttribute("deleteRecord", "false");
		User s= new User();
		s.setUsername(username);
		boolean b,b1;
		try {
			System.out.println("in adduserservlet1");
			b=s.ReadUsername(username);
			if(!b){
				response.sendRedirect("output3.jsp");
			}
			else{
				System.out.println("in adduserservlet2");
				b1 = s.DeleteUser(username);
				if(b1){
					session.setAttribute("deleteRecord", "true");
					response.sendRedirect("output4.jsp");
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
