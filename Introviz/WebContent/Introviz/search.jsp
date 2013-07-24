<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>policies page</title>
<%@include file="template.jsp" %>
<link rel="stylesheet" href="jquery-ui.css" />
<link rel="stylesheet" href="prettyCheckable.css">
<script src="prettyCheckable.js"></script>
<link href="custom_try.css" rel="stylesheet" type="text/css" />
<style>
.policy{ 
text-align:center;
position: absolute; 
border-style: solid; 
border-width: 2px;
border-radius: 8px;
background-color: white; 
margin-left:30px; 
padding: 5px; 
top:115px;
width:267px;
height:19px;
font: Courier,Courier New, monospace;
}
.excess {
 overflow: scroll;
 height: 80px;
}

.searchframe{
position: absolute; 
border-style: solid; 
border-width: 2px;
border-radius: 10px;
background-color: white; 
margin-left:340px; 
padding: 1px; 
top:115px;
width:975px;
height:502px;
font: Courier,Courier New, monospace;
}
#cure{
margin-top:-13px;
}
#sort{
margin-top:-40px;
margin-left:690px;
}
#iframe{
margin-top:-26px;
margin-left:-5px;
}

</style>
<script src="js/jquery-1.9.1.js"></script>
<script src="js/jquery-ui-1.10.3.custom.js"></script>
<script>
var $a=$.noConflict(true);
  $a(function() {
    $a( "#accordion" ).accordion({
    	heightStyle: "content",
	clearStyle: true,
	active:false,
      collapsible: true
    });
   
  });
$a(".checkbox").change(function() {
    if(this.checked) {
        //Do stuff
    }
});
$a().ready(function(){

  $a('input.myClass').prettyCheckable({
	checked:"checked"
	});

});
function myFunction(name){
$.ajax({
  			type: "post",
			cache:false,
  			url: "setname.jsp",
  			data: { policyname: name }

		});
return confirm('Are you sure you want to continue?');
}
  </script>
</head>
<body>
<div class="policy">POLICIES</div>
 <div id="accordion">
  <h3>C</h3>
  <div class="excess">
    <ul>

<li><a href="frame.jsp?policy=customercomplaintshigh" target="iframe" onclick="myFunction('Customer Complaints(High)')"><strong>Customer Complaints (High)</strong></a></li>
<li><a href="frame.jsp?policy=customercomplaintsmedium" target="iframe" onclick="myFunction('Customer Complaints(Medium)')"><strong>Customer Complaints (Medium)</strong></a></li> 
<li><a href="frame.jsp?policy=customercomplaintslow" target="iframe" onclick="myFunction('Customer Complaints(Low)')"><strong>Customer Complaints (Low)</strong></a></li>
<li><a href="frame.jsp?policy=californiaferc" target="iframe" onclick="myFunction('California FERC')"><strong>California FERC</strong></a></li>
<li> <a href="frame.jsp?policy=collusionfcpa" target="iframe" onclick="myFunction('Collusion FCPA')"><strong>Collusion FCPA</strong></a></li>
<li> <a href="frame.jsp?policy=confidentialinformation" target="iframe" onclick="myFunction('Confidential Information')"><strong>Confidential Information</strong></a></li>
<li> <a href="frame.jsp?policy=customercomplaintsin" target="frame" onclick="myFunction('Customer ComplaintsIN')"><strong>Customer ComplaintsIN</strong></a></li>
<li> <a href="frame.jsp?policy=customercomplaintsresponseprohibition" target="iframe" onclick="myFunction('Customer Complaints Response Prohibition')"><strong>Customer Complaints Response Prohibition</strong></a></li>
<li> <a href="frame.jsp?policy=customercomplaintsunprofresponse" target="iframe" onclick="myFunction('Customer Complaints UnProf Response')"><strong>Customer Complaints UnProf Response</strong></a></li>

            <!-- More info here -->

         </ul></div>
  <h3>E</h3>
  <div>
    <ul>

<li> <a href="frame.jsp?policy=excludedsubjects" target="iframe" onclick="myFunction('Excluded Subjects')"><strong>Excluded Subjects</strong></a></li>
<li> <a href="frame.jsp?policy=exclusionlist1" target="iframe" onclick="myFunction('Exclusion List 1')"><strong>Exclusion List 1</strong></a></li>
<li><a href="frame.jsp?policy=exclusionlist2" target="iframe" onclick="myFunction('Exclusion List 2')"><strong>Exclusion List 2</strong></a></li>
<li><a href="frame.jsp?policy=exclusionlist3" target="iframe" onclick="myFunction('Exclusion List 3')"><strong>Exclusion List 3</strong></a></li>
            <!-- More info here -->

         </ul>   
  </div>
  <h3>F</h3>
  <div>
  <ul>

<li><a href="frame.jsp?policy=foreigndomains" target="iframe" onclick="myFunction('Foreign Domains')"><strong>Foreign Domains</strong></a></li>
            <!-- More info here -->

         </ul> 
</div>		 
  <h3>G</h3>
  <div>
    <ul>

<li><a href="frame.jsp?policy=gandecontextterms" target="iframe" onclick="myFunction('G & E Context Terms')"><strong>G & E Context Terms</strong></a></li>
<li><a href="frame.jsp?policy=giftsandentertainment" target="iframe" onclick="myFunction('Gifts And Entertainment')"><strong>Gifts And Entertainment</strong></a></li>
<li><a href="frame.jsp?policy=guaranteesandassurances" target="iframe" onclick="myFunction('Guarantees And Assurances')"><strong>Guarantees And Assurances</strong></a></li>
            <!-- More info here -->

         </ul>   
  </div>
  
<h3>I</h3>
<div>
<ul>
<li><a href="frame.jsp?policy=insiderinformation" target="iframe" onclick="myFunction('Insider Information')"><strong>Insider Information</strong></a></li>
            <!-- More info here -->

         </ul>
</div>
<h3>M</h3>		 
<div class="excess">
 <ul>

<li><a href="frame.jsp?policy=marketorresearchcommentary" target="iframe" onclick="myFunction('Market or Research Commentary')"><strong>Market or Research Commentary</strong></a></li>
<li><a href="frame.jsp?policy=moneylaundering" target="iframe" onclick="myFunction('Money Laundering')"><strong>Money Laundering</strong></a></li>
<li><a href="frame.jsp?policy=moneylaunderingdetectionavoidance" target="iframe" onclick="myFunction('Money Laundering Detection Avoidance')"><strong>Money Laundering Detection Avoidance</strong></a></li>
<li><a href="frame.jsp?policy=moneylaunderinghighrisklocations" target="iframe" onclick="myFunction('Money Laundering High Risk Locations')"><strong>Money Laundering High Risk Locations</strong></a></li>
<li><a href="frame.jsp?policy=moneylaunderinghighriskproducts" target="iframe" onclick="myFunction('Money Laundering High Risk Products')"><strong>Money Laundering High Risk Products</strong></a></li>
<li><a href="frame.jsp?policy=moneylaunderinghighrisktransactions" target="iframe" onclick="myFunction('Money Laundering High Risk Transactions')"><strong>Money Laundering High Risk Transactions</strong></a></li>            
<!-- More info here -->

         </ul>
		 </div>
<h3>O</h3>
<div>
 <ul>

  <li><a href="frame.jsp?policy=officerelationsorharassment" target="iframe" onclick="myFunction('Office Relations / Harassment')"><strong>Office Relations / Harassment</strong></a></li>
<li><a href="frame.jsp?policy=ozcaplist" target="iframe" onclick="myFunction('Oz Cap List')"><strong>Oz Cap List</strong></a></li><!-- More info here -->

         </ul>
		 </div>
 <h3>P</h3>
 <div>
	<ul>
<li><a href="frame.jsp?policy=personalemailaddresses" target="iframe" onclick="myFunction('Personal Email Addresses')"><strong>Personal Email Addresses</strong></a></li>
<li><a href="frame.jsp?policy=prequalifieradvice" target="iframe" onclick="myFunction('Pre-Qualifier: Advice')"><strong>Pre-Qualifier: Advice</strong></a></li>
<li><a href="frame.jsp?policy=prequalifierrecomendations" target="iframe" onclick="myFunction('Pre-Qualifier: Recomendations')"><strong>Pre-Qualifier: Recomendations</strong></a></li>
	</ul>
</div>
<h3>R</h3>
		<div>
		<ul>
<li><a href="frame.jsp?policy=rumorcirculation" target="iframe" onclick="myFunction('Rumor Circulation')"><strong>Rumor Circulation</strong></a></li>

         </ul>
		 </div>
<h3>S</h3>
<div>
		  <ul>
<li><a href="frame.jsp?policy=suitability" target="iframe" onclick="myFunction('Suitability')"><strong>Suitability</strong></a></li>
         </ul>
		 </div>
<h3>W</h3>
<div>
  <ul>
<li><a href="frame.jsp?policy=watchlist" target="iframe" onclick="myFunction('Watch List')"><strong>Watch List</strong></a></li>
         </ul>
</div>
</div>
</div>
<div class="searchframe">
<div id="cure"><h3>Contextual Understanding and Retrieval Engine(CURE)</h3><div>

<!--<div id="sort">Sort By:<select name="Order">
<option value="asc">Ascending</option>
<option value="des">Descending</option>
<option value="auto" selected>Recent First</option>
</select></div>
--><iframe src="click.jsp" frameborder="0" width="973" height="477" name="iframe" id="iframe"></iframe>
</div>
</body>
</html>