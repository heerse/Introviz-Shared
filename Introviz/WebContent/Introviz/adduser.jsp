<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="jquery-ui.css" rel="stylesheet" />
<script src="jquery-1.9.1.js"></script>
<script src="jquery-ui-1.10.3.custom.js"></script>
<script type="text/javascript" src="jquery.validate.js"></script>

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
				name:{
					required:true,
					minlength:1,
					lettersonly:true
				},
				emailid:{
					required:true,
					email:true,
					remote:"ValidateEmail"
				},
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
				name:{
					required:"Please enter User Name.",
					number:"Please enter a valid name(numbers and/or special characters are not allowed)."
				},
				emailid:{
					required:"Please enter email id.",
					email:"Please enter valid email id",
					remote:"already exists."
				},
				password:{
					required:"Please enter password.",
					minlength:"Please enter atleast 6 characters."
				},
				cpassword:{
					required:"Please re-enter your password.",
					minlength:"Passwords donot match",
					equalTo:"passwords donot match!!"
				}
				
			}
		});
	});
</script> 
</head>
<body><div id="one" style="height: 700 px;width: 600px">
<h2 >Add User Account Details</h2>
<form action="AddUserController" method="post" id="registration">
<%System.out.println("now in adduser.jsp"); %>
<center>
<table>
	<tr>
		<td><label>Name:</label></td>
		<td><input type="text" name="name" id="name"></td>
	</tr>
	<tr>
		<td><label>Email ID:</label></td>
		<td><input type="text" name="emailid" id="emailid"></td>
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