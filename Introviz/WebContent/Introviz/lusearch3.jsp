<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>

<%--<%@ page import="org.apache.lucene.demo"%> --%>

<%-- page import="queryform.*"--%>

<%@ page import="java.io.File"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.io.PrintWriter"%>
 

<%@ page import="java.io.*"%>
<%@ page import="java.io.BufferedReader"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.io.InputStream"%>
<%@ page import="java.io.InputStreamReader"%>

<%@ page import="org.apache.lucene.analysis.standard.StandardAnalyzer"%>
<%@ page import="org.apache.lucene.analysis.Analyzer"%>
<%@ page import="org.apache.lucene.document.Document"%>
<%@ page import="org.apache.lucene.index.IndexReader"%>
<%@ page import="org.apache.lucene.queryParser.QueryParser"%>
<%@ page import="org.apache.lucene.search.IndexSearcher"%>
<%@ page import="org.apache.lucene.search.Query"%>
<%@ page import="org.apache.lucene.search.ScoreDoc"%>
<%@ page import="org.apache.lucene.search.TopDocs"%>
<%@ page import="org.apache.lucene.search.TopFieldDocs"%>
<%@ page import="org.apache.lucene.search.Sort"%>
<%@ page import="org.apache.lucene.search.TopScoreDocCollector"%>
<%@ page import="org.apache.lucene.store.FSDirectory"%>
<%@ page import="org.apache.lucene.util.Version"%>




<html>
<head>
<title>Insuranceland</title>
</head>

<link href="overlay.css" rel="stylesheet" type="text/css" />
<link href="menu.css" rel="stylesheet" type="text/css" />

<body>

<div class="dock" id="dock">

  <div class="dock-container">

  <a class="dock-item" href="welcome.jsp"><img src="images/home.png" alt="home" /><span>Home</span></a>

  <a class="dock-item" href="admin_home.jsp"><img src="images/policies.png" alt="policies" /><span>Policies</span></a>

  <a class="dock-item" href="contactus.jsp"><img src="images/email.png" alt="contact" /><span>Contact Us</span></a>

  <a class="dock-item" href="http://vps-1080248-6880.manage.myhosting.com:8080/QMC/index.jsp"><img src="images/link.png" alt="rss" /><span>QMC</span></a>

  <a class="dock-item" href="logout.jsp"><img src="images/logout.png" alt="logout" /><span>Logout</span></a>
</div>
</div>
<div class="email">

<br>

<%



String fullurl= request.getHeader("Referer");
String abc=request.getParameter("q");
//out.println(abc);
int ind=fullurl.indexOf("=");
String query1=fullurl.substring(ind+1,fullurl.length());
//out.println(query1);






		  String str1="FOLLOWEDBY";
		  String str2="NEAR";
		  String fname;
		  String fresult;
		  String nresult,nresult1,nresult2,nresult3,tresult="",ttresult="";
		  int fi,NI,fcoma,ncoma,fsi,nsi,ni,tli;

		  ServletContext context = getServletContext();
		  String filename = "/WEB-INF/policy/";
		  filename=filename+query1;
		 // out.println("filename====="+filename);

		   InputStream inp = context.getResourceAsStream(filename);
		    
		    if (inp != null) 
		    {
			InputStreamReader isr = new InputStreamReader(inp);
			BufferedReader reader = new BufferedReader(isr);

		   String line;
			//pw.println("<link href='/WEB-INF/style.css' rel='stylesheet' media='screen'/>");
			while ((line = reader.readLine()) != null) 
			{
			//out.println(line);
				fresult="";
				fresult=fresult+"\"";
				fi=line.indexOf(str1);
				if(fi!=-1)
				{
				    fresult=fresult+line.substring(0,fi-1);
				    fresult=fresult+" ";
				    fsi=line.indexOf(" ",fi);
				    fcoma=line.indexOf(",");
				    try{
				    fresult=fresult+line.substring(fsi+1,fcoma);}
catch(java.lang.StringIndexOutOfBoundsException e)
{continue;
}
				    fresult=fresult+"\"";
				    fresult=fresult+"~";
				    try{fresult=fresult+line.substring(fcoma+2,line.length());}
				    catch(java.lang.StringIndexOutOfBoundsException e){continue;}
				//System.out.println(fresult);
				    tresult=tresult+fresult+"OR";
				}
				    nresult="";
				    nresult=nresult+"\"";
				    ni=line.indexOf(str2);
				if(ni!=-1)
				{
				    nresult1=line.substring(0,ni-1);
				    nresult=nresult+nresult1;
				    nresult=nresult+" ";
				    nsi=line.indexOf(" ",ni);
				    ncoma=line.indexOf(",");
				   try{ nresult2=line.substring(nsi+1,ncoma);}
				catch(java.lang.StringIndexOutOfBoundsException e){
				
					//out.println("nsi:"+String.valueOf(nsi)+"ncoma:"+String.valueOf(ncoma)+"\n");
					continue;
					}
				    nresult=nresult+nresult2;
				    nresult=nresult+"\"";
				    nresult=nresult+"~";
				    nresult3=line.substring(ncoma+2,line.length());
				    nresult=nresult+nresult3;
				    nresult=nresult+"OR";
				    nresult=nresult+"\"";
				    nresult=nresult+nresult2;
				    nresult=nresult+" ";
				    nresult=nresult+nresult1;
				    nresult=nresult+"\"";
				    nresult=nresult+"~";
				    nresult=nresult+nresult3;
				//System.out.println(nresult);
				    tresult=tresult+nresult+"OR";
				}

				 if((fi==-1) &&(ni==-1))
                                    tresult=tresult+"\""+line+"\""+"OR";





			}
	tli=tresult.lastIndexOf("OR");
	ttresult=tresult.substring(0,tli);
	//System.out.println(ttresult);




		}
	//	out.println("passed this");
		IndexReader reader = null;
		StandardAnalyzer analyzer = null;
		//Analyzer analyzer=null;
		IndexSearcher searcher = null;
		TopScoreDocCollector collector = null;
		QueryParser parser = null;
		Query query = null;
		ScoreDoc[] hits = null;
		//TopFieldDocs results=null;
		String field="contents";
		String indexpath="/opt/tomcat-instance/ediscovery/webapps/ediscovery/insuranceisland/WEB-INF/newindex";
		int hitsPerPage=10;
	
	
		try{

	//		out.println("Reached here");
			searcher = new IndexSearcher(FSDirectory.open(new File(indexpath)));
			String userQuery=ttresult;
			analyzer = new StandardAnalyzer(Version.LUCENE_31);
			parser = new QueryParser(Version.LUCENE_31, field, analyzer);
			query = parser.parse(userQuery);
		TopDocs results = searcher.search(query, 100000);
			//results = searcher.search(query, 100000,new Sort());
			hits = results.scoreDocs;
			int numTotalHits = results.totalHits;
    		out.println(numTotalHits + " total matching documents");
			out.println("<br>");
			
			int startpage=50;
			int lastpage=hits.length;
			int i;
		
out.println("Displaying the most relevant 50 documents");



if(hits.length>0)
			{
				

				out.println("<TABLE>");
				out.println("<TR><th>Mark</th><th>Date</th><th>From</th><th>To</th><th>Subject</th></TR>");
i=0;

			do
			{

				
				
				
			
					Document document = searcher.doc(hits[i].doc);
					

String strdate;
strdate=document.get("Date");
//pw.println(strdate);
String trimdate=strdate.substring(0,17);
//pw.println(trimdate);

String strto;
String trimto="";
if(document.get("To")!=null)
{
strto=document.get("To");
trimto=strto;
if(strto.length()>40)
{
trimto=strto.substring(0,40);
trimto=trimto+"......";
}
}
else
trimto=null;




if(i%2==0)
{
out.println("<TR bgcolor=\"#ECE5B6\"><TD width=\"3%\"><input type=\"checkbox\"></TD><TD width=\"20%\">"+trimdate+"</TD><TD width=\"20%\">"+document.get("From")+"</TD><TD align=\"center\">"+trimto+"</TD><TD width=\"20%\"><a href=\"#\" style=\"text-decoration:none;color=#000; \" class=\"display\" id="+document.get("path")+">"+document.get("Subject")+"</a></TR>");
trimto=null;	

}
//out.println(document.get("path"));
if(i%2!=0)
{
out.println("<TR bgcolor=\"#ffffff\" ><TD width=\"3%\"><input type=\"checkbox\"></TD><TD width=\"20%\">"+trimdate+"</TD><TD width=\"20%\">"+document.get("From")+"</TD><TD align=\"center\">"+trimto+"</TD><TD width=\"20%\"><a href=\"#\" class=\"display\" id="+document.get("path")+">"+document.get("Subject")+"</a></TR>");
trimto=null;	

}



				//String subdisp=document.get("contents");

//pw.println("<FORM><INPUT TYPE=\"BUTTON\" VALUE=\"Back\" onClick=back("strdate")></FORM>");
			
					String path = document.get("path");
					//String id=doc.get(2);
					if (path == null)
						//pw.println((i+1) + ". " + path);
					//else 
						out.println((i+1) + ". " + "No path for this document");
      					
 				
i++;

				}while(i<startpage);
				
				
				

				
			}
			else
			{
				out.println("<P>No records found");
			}
%>


<%

//pw.println("<FORM><INPUT TYPE=\"BUTTON\" VALUE=\"Back\" onClick=back()></FORM>");









		    }
		  catch(Exception e)
		  {
			e.printStackTrace();
		  }

		  finally
		  {
			if(reader!=null)
				reader.close();
		  }



%>
</div> 
 <div id="container">
    <div id="popup">
	<div id="content">
      <div id="source_content"><iframe id="fame" name="fame" width=750px height=500px></iframe></div>	
	</div>	
    <a href="#" id="close"><img src="close.png"/></a>
    </div>
  </div>
  
<div id="overlay"> 
</div>


</body>
<script type="text/javascript" src="overlay.js"></script>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/interface.js"></script>
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
</script>

<script language = "javascript">
function disp(l)
{
	alert(l);

}
</script> 

<br>
</html>
