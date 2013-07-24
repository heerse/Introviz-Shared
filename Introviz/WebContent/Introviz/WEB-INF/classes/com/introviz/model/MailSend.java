package com.introviz.model;

import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.InternetHeaders;
import javax.mail.internet.MimeMessage;


public class MailSend {
	
	public void sendMail(String to,String user,String pwd){
		String host="smtp.gmail.com";
		String username="gupta.phalguni@gmail.com";
		String password="payalgupta12";
		String from="gupta.phalguni@gmail.com";
		String subject="Reg:Password";
		String body="Hello "+user+"<br>Your Username is:"+user+"<br>Your password is:"+pwd+"<br>Click on this link to activate your account by setting a new password.<a href=\"http://vps.insuranceisland.com:8080/Introviz/index.jsp?id="+to+"\">Click Here</a>";
		boolean sessionDebug=false;
		Properties props=System.getProperties();
		props.put("mail.host",host);
		props.put("mail.transport.protocol","smtp");
		props.put("mail.smtp.starttls.enable","true");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.debug", "true");
		//props.put("mail.smtp.socketFactory.port", "465");
		//props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		//props.put("mail.smtp.socketFactory.fallback", "false");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "25"); 
		Session mailSession=Session.getDefaultInstance(props,null);
		mailSession.setDebug(sessionDebug);
		Message msg=new MimeMessage(mailSession);
		InternetHeaders headers = new InternetHeaders();
		headers.addHeader("Content-type", "text/html; charset=UTF-8");
		try {
			msg.setFrom(new InternetAddress(from));
			InternetAddress [] address={new InternetAddress(to)};
			msg.setRecipients(Message.RecipientType.TO,address);
			msg.setSubject(subject);
			msg.setSentDate(new Date());
			msg.setContent(body,"text/html");
			Transport tr=mailSession.getTransport("smtp");
			tr.connect(host,username,password);
			msg.saveChanges();
			tr.sendMessage(msg,msg.getAllRecipients());
			tr.close();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
