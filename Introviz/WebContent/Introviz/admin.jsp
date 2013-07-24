<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Yellowing   
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20110123

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" href="jquery-ui.css" />
  	<script src="jquery-1.9.1.js"></script>
  	<script src="jquery-ui-1.10.3.custom.js"></script>
        <title></title>
       <!-- Include Styles -->
        <link rel="stylesheet" href="tab.css" /> 

<!-- Add jQuery library -->
	<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>

	<!-- Add mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="js/jquery.mousewheel-3.0.6.pack.js"></script>

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
				afterClose: function() {   
				<%--out.println("val"+session.getAttribute("deleteRecord")+"is");
				if(((session.getAttribute("updateResult"))!=null)||((session.getAttribute("addRecord"))!=null)||((session.getAttribute("deleteRecord"))!=null)){ --%>
				     parent.location.reload(true); 
				<%-- } --%>
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
		 $a( "#show-option" ).tooltip({
  	  	  show: {
        		effect: "slideDown",
        		delay: 250
      			}
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

       
        <!--[if IE 7]><style type="text/css">#v-nav>ul>li.current{border-right:1px solid #fff!important}#v-nav>div.tab-content{z-index:-1!important;left:0}</style><![endif]-->
        <!--[if IE 8]><style type="text/css">#v-nav>ul>li.current{border-right:1px solid #fff!important}#v-nav>div.tab-content{z-index:-1!important;left:0}</style><![endif]-->
    </head>
    <body>
      <section id="wrapper" class="wrapper">
            <h1 class="title">Administration Menu</h1>
            <div id="v-nav">
                <ul>
                    <li tab="tab1" class="first current">Dashboard</li>
                    <li tab="tab2">User Administration</li>
                    <li tab="tab3">Keyword Administration</li>
                    <li tab="tab4" class="last">Employee Administration</li>
		    <li><img src="images/logo1.png" width="180" height="170" ></img></li>
                </ul>
                <div class="tab-content">
                    <h4>Dashboard</h4>
			<hr>
			<ul>
				<br><li>You last logged in on<%out.println(" "+session.getAttribute("usernamet"));%></li>
				<br><li><a href="#">Social Media</a></li>
				<br><li>No Users online</li>
			</ul>
                </div>
                <div class="tab-content">
                    <h4>User Administration</h4><hr>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			<a id="show-option" class="fancybox fancybox.iframe"  href="adduser.jsp" title="Add User">
			<img src="images/add.jpg" height="50" width="50"></img></a>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			<a id="show-option" class="fancybox fancybox.iframe" href="deluser.jsp" title="Remove User">
			<img src="images/remove.jpg" height="50" width="50"></img></a>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			<a id="show-option" class="fancybox fancybox.iframe" href="changepwd.jsp" title="Modify User Details">
			<img src="images/modify.jpg" height="50" width="50"></img></a>
			<br><br><iframe src="DisplayAllController" frameborder="0" width="640" height="180"></iframe>
                </div>
                <div class="tab-content">
                    <h4>Keyword Administration</h4>                   
                </div>
                <div class="tab-content">
                    <h4>Employee Administration</h4>                   
                </div>
	    </div>
        </section>
        <!-- Include Scripts -->
        <script type="text/javascript" src="js/jquery.min.js"></script> 
        <script type="text/javascript" src="js/jquery.ba-hashchange.js"></script>       
        <script type="text/javascript" src="script.js"></script>
    </body>
</html>
