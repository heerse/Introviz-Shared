package com.introviz.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Admin {
private String ad_username;
private String ad_password;
private String emailid;
private String login_time;
public String getEmailid() {
	return emailid;
}
public void setEmailid(String emailid) {
	this.emailid = emailid;
}
public String getLogin_time() {
	return login_time;
}
public void setLogin_time(String login_time) {
	this.login_time = login_time;
	System.out.println("session time created");
}
public String getAd_username() {
	return ad_username;
}
public void setAd_username(String ad_username) {
	this.ad_username = ad_username;
}
public String getAd_password() {
	return ad_password;
}
public void setAd_password(String ad_password) {
	this.ad_password = ad_password;
}
public static boolean ValidateAdmin(Admin admin) throws Exception{
	Class.forName("org.postgresql.Driver");
	
	Connection conn=DriverManager.getConnection("jdbc:postgresql://localhost:5432/test","postgres","admin");
	
	PreparedStatement psmt=conn.prepareStatement("select * from admin where ad_username=? and ad_password=?");
	psmt.setString(1,admin.getAd_username());
	psmt.setString(2,admin.getAd_password());
	ResultSet rs=psmt.executeQuery();
	if(rs.next()){
		return true;
	}else{
		return false;
	}
}
	
	/*
	public static Admin ReadAdmin() throws Exception{
		//Class.forName("org.postgresql.Driver");
	
		//Connection conn=DriverManager.getConnection("jdbc:postgresql://localhost:5432/test","postgres","admin");
		
		PreparedStatement psmt=conn.prepareStatement("select login_time from admin where username=?");
		psmt.setString(1,"Admin");
		Admin s=new Admin();
		ResultSet rs=psmt.executeQuery();
		if(rs.next()){
			s.setAd_username(rs.getString("ad_username"));
			s.setAd_password(rs.getString("ad_password"));
			s.setLogin_time(rs.getString("login_time"));
		}
		return s;
	
	
	}*/
	public static boolean UpdateAdmin(Admin admin) throws Exception{
		Class.forName("org.postgresql.Driver");
		//Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection conn=DriverManager.getConnection("jdbc:postgresql://localhost:5432/test","postgres","admin");
		//Connection conn=DriverManager.getConnection("jdbc:db2://localhost:50000/introviz", "Phalguni", "enigma");
		PreparedStatement psmt=conn.prepareStatement("update admin set ad_password=? where ad_username=?");
		psmt.setString(2,admin.getAd_username());
		psmt.setString(1,admin.getAd_password());
		int x=psmt.executeUpdate();
		if(x!=0){
			return true;
		}else{
			return false;
		}
	}
	
	public static String UpdateTime(Admin admin) throws Exception{
		
		Class.forName("org.postgresql.Driver");
		//Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection conn=DriverManager.getConnection("jdbc:postgresql://localhost:5432/test","postgres","admin");
		//Connection conn=DriverManager.getConnection("jdbc:db2://localhost:50000/introviz", "Phalguni", "enigma");
			PreparedStatement psmt=conn.prepareStatement("select * from admin where ad_username=?");
			psmt.setString(1,"Admin");
			ResultSet rs=psmt.executeQuery();
			String logintime="";
			if(rs.next()){
				logintime=rs.getString("login_time");
				//System.out.println((String)session.getAttribute("usernamet"));
			}
			System.out.println("last login time taken");
			PreparedStatement psmt1=conn.prepareStatement("update admin set login_time=? where ad_username=?");
			//System.out.println(admin.getLogin_time());
			//System.out.println(createTime);
			psmt1.setString(1,admin.getLogin_time());
			psmt1.setString(2,"Admin");
			psmt1.executeUpdate();
			System.out.println("login time updated");
			
	
	return logintime;
	}
	
	

}
