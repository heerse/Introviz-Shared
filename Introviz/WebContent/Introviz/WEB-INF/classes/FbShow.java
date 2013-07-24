import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletResponse;


public class FbShow {

	public FbShow(String policy, HttpServletResponse response) throws IOException {
		Statement stmnt;
		ResultSet rs=null;
		Connection con=null;
		System.out.println(policy);
		String keyword=policy;
		Map<String, String[]> all_hits=new HashMap<String,String[]>();
		FileSearcher fs=new FileSearcher();
		try {
			Class.forName("org.postgresql.Driver");
				con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/test","postgres","admin");
			
			File keyword_file=new File("/root/tomcat7/apache-tomcat-7.0.40/webapps/Introviz/WEB-INF/policy/"+policy);
			FileReader fr=new FileReader(keyword_file);
			BufferedReader br=new BufferedReader(fr);
			keyword=br.readLine();
			while(keyword!=null)
			{
				System.out.println(keyword);
				String[] hits=fs.searchIndex("/index/fbindex",keyword);
				for(int i=0;i<hits.length;i++)
					System.out.println(hits[i]);
				all_hits.put(keyword, hits);
				System.out.println(hits[0]);
				keyword=br.readLine();
			}
			fr.close();
		} catch (Exception e) {
			System.out.println("Search error");
			e.printStackTrace();
		}
		PrintWriter pw=response.getWriter();
		Set<String> key=all_hits.keySet();
		
		Object[] keys=key.toArray();
		response.setContentType("text/html");
		pw.println("<html><head><script type=\"text/javascript\">function showDivFb() { parent.document.getElementById('feedsFb').style.display = \"block\";   parent.document.getElementById('mainFb').style.height=\"178px\";   parent.document.getElementById('mainFb').style.overflow=\"scroll\";}</script>");
		pw.println("<style type=\"text/css\">.table1 tr:hover{background-color:#cdcdcd;}</style></head>");
		pw.println("<body> <table align=\"center\" class=\"table1\" border=\"0\">");
		//pw.print("hi")
		
		
		int k=0;int success=0,flag=0;
		for(int i=0;i<keys.length;i++)
		{
			String[] hits=all_hits.get(keys[i]);
			
			for(int j=0;j<hits.length;j++)
			{	success=1;
				if(flag==0){
				pw.println("<tr><th width=150>Employee</th><th>Facebook Id</th><th></th><th width=150>Date</th></tr>");
				flag++;
				}
				if(k%2==0)
				pw.println("<tr style=\"background-color:#F0F0F0\">");
				else
					pw.println("<tr style=\"background-color:#ffffff\">");
				k++;
				File file=new File(hits[j].toString());
				System.out.println(file);
				//if(j==0)
				//pw.println("<td rowspan=\""+hits.length+"\">"+keys[i].toString()+"</td>");
				SimpleDateFormat sdf=new SimpleDateFormat("MM/dd/yyyy");
				System.out.println(hits[j]);
				
				try {
					
					stmnt=con.createStatement();
					rs=stmnt.executeQuery("SELECT * FROM sm_users WHERE twitter=\'"+file.getName()+"\'");
					if(rs.next())
					pw.println("<td width=150>"+rs.getString("full_name")+"</td>");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				pw.println("<td width=150><a href=\"Content.jsp?file="+file.getPath()+"\" target=\"myFrameFb\" onclick=\"showDivFb()\">"+file.getName()+"</a>"+"</td>");
				if(file.getName().charAt(0)=='@')
				{
					pw.println("<td><img src=\"images/twitter.jpg\" height=20 width=20></img></td>");
				}
				else
				{
					pw.println("<td><img src=\"images/facebook.jpg\" height=20 width=20></img></td>");
				}
				pw.println("<td width=150>"+sdf.format(file.lastModified())+"</td>");
				pw.println("</tr>");
				pw.println("");
			}
			
		}
		if(success==0){
		pw.println("No matching results found.");
		}
		pw.println("</table></body></html>");
		//pw.println("</table><div id=\"feeds\"><iframe src=\"Content.jsp\" name=\"myframe\" width=\"870\" height=\"205\"></iframe></div></body></html>");

	}
}
