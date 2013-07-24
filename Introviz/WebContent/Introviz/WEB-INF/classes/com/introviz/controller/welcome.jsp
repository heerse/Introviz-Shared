<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Introviz</title>

<link  rel="stylesheet" href="menu.css" type="text/css" ></link>
<link href="iphone.css" rel="stylesheet" type="text/css" ></link>
<%@include file="template.jsp" %>
<%@ page import="java.io.*,java.util.*" %>
<!-- Add jQuery library -->
	<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>

	<!-- Add mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="js//jquery.mousewheel-3.0.6.pack.js"></script>

	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="fancybox/source/jquery.fancybox.js?v=2.1.5"></script>
	<link rel="stylesheet" type="text/css" href="fancybox/source/jquery.fancybox.css?v=2.1.5" media="screen" />

	<!-- Add Button helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="fancybox/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" />
	<script type="text/javascript" src="fancybox/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>

	<!-- Add Thumbnail helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="fancybox/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" />
	<script type="text/javascript" src="fancybox/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>

	<!-- Add Media helper (this is optional) -->
	<script type="text/javascript" src="fancybox/source/helpers/jquery.fancybox-media.js?v=1.0.6"></script>

	<script type="text/javascript">
	var $a=$.noConflict(true);
		$a(document).ready(function() {
			/*
			 *  Simple image gallery. Uses default settings
			 */

			$a('.fancybox').fancybox({
				afterClose : function() {
					<%//if((session.getAttribute("updateResult"))!=null){%>
			        location.reload();<%//}%>
			        return;
			    }
			});
				
			/*
			 *  Different effects
			 */

			// Change title type, overlay closing speed
			$a(".fancybox-effects-a").fancybox({
				helpers: {
					title : {
						type : 'outside'
					},
					overlay : {
						speedOut : 0
					}
				}
			});

			// Disable opening and closing animations, change title type
			$a(".fancybox-effects-b").fancybox({
				openEffect  : 'none',
				closeEffect	: 'none',

				helpers : {
					title : {
						type : 'over'
					}
				}
			});

			// Set custom style, close if clicked, change title type and overlay color
			$a(".fancybox-effects-c").fancybox({
				wrapCSS    : 'fancybox-custom',
				closeClick : true,

				openEffect : 'none',

				helpers : {
					title : {
						type : 'inside'
					},
					overlay : {
						css : {
							'background' : 'rgba(238,238,238,0.85)'
						}
					}
				}
			});

			// Remove padding, set opening and closing animations, close if clicked and disable overlay
			$a(".fancybox-effects-d").fancybox({
				padding: 0,

				openEffect : 'elastic',
				openSpeed  : 150,

				closeEffect : 'elastic',
				closeSpeed  : 150,

				closeClick : true,

				helpers : {
					overlay : null
				}
			});

			/*
			 *  Button helper. Disable animations, hide close button, change title type and content
			 */

			$a('.fancybox-buttons').fancybox({
				openEffect  : 'none',
				closeEffect : 'none',

				prevEffect : 'none',
				nextEffect : 'none',

				closeBtn  : false,

				helpers : {
					title : {
						type : 'inside'
					},
					buttons	: {}
				},

				afterLoad : function() {
					this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
				}
			});


			/*
			 *  Thumbnail helper. Disable animations, hide close button, arrows and slide to next gallery item if clicked
			 */

			$a('.fancybox-thumbs').fancybox({
				prevEffect : 'none',
				nextEffect : 'none',

				closeBtn  : false,
				arrows    : false,
				nextClick : true,

				helpers : {
					thumbs : {
						width  : 50,
						height : 50
					}
				}
			});

			/*
			 *  Media helper. Group items, disable animations, hide arrows, enable media and button helpers.
			*/
			$a('.fancybox-media')
				.attr('rel', 'media-gallery')
				.fancybox({
					openEffect : 'none',
					closeEffect : 'none',
					prevEffect : 'none',
					nextEffect : 'none',

					arrows : false,
					helpers : {
						media : {},
						buttons : {}
					}
				});

			/*
			 *  Open manually
			 */

			$a("#fancybox-manual-a").click(function() {
				$a.fancybox.open('1_b.jpg');
			});

			$a("#fancybox-manual-b").click(function() {
				$a.fancybox.open({
					href : 'iframe.html',
					type : 'iframe',
					padding : 5
				});
			});

			$a("#fancybox-manual-c").click(function() {
				$a.fancybox.open([
					{
						href : '1_b.jpg',
						title : 'My title'
					}, {
						href : '2_b.jpg',
						title : '2nd title'
					}, {
						href : '3_b.jpg'
					}
				], {
					helpers : {
						thumbs : {
							width: 75,
							height: 50
						}
					}
				});
			});


		});
		$.noConflict();
	</script>
	<style type="text/css">
		.fancybox-custom .fancybox-skin {
			box-shadow: 0 0 50px #222;
		}

		body {
			max-width: 1350px;
			margin: 0 auto;
		}
	</style>
</head>
<body>
<%	
   String name =  (String)session.getAttribute("username");
	
	
%>
<%
if( name.equals("Admin")){
%>
<div class="shc">
 		<div class="slider"></div>
 		<div class="admin"><h2>Welcome<%out.println(" "+name);//System.out.println("time is"+(String)session.getAttribute("usernamet")); 
 		%></h2>
 		<h5><%if(session.getAttribute("usernamet")==null){%>
 		<a class="fancybox fancybox.iframe" href="changepwd.jsp">This is your first session.Kindly change password.</a>
 		<%}else{%>&nbsp&nbsp&nbsp&nbsp
 		You last Logged-in on 
 		<%out.println(" "+session.getAttribute("usernamet")); }%>
 		</h5></div>
 		<div class="container"><a href="accordion.jsp" class="borderedtext">CURE</a></div>
 		<div class="connector"><a href="#" class="borderedtext">Run Connector</a></div>
	</div>
<%
}else{
%>
	<div class="shc">
 		<div class="slider"></div>
 		<div class="admin"><h2>Welcome<%out.println(" "+name); %></h2>
 		<h5><%if(session.getAttribute("usernamet")==null){%>
 		<a class="fancybox fancybox.iframe" href="changepwd.jsp">This is your first session.Kindly change password.</a>
 		<%}else{%>&nbsp&nbsp&nbsp&nbsp
 		You last Logged-in on 
 		<%out.println(" "+session.getAttribute("usernamet")); }%>
 		</h5></div><br><br><br>
 		<div class="container"><a href="accordion.jsp" class="borderedtext">CURE</a></div>
	</div>
	<%} %>
     <%//out.println("hi"+session.getAttribute("updateResult"));
     //System.out.println(session.getAttribute("updateResult"));
	if((session.getAttribute("updateResult"))!=null){
		%>
			Thank you for changing your password!!
		<%
	}else{//out.println("Password not yet changed");
	}
%>
</body>
</html>
