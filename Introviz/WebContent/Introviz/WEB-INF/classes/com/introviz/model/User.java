package com.introviz.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

public class User {
	Connection conn;
	public User() {
		super();
		
		try {
			Class.forName("org.postgresql.Driver");
			//Class.forName("com.ibm.db2.jcc.DB2Driver");
			conn=DriverManager.getConnection("jdbc:postgresql://localhost:5432/test","postgres","admin");
			//conn=DriverManager.getConnection("jdbc:db2://localhost:50000/introviz", "Phalguni", "enigma");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	
	private String username;
	private String password;
	private String last_login_time;
	private String email_id;

public String getEmail_id() {
	return email_id;
}
public void setEmail_id(String email_id) {
	this.email_id = email_id;
}
public String getLast_login_time() {
	return last_login_time;
}
public void setLast_login_time(String last_login_time) {
	System.out.println("last login time taken");
	this.last_login_time = last_login_time;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public boolean ValidateUser(User user) throws Exception{
	System.out.println("in validate user");
	
	
	PreparedStatement psmt=conn.prepareStatement("select * from users where username=? and password=?");
	psmt.setString(1,user.getUsername());
	psmt.setString(2,user.getPassword());
	ResultSet rs=psmt.executeQuery();
	if(rs.next()){
		return true;
	}else{
		return false;
	}
}
public boolean ReadUsername(String name) throws Exception{
	System.out.println("now in ReadUsername");
	PreparedStatement psmt=conn.prepareStatement("select * from users where username=?");
	psmt.setString(1,name);
	ResultSet rs=psmt.executeQuery();
	if(rs.next()){
		return true;
	}else{
		return false;
	}
}
	
	public boolean CreateUser(User user) throws Exception{
		System.out.println("now in createUser");
		PreparedStatement psmt=conn.prepareStatement("insert into users values(?,?,?,?)");
		psmt.setString(1,user.getUsername());
		psmt.setString(2,user.getPassword());
		psmt.setString(3,null);
		psmt.setString(4,user.getEmail_id());
		
		int x=psmt.executeUpdate();
		if(x!=0){
			return true;
		}else{
			return false;
		}
	
	
	}
	public boolean DeleteUser(String name) throws Exception{
		System.out.println("now in createUser");
		PreparedStatement psmt=conn.prepareStatement("delete from users where username=?");
		psmt.setString(1,name);
		int x=psmt.executeUpdate();
		if(x!=0){
			return true;
		}else{
			return false;
		}
	
	
	}
	
	/*public User ReadUser(String username) throws Exception{
		PreparedStatement psmt=conn.prepareStatement("select * from users where username=?");
		psmt.setString(1,username);
		User s=new User();
		ResultSet rs=psmt.executeQuery();
		if(rs.next()){
			s.setUsername(rs.getString("username"));
			s.setPassword(rs.getString("password"));
			s.setEmail_id(rs.getString("email_id"));
		}
		return s;
	
	
	}*/
	public ArrayList<User> DisplayAllUsers() throws ClassNotFoundException, SQLException{
		System.out.println("taking all users");
		PreparedStatement psmt=conn.prepareStatement("select * from users");
		ArrayList<User> list=new ArrayList<User>();
		ResultSet rs=psmt.executeQuery();
		while(rs.next()){
			User s=new User();
			System.out.println("adding");
			s.setUsername(rs.getString("username"));
			s.setPassword(rs.getString("password"));
			s.setLast_login_time(rs.getString("last_login_time"));
			s.setEmail_id(rs.getString("email_id"));

			list.add(s);
		}
	return list;
	}
	public boolean UpdateUser(User user) throws Exception{
		PreparedStatement psmt=conn.prepareStatement("update users set password=? where username=?");
		psmt.setString(2,user.getUsername());
		psmt.setString(1,user.getPassword());
		//psmt.setString(2,user.getEmail_id());
		int x=psmt.executeUpdate();
		if(x!=0){
			return true;
		}else{
			return false;
		}
	
	
	}
	public String UpdateTime(User user) throws Exception{
		PreparedStatement psmt=conn.prepareStatement("select * from users where username=?");
		psmt.setString(1,user.getUsername());
		ResultSet rs=psmt.executeQuery();
		String logintime="";
		if(rs.next()){
			logintime=rs.getString("last_login_time");
			//System.out.println((String)session.getAttribute("usernamet"));
		}
		System.out.println("last login time taken");
		PreparedStatement psmt1=conn.prepareStatement("update users set last_login_time=? where username=?");
		//System.out.println(admin.getLogin_time());
		//System.out.println(createTime);
		psmt1.setString(1,user.getLast_login_time());
		psmt1.setString(2,user.getUsername());
		psmt1.executeUpdate();
		System.out.println("login time updated");
		

return logintime;
}

}
