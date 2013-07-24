<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Yellowing   
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20110123

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Introviz</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />

</head>

<body>
<%
response.setHeader("Pragma","no-cache"); // HTTP 1.0
response.setHeader("Cache-Control","no-store"); // HTTP 1.1
response.setDateHeader("Expires", 0);
%> 
<%session.setAttribute("updateResult", null); %>
<div id="wrapper">
	<form name="login-form" class="login-form" action="LoginController" method="post">
		<div class="header">
		<h1>EDISCOVERY</h1>
		<span>Fill out the form below to login policy searcher.</span>
		</div>
	
		<div class="content">
		<input name="username" type="text" class="input username" placeholder="Username" />
		<div class="user-icon"></div>
		<input name="password" type="password" class="input password" placeholder="Password" />
		<div class="pass-icon"></div>		
		</div>

		<div class="footer">
		<input type="submit" name="submit" value="Login" class="button" />
		<%String valid =  (String)session.getAttribute("validid");
		String password =  (String)session.getAttribute("password");
		if(valid=="false")
		 {
		 %>
		  <div class="invalid">
		 *Invalid Username or Password.
		</div>
		 <%
		 }
		 %>
		</div>
	
	</form>
</div>

<div class="gradient"></div>				
</body>
</html>