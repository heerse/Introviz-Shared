<html>
<head>
</head>
<body>
<%
		System.out.println("in setname.jsp");
		String name=request.getParameter("policyname");
		session.setAttribute("policyname",name);
%>
</body>
</html>