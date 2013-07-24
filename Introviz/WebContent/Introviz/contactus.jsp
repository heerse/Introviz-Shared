<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Introviz</title>

<link  rel="stylesheet" href="menu.css" type="text/css" ></link>
<link href="iphone.css" rel="stylesheet" type="text/css" ></link>
<%@include file="template.jsp" %>
<%@ page import="java.io.*,java.util.*" %>
</head>
<body>
<%	
   String name =  (String)session.getAttribute("username");
	
%>
<div class="shc">
 		<div class="slider"></div>
 		<div class="admin" align="center"><h4>Contact Us for Technical Support</h4>
 		<h5 align="justify">
 		Email-Id&nbsp: contact_us@introviz.com<br>
 		Address &nbsp: Washington DC<br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1804 Vernon Street NW
 		<br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSuite 200
 		<br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspWashington DC 20009<br>
 		Phone No     :(202) 387 5622<br>
 		</h5></div>
</body>
</html>
