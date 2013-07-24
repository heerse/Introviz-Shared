package com.introviz.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ValidateEmail
 */
@WebServlet("/ValidateEmail")
public class ValidateEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidateEmail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		try {
			Class.forName("org.postgresql.Driver");
			//Class.forName("com.ibm.db2.jcc.DB2Driver");
			Connection conn=DriverManager.getConnection("jdbc:postgresql://localhost:5432/test","postgres","admin");
			//Connection conn=DriverManager.getConnection("jdbc:db2://localhost:50000/introviz", "Phalguni", "enigma");
			String email=request.getParameter("emailid");
			PreparedStatement ps = conn.prepareStatement("select * from users where email_id=?");
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				response.getWriter().print(false);
			}else{
				response.getWriter().print(true);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
