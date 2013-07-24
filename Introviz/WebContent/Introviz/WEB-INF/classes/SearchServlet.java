

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("html/text");
		PrintWriter pw=response.getWriter();
		pw.println("<html><head><script type=\"text/javascript\" src=\"/root/tomcat7/apache-tomcat-7.0.40/webapps/Introviz/jquery-1.9.1.js\"></script><link rel=\"stylesheet\" href=\"/root/tomcat7/apache-tomcat-7.0.40/webapps/Introviz/jquery-ui.css\" />  <script src=\"/root/tomcat7/apache-tomcat-7.0.40/webapps/Introviz/jquery-ui-1.10.3.custom.js\"></script>  <link rel=\"stylesheet\" href=\"/resources/demos/style.css\" /><script type=\"text/javascript\"$(function() {    $( \"#tabs\" ).tabs({      event: \"mouseover\",      heightStyle:\"content\"    });  });</script>");
		pw.println("<style>#feedsAll{margin-top:.01px;overflow:scroll;height:182px;display:none;margin-bottom:0px;padding-bottom:0em;}#mainAll{width:858px;height:361px;}#feedsFb{margin-top:.01px;overflow:scroll;height:182px;display:none;margin-bottom:0px;padding-bottom:0em;}#mainFb{width:858px;height:361px;}#feedsTwitter{margin-top:.01px;overflow:scroll;height:182px;display:none;margin-bottom:0px;padding-bottom:0em;}#mainTwitter{width:858px;height:361px;}#feedsEmail{margin-top:.01px;overflow:scroll;height:182px;display:none;margin-bottom:0px;padding-bottom:0em;}#mainEmail{width:858px;height:361px;}#myframe{padding-bottom:0em;padding-top:0em;width:840px;}</style></head>");		
		pw.println("<body><div id=\"tabs\">  <ul>    <li><a href=\"#tabs-1\">All</a></li>    <li><a href=\"#tabs-2\"><img src=\"images/fb.jpg\" height=\"25px\" width=\"25px\"></img></a></li>    <li><a href=\"#tabs-3\"><img src=\"images/twitter.jpg\" height=\"25px\" width=\"25px\"></img></a></li>    <li><a href=\"#tabs-4\"><img src=\"images/mail.jpg\" height=\"25px\" width=\"31px\"></img></a></li>  </ul>  <div id=\"tabs-1\">    <p><div id=\"mainAll\"></div>         <div id=\"feedsAll\" ><hr><iframe src=\"#\" width=100% height=\"140px\" name=\"myFrameAll\" id=\"myframe\"></iframe></div>    </p></div>  <div id=\"tabs-2\">    <p><div id=\"mainFb\" ></div>         <div id=\"feedsFb\" ><hr><iframe src=\"#\" width=100% height=\"140px\" name=\"myFrameFb\" id=\"myframe\"></iframe></div></p></div>  <div id=\"tabs-3\">    <p><div id=\"mainTwitter\" ></div>         <div id=\"feedsTwitter\" ><hr><iframe src=\"#\" width=100% height=\"140px\" name=\"myFrameTwitter\" id=\"myframe\"></iframe></div></p></div>  <div id=\"tabs-4\">    <p><div id=\"mainEmail\" ></div>         <div id=\"feedsEmail\" ><hr><iframe src=\"#\" width=100% height=\"140px\" name=\"myFrameEmail\" id=\"myframe\"></iframe></div></p></div></div></body></html>");
		String policy=request.getParameter("policy");
		TwitterShow ts=new TwitterShow(policy, response);
		AllShow as=new AllShow(policy, response);
		FbShow fs=new FbShow(policy, response);
		
			}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}		
}
