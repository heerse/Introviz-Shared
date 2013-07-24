<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="jquery-1.9.1.js"></script>
<%--var overwrite = $('input:radio:checked').val();
--%>
</head>
<body><div id="itemList">gender?
<input type="radio" name="gender" id="gender_Male" value="Male" />Male
<input type="radio" name="gender" id="gender_Female" value="Female" />Female
</div>
<form>
</body>
<script type="text/javascript">

$(document).ready(function(){    
   var overwrite = $('input:radio:checked').val();


     alert('value = ' + overwrite);
});
</script>
</html>

