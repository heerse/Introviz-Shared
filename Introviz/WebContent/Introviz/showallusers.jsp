<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="jquery-1.9.1.js"></script>

</head>
<body bgcolor="white"><p>
<form action="#" name="myForm">
<table align="center">
	<tbody>
		<tr>	<td width="50"></td>
			<td width="150">Username</td>
			<td width="150">Password</td>
			<td width="200" >Email-Id</td> 
			<td width="500" >Last Login Time</td>
		</tr>
		<c:forEach var="s" items="${user}">
		<% int i=1;%>
		<tr>
		<td><input type="radio" name="myRadioButtonSet" id="myRadioButtonSet$('i')" value="${s.username}">
		<%-- System.out.println(s.username); --%>
		<td>${s.username}</td>
		<td>${s.password}</td>
		<td>${s.email_id}</td>
		<c:choose >
		<c:when test="${s.last_login_time==null}">
			<td>Not yet Logged In</td></c:when>
			<c:otherwise>
			<td>${s.last_login_time}</td></tr></c:otherwise>
		</c:choose>
		</tr>
		<% i++;%>
		</c:forEach>
	</tbody>
	
</table>
</form>
</p>
</body>
<script type="text/javascript">
  $(function(){
    	var oldValue = $('input:radio[name=myRadioButtonSet]:checked') ;
    	$('input:radio[name=myRadioButtonSet]').click(function(){
    		var newValue = $('input:radio[name=myRadioButtonSet]:checked').val() ;
      		
      		oldValue = newValue ;
	
		$.ajax({
			<% System.out.println("dunnno what else to do..");%>
  			type: "post",
			cache:false,
			<% System.out.println("temme what to do..");%>
  			url: "HandlerServlet.jsp",
  			data: { check1: oldValue }

		});
      		return ;
    	}) ;
   	 return ;
  }) ;
</script>
</html>