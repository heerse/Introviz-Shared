<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Content</title>
</head>
<body>
<%@ page import="java.io.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="java.text.*" %>
<% 
String filename=request.getParameter("file"); 
File file=new File(filename);
FileReader fr=new FileReader(file);
BufferedReader br=new BufferedReader(fr);
String temp=br.readLine();
%>
<table><tr><th>Tweet</th><th>Time</th></tr><%
while(temp!=null)
{%>
<tr>
	<% SimpleDateFormat sdf=new SimpleDateFormat("EEE MMM dd HH:mm:ss zzz yyyy");
	String time;
	try{
	time=sdf.parse(temp).toString();
	}
	catch(Exception e)
	{
		continue;
	}
	String[] pieces=temp.split(time);
	%><td style=background-color:#F0F0F0><% out.print(pieces[1].toString()); %></td>
<td>
<% out.println(time); %></td></tr><%
	temp=br.readLine();
}
br.close();
fr.close();
%></table>

</body>
</html>