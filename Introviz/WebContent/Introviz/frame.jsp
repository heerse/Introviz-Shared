<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="jquery-1.9.1.js"></script>
<link rel="stylesheet" href="jquery-ui.css" />
  <script src="jquery-ui-1.10.3.custom.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css" />
<script type="text/javascript">

  $(function() {
    $( "#tabs" ).tabs({
      heightStyle:"content"
    });
  });
  </script>
<style>
#feedsAll{
margin-top:.01px;
height:194px;
width:945px;
display:none;
margin-bottom:0px;
padding-bottom:0em;

}
#feeds{
margin-top:.00px;
overflow:scroll;
height:194px;
width:945px;
margin-bottom:0px;
padding-bottom:0em;
}
#mainAll{
width:945px;
height:390px;
padding-bottom:0em;
}


#feedsFb{
margin-top:.01px;
height:194px;
width:945px;
display:none;
margin-bottom:0px;
padding-bottom:0em;
}
#mainFb{
width:945px;
height:390px;
padding-bottom:0em;
}


#feedsTwitter{
margin-top:.01px;
height:194px;
width:945px;
display:none;
margin-bottom:0px;
padding-bottom:0em;
}
#mainTwitter{
width:945px;
height:390px;
padding-bottom:0em;
}


#feedsEmail{
margin-top:.01px;
height:194px;
width:945px;
display:none;
margin-bottom:0px;
padding-bottom:0em;
}
#mainEmail{
width:945px;
height:390px;
padding-bottom:0em;
}

#myframe{
padding-bottom:0em;
padding-top:0em;
width:840px;
}
</style>
</head>
<body>
<%
String policyname=(String)session.getAttribute("policyname");
String policy=request.getParameter("policy");
session.setAttribute("policy",policy);
%>
<div id="tabs" name="tabdiv">
  <ul>
    <li><a href="#tabs-1">All</a></li>
    <li><a href="#tabs-2"><img src="images/fb.jpg" height="25px" width="25px"></img></a></li>
    <li><a href="#tabs-3"><img src="images/twitter.jpg" height="25px" width="25px"></img></a></li>
    <li><a href="#tabs-4"><img src="images/mail.jpg" height="25px" width="31px"></img></a></li>
	<div align="right"><% out.println(policyname); %></div>
  </ul>
  <div id="tabs-1" >
    <p><iframe id="mainAll" frameborder="0" name="resultframe" src="resultall.jsp"></iframe><!--<a href="#" onclick="showDivAll()">Suppose this is a link to a day's all data..</a>-->
        <div id="feedsAll"> <hr><iframe src="#" frameborder="0" name="myFrameAll"  id="feeds" ></iframe></div>
    </p></div>
  <div id="tabs-2">
    <p><iframe id="mainFb" frameborder="0" src="resultfb.jsp"></iframe><!--<a href="#" onclick="showDivFb()">Suppose this is a link to a day's fb posts..</a></div>-->
         <div id="feedsFb"><hr><iframe src="#" frameborder="0"  name="myFrameFb" id="feeds"></iframe></div>
	</p></div>
  <div id="tabs-3">
    <p><iframe id="mainTwitter" frameborder="0" src="resulttwitter.jsp"></iframe><!--<a href="#" onclick="showDivTwitter()">Suppose this is a link to a day's twitter feeds..</a></div>-->
         <div id="feedsTwitter"><hr><iframe src="#" frameborder="0"  name="myFrameTwitter" id="feeds"></iframe></div>
</p></div>
  <div id="tabs-4">
    <p><iframe id="mainEmail" frameborder="0"></iframe><!--<a href="#" onclick="showDivEmail()">Suppose this is a link to a day's emails..</a></div>-->
          <div id="feedsEmail"><hr><iframe src="#" frameborder="0" name="myFrameEmail" id="feeds"></iframe></div>
</p></div>
</div>

		

</body>
</html>

