<%@ page import="java.io.*" %>
<html>
<body>



<%
String fullurl= request.getHeader("Referer");
int ind=fullurl.indexOf("=");
String query=fullurl.substring(ind+1,fullurl.length());
out.println(query);

%>
<a href="http://203.110.246.112:8080/insuranceland/org.apache.lucene.demo.lusearch3?q=<%=query%>">click</a>



</body>
</html>


  
