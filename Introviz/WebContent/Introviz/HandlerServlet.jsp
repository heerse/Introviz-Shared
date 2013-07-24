<html>
<head>
</head>
<body>
<%
		System.out.println("in handler servlet");
		//pw.println("<html><head>in handler Servlet</head></html>");
		String check2=request.getParameter("check1");
		session.setAttribute("checked",check2);
		//response.getWriter().write(check2);
%>
</body>
</html>