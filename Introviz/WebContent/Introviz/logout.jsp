<%
String username=(String)session.getAttribute("username");
if(username!=null){
    /// out.println(username+" logged out, <a href=\"index.jsp\">Back</a>");
    session.removeAttribute("username");
    session.removeAttribute("usernamep");
    session.removeAttribute("usernamet");
    session.removeAttribute("user");
    response.sendRedirect("index.jsp");            
}else{
	response.sendRedirect("index.jsp");         
	//out.println("You are already not login <a href=\"index.jsp\">Back</a>");
}
%>  

