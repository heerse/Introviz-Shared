<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Introviz</title>

<link  rel="stylesheet" href="css/menu.css" type="text/css" ></link>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="interface.js"></script>
<script type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</script>
</head>
<body onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">	
<div class="dock" id="dock">

  <div class="dock-container">

  <a class="dock-item" href="welcome.jsp"><img src="images/home.png" alt="home" ></img><span>Home</span></a> 
  <%--String username=(String)session.getAttribute("username");
  if(username.equals("Admin")){--%>
	<a class="dock-item" href="tp1.jsp"><img src="images/admin.png" alt="admin" ></img><span>Administrator</span></a>
	<%--} --%>
  <a class="dock-item" href="myaccount.jsp"><img src="images/policies.png" alt="myaccount" ></img><span>Account</span></a> 

  <a class="dock-item" href="contactus.jsp"><img src="images/email.png" alt="contact"  ></img><span>Contact Us</span></a>   

  <a class="dock-item" href="http://vps-1080248-6880.manage.myhosting.com:8080/QMC/index.jsp"><img src="images/link.png" alt="rss"  ></img><span>QMC</span></a> 

  <a class="dock-item" href="logout.jsp"><img src="images/logout.png" alt="logout" ></img><span>Logout</span></a>   
  </div>
</div>
</body>
<script>
        $(document).ready(
                function()
                {
                        $('#dock').Fisheye(
                                {
                                        maxWidth: 50,
                                        items: 'a',
                                        itemsText: 'span',
                                        container: '.dock-container',
                                        itemWidth: 40,
                                        proximity: 90,
                                        halign : 'center'
                                }
                        );
                    }
);
$.noConflict();
</script>
</html>
