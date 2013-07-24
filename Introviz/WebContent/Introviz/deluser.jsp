<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
				}
			},
			messages:{
				name:{
					required:"Please enter User Name.",
					number:"Please enter a valid name(numbers and/or special characters are not allowed)."
				}
				
			}
		});
	});

</script> 
</head>
<body><div id="one" style="height: 700 px;width: 600px">
<h2 >User Account Details</h2>
<form action="DelUserController" method="post" id="registration">
<%--System.out.println("now in deluser.jsp"); value="${checked}"--%>
<center>
<table>
	<tr>
		<td><label>Name:</label></td>
		<td><input type="text" name="name" id="name" value="${checked}" readonly></td>
	</tr>
	
	<tr>
		<td align="center"><input type="submit" value="Delete" onclick="return confirm('Are you sure you want to continue?')" ></td>
		<td align="center"><input type="reset" value="Reset"></td>
	</tr>
</table>
</center>
</form>
</div>

</body>
</html>