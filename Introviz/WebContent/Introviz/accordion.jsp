<!doctype html>
 
<html lang="en">
<head>
  <meta charset="utf-8" />
  <title>jQuery UI Accordion - Collapse content</title>
  <link href="jquery-ui.css" rel="stylesheet" />
  <link href="custom_try.css" rel="stylesheet" type="text/css" />
  <script src="jquery-1.9.1.js"></script>
  <script src="jquery-ui-1.10.3.custom.js"></script>
  <script src="dynamic_div.js"></script>
  <script>
var $a=$.noConflict(true);
  $a(function() {
    $a( "#accordion" ).accordion({
    	heightStyle: "content",
      collapsible: true
    });
  });
$(document).ready(function(){
    $("a").hover(function(){
        position();
    });
});
  </script>
</head>
<body>
<style type="text/css">
#tip1{
text-align:center;
border:4px solid 000000;
background-color:FFFFFF;
width:350px;
height:200px;
border-radius:20px;
position: fixed;
visibility: hidden;
}

</style>


 <%@ include file="template.jsp" %>
 <div 
   id="uniquename3" 
   style="display:none; 
      position:absolute; 
      border-style: solid; 
      background-color: white;
      margin-left :500px; 
      padding: 5px;
	
      overflow:visible"
      >
Content goes here.
</div>
<br>
<div><h2 align="center">Contextual Understanding and Retrieval Engine(CURE)</h2></div>
 <div id="accordion">
  <h3>C</h3>
  <div >
    <ul>

<li><a href="frame.jsp?q=customercomplaintshigh" target="lusearch" onmouseover="ShowContent('uniquename3'); return true;"
   onmouseout="HideContent('uniquename3'); return true;" onclick=" return confirm('Are you sure you want to leave this page?')"><strong>Customer Complaints (High)</strong></a></li>
<li><a href="frame.jsp?q=customercomplaintsmedium" target="lusearch" onmouseover="ShowContent('uniquename3'); return true;"
   onmouseout="HideContent('uniquename3'); return true;"><strong>Customer Complaints (Medium)</strong></a></li> 
<li><a href="frame.jsp?q=customercomplaintslow" target="lusearch"><strong>Customer Complaints (Low)</strong></a></li>
<li><a href="frame.jsp?q=californiaferc" target="lusearch"><strong>California FERC</strong></a></li>
<li> <a href="frame.jsp?q=collusionfcpa" target="lusearch"><strong>Collusion FCPA</strong></a></li>
<li> <a href="frame.jsp?q=confidentialinformation" target="lusearch"><strong>Confidential Information</strong></a></li>
<li> <a href="frame.jsp?q=customercomplaintsin" target="lusearch"><strong>Customer ComplaintsIN</strong></a></li>
<li> <a href="frame.jsp?q=customercomplaintsresponseprohibition" target="lusearch"><strong>Customer Complaints Response Prohibition</strong></a></li>
<li> <a href="frame.jsp?q=customercomplaintsunprofresponse" target="lusearch"><strong>Customer Complaints UnProf Response</strong></a></li>

            <!-- More info here -->

         </ul></div>
  <h3>E</h3>
  <div>
    <ul>

<li> <a href="frame.jsp?q=excludedsubjects" target="lusearch"><strong>Excluded Subjects</strong></a></li>
<li> <a href="frame.jsp?q=exclusionlist1" target="lusearch"><strong>Exclusion List 1</strong></a></li>
<li><a href="frame.jsp?q=exclusionlist2" target="lusearch"><strong>Exclusion List 2</strong></a></li>
<li><a href="frame.jsp?q=exclusionlist3" target="lusearch"><strong>Exclusion List 3</strong></a></li>
            <!-- More info here -->

         </ul>   
  </div>
  <h3>F</h3>
  <div>
  <ul>

<li><a href="frame.jsp?q=foreigndomains" target="lusearch"><strong>Foreign Domains</strong></a></li>
            <!-- More info here -->

         </ul> 
</div>		 
  <h3>G</h3>
  <div>
    <ul>

<li><a href="frame.jsp?q=gandecontextterms" target="lusearch"><strong>G & E Context Terms</strong></a></li>
<li><a href="frame.jsp?q=giftsandentertainment" target="lusearch"><strong>Gifts And Entertainment</strong></a></li>
<li><a href="frame.jsp?q=guaranteesandassurances" target="lusearch"><strong>Guarantees And Assurances</strong></a></li>
            <!-- More info here -->

         </ul>   
  </div>
  
<h3>I</h3>
<div>
<ul>
<li><a href="frame.jsp?q=insiderinformation" target="lusearch"><strong>Insider Information</strong></a></li>
            <!-- More info here -->

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
<!-- More info here -->

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
</div>
</div>
</body>
 
  
</html>