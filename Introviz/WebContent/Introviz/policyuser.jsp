<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Introviz</title>
<link rel="stylesheet" href="css/jquery-ui.css"></link>
<script src="js/jquery-1.9.1.js"></script>
<script src="js/jquery-ui-1.10.3.custom.js"></script>
<%--link href="iphone.css" rel="stylesheet" type="text/css" ></link--%>
<%@include file="template.jsp" %>
<script>
  $(function() {
    $( "#accordion" ).accordion({
      collapsible: true
    });
  });
</script>
</head>
<%
String myname=(String)session.getAttribute("username");
if((myname!=null))
{  
%> 
<body>	
<%--div id="iphone">Policies</div--%>
<div id="accordion">
<h3>C</h3>
  <div><p>Hello</p>
    <%--ul>
		<li><a href="frame.jsp?q=customercomplaintshigh" target="_self"><strong>Customer Complaints (High)</strong></a></li>
		<li><a href="frame.jsp?q=customercomplaintsmedium" target="_self"><strong>Customer Complaints (Medium)</strong></a></li>
		<li><a href="frame.jsp?q=customercomplaintslow" target="_self"><strong>Customer Complaints (Low)</strong></a></li>
		<li><a href="frame.jsp?q=californiaferc" target="lusearch"><strong>California FERC</strong></a></li>
		<li><a href="frame.jsp?q=collusionfcpa" target="lusearch"><strong>Collusion FCPA</strong></a></li>
		<li><a href="frame.jsp?q=confidentialinformation" target="lusearch"><strong>Confidential Information</strong></a></li>
		<li><a href="frame.jsp?q=customercomplaintsin" target="lusearch"><strong>Customer ComplaintsIN</strong></a></li>
		<li><a href="frame.jsp?q=customercomplaintsresponseprohibition" target="lusearch"><strong>Customer Complaints Response Prohibition</strong></a></li>
		<li><a href="frame.jsp?q=customercomplaintsunprofresponse" target="lusearch"><strong>Customer Complaints UnProf Response</strong></a></li>
    </ul--%>
  </div>
<h3>E</h3>
  <div><p>hiii</p>
	<%-- ul>
		<li> <a href="frame.jsp?q=excludedsubjects" target="lusearch"><strong>Excluded Subjects</strong></a></li>
		<li> <a href="frame.jsp?q=exclusionlist1" target="lusearch"><strong>Exclusion List 1</strong></a></li>
		<li><a href="frame.jsp?q=exclusionlist2" target="lusearch"><strong>Exclusion List 2</strong></a></li>
		<li><a href="frame.jsp?q=exclusionlist3" target="lusearch"><strong>Exclusion List 3</strong></a></li>
    </ul--%>  
  </div>
<%--h3>F</h3>
  <div>
	  <ul>
		<li><a href="frame.jsp?q=foreigndomains" target="lusearch"><strong>Foreign Domains</strong></a></li>
      </ul>   
  </div>
<h3>G</h3>
  <div>    
	<ul>
		<li><a href="frame.jsp?q=gandecontextterms" target="lusearch"><strong>G & E Context Terms</strong></a></li>
		<li><a href="frame.jsp?q=giftsandentertainment" target="lusearch"><strong>Gifts And Entertainment</strong></a></li>
		<li><a href="frame.jsp?q=guaranteesandassurances" target="lusearch"><strong>Guarantees And Assurances</strong></a></li>
    </ul>  
  </div>
<h3>I</h3>
  <div>
    <ul>
		<li><a href="frame.jsp?q=insiderinformation" target="lusearch"><strong>Insider Information</strong></a></li>
    </ul> 
  </div>
<h3>M</h3>
  <div>
    <ul>
		<li><a href="frame.jsp?q=marketorresearchcommentary" target="lusearch"><strong>Market or Research Commentary</strong></a></li>
		<li><a href="frame.jsp?q=moneylaundering" target="lusearch"><strong>Money Laundering</strong></a></li>
		<li><a href="frame.jsp?q=moneylaunderingdetectionavoidance" target="lusearch"><strong>Money Laundering Detection Avoidance</strong></a></li>
		<li><a href="frame.jsp?q=moneylaunderinghighrisklocations" target="lusearch"><strong>Money Laundering High Risk Locations</strong></a></li>
		<li><a href="frame.jsp?q=moneylaunderinghighriskproducts" target="lusearch"><strong>Money Laundering High Risk Products</strong></a></li>
		<li><a href="frame.jsp?q=moneylaunderinghighrisktransactions" target="lusearch"><strong>Money Laundering High Risk Transactions</strong></a></li>            
    </ul>
  </div>
<h3>O</h3>
  <div>
    <ul>
  		<li><a href="frame.jsp?q=officerelationsorharassment" target="lusearch"><strong>Office Relations / Harassment</strong></a></li>
		<li><a href="frame.jsp?q=ozcaplist" target="lusearch"><strong>Oz Cap List</strong></a></li><!-- More info here -->
    </ul>
  </div>
<h3>P</h3>
  <div>
    <ul>
		<li><a href="frame.jsp?q=personalemailaddresses" target="lusearch"><strong>Personal Email Addresses</strong></a></li>
		<li><a href="frame.jsp?q=prequalifieradvice" target="lusearch"><strong>Pre-Qualifier: Advice</strong></a></li>
		<li><a href="frame.jsp?q=prequalifierrecomendations" target="lusearch"><strong>Pre-Qualifier: Recomendations</strong></a></li>
    </ul>
  </div>
<h3>R</h3>
  <div>
    <ul>
		<li><a href="frame.jsp?q=rumorcirculation" target="lusearch"><strong>Rumor Circulation</strong></a></li>
    </ul>
  </div>
<h3>S</h3>
  <div>
     <ul>
		<li><a href="frame.jsp?q=suitability" target="lusearch"><strong>Suitability</strong></a></li>
     </ul>
  </div>
<h3>W</h3>
  <div>
    <ul>
		<li><a href="frame.jsp?q=watchlist" target="lusearch"><strong>Watch List</strong></a></li>
    </ul>
  </div--%>
</div>

   <%-- ul id="iphone-scroll">

      <li>

        <div id="nav-indicator-fixed"></div>

        <a name="C"></a>

      <div class="nav-indicator" id="nav-c">C</div>

         

      </li>

      <li>

        <a name="E"></a>

      <div class="nav-indicator" id="nav-e">E</div>

         

      </li>

      <li>

        <a name="F"></a>

      <div class="nav-indicator" id="nav-f">F</div>

         
      </li>

      <li>

        <a name="G"></a>

      <div class="nav-indicator" id="nav-g">G</div>
 

      </li>

      <li>

        <a name="I"></a>

      <div class="nav-indicator" id="nav-i">I</div>

           

      </li>	  
<li>

        <a name="M"></a>

      <div class="nav-indicator" id="nav-m">M</div>

         

      </li>
<li>

        <a name="O"></a>

      <div class="nav-indicator" id="nav-o">O</div>

         

      </li>

<li>

        <a name="P"></a>

      <div class="nav-indicator" id="nav-p">P</div>

         

      </li> 
<li>

        <a name="R"></a>

      <div class="nav-indicator" id="nav-r">R</div>

         

      </li>
<li>

        <a name="S"></a>

      <div class="nav-indicator" id="nav-s">S</div>

        

      </li>
<li>

        <a name="W"></a>

      <div class="nav-indicator" id="nav-rw">W</div>

         

      </li>

   </ul--%>


<%
}else{
%>
You are not entitled to view this page.
<%
}
%>
</body>
</html>
