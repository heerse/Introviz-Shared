<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="css/jquery-ui.css" />
<script src="js/jquery-1.9.1.js"></script>
<script src="js/jquery-ui-1.10.3.custom.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>

<title>Change Password</title>
<style>
body{
margin: 0 auto;
width: 1200px;
}
label.error{
color:red;
}
#one{text-align:center;
border:4px solid CC8822;
background-color:FFFFCC;
padding:40px 40px;
width:450px;
border-radius:20px;
}</style> 
<script type="text/javascript">
	$(document).ready(function(){
	jQuery.validator.addMethod("lettersonly",function(value, element) {
	return this.optional(element) || /^[a-z]+$/i.test(value);
	}, "Letters only please");
		var v = $("#registration").validate({
			rules:{				
				password:{
					required:true,
					minlength:6
				},
				cpassword:{
					required:true,
					minlength:6,
					equalTo:"#password"
				}
			},
			messages:{
				
				password:{
					required:"Please enter password.",
					minlength:"Please enter atleast 6 characters."
				},
				cpassword:{
					required:"Please re-enter your password.",
					minlength:"Passwords donot match",
					equalTo:"passwords donot match!!"
				},
				
			}
		});
	});
</script> 
</head>
<body><div id="one" style="height: 700 px;width: 600px">
<h2 >Edit Account Details</h2>
<form action="Ad_ReadUpdateController" method="post" id="registration">
<%System.out.println("now in changepwd.jsp"); %>
<center>
<table>
	<tr>
		<td><label>Name:</label></td>
		<td><input type="text" name="name" id="name" value="${checked}" readonly></td>
	</tr>
	<tr>
		<td><label>Enter your New Password:</label></td>
		<td><input type="password" name="password" id="password"></td>
	</tr>
	<tr>
		<td><label>Confirm Password:</label></td>
		<td><input type="password" name="cpassword" id="cpassword"></td>
	</tr>
	<tr>
		<td align="center"><input type="submit" value="Submit"></td>
		<td align="center"><input type="reset" value="Reset"></td>
	</tr>
</table>
</center>
</form>
</div>

</body>
</html>