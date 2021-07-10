package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSetMetaData;
import java.util.*;

public final class Questions_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


	String url1="jdbc:derby://localhost:1527/Quiz";
	Connection conn1 = null;
	Statement stmt1 = null;
	ResultSet rs1 = null;
	String ans;
	String dbans;
	String Username="app";
	String password="app";
	int num=1;
        String Attemptmsg;

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!-- page will be displayed after submitting the quiz -->\n");
      out.write("<!--Redirected from quiz.jsp  -->\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"form.css\">\n");
      out.write("<meta charset=\"ISO-8859-1\">\n");
      out.write("</head>\n");
      out.write("<body style=\"background:#E0FFFF;\">\n");
      out.write("    <script>\n");
      out.write("    var ans=[\"hello\"];\n");
      out.write("    var i =1;\n");
      out.write("    function addDropdown(Ques,op1,op2,op3,op4){\n");
      out.write("                            document.getElementById(\"space\").innerHTML+=\"<br><h3>\"+Ques+\"</h3>\"+\n");
      out.write("                            \" <input type=\\\"radio\\\" id=\\\"r1\\\" name=\\\"select\"+i+\"\\\" value=\\\"op1\\\">\"+\n");
      out.write("                            \"<label for=\\\"op1\\\">\"+op1+\"</label><br>\"+\n");
      out.write("                            \" <input type=\\\"radio\\\" id=\\\"r2\\\" name=\\\"select\"+i+\"\\\" value=\\\"op2\\\">\"+\n");
      out.write("                            \"<label for=\\\"op2\\\">\"+op2+\"</label><br>\"+\n");
      out.write("                            \" <input type=\\\"radio\\\" id=\\\"r3\\\" name=\\\"select\"+i+\"\\\" value=\\\"op3\\\">\"+\n");
      out.write("                            \"<label for=\\\"op3\\\">\"+op3+\"</label><br>\"+\n");
      out.write("                            \" <input type=\\\"radio\\\" id=\\\"r4\\\" name=\\\"select\"+i+\"\\\" value=\\\"op4\\\">\"+\n");
      out.write("                            \"<label for=\\\"op4\\\">\"+op4+\"</label>\";\n");
      out.write("                            //document.getElementById(\"space\").innerHTML=\"<h1>Hello!</h1>\"\n");
      out.write("                            i++;\n");
      out.write("                    }\n");
      out.write("    }\n");
      out.write("    function display(){\n");
      out.write("        document.getElementById(\"space\").innerHTML=ans;\n");
      out.write("        document.getElementById(\"space\").innerHTML+=document.getElementById(\"r1\").innerHTML;\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("<!--<form action=\"Answer.jsp\" method=\"POST\">-->\n");
      out.write("<b><center><h2>Quiz</h2></center></b>\n");
      out.write("<div id=\"space\">\n");
      out.write("    <script>addDropdown(\"How are you?\",\"good\",\"bad\",\"fine\",\"Excellent\");</script>\n");
      out.write("    <!--<script>addDropdown(\"How are you?\",\"good\",\"bad\",\"fine\",\"Excellent\");</script>-->\n");
      out.write("    <br>\n");
      out.write("    <input type=\"submit\" value=\"test\" onclick=\"display()\">\n");
      out.write("</div>\n");
      out.write("\n");
      out.write('\n');

	
	try {
		    String table_name=request.getParameter("subject");
		    Class.forName("org.apache.derby.jdbc.ClientDriver");
		    System.out.println("Driver registered");
		
		    //STEP 2: Establish Connection
		    conn1 = DriverManager.getConnection(url1,Username,password);

		    //System.out.println("Connection established with Database1");
		    stmt1 = conn1.createStatement();
		
		    //Creating the query
		    String query1 = "SELECT * FROM "+table_name;
		    rs1=stmt1.executeQuery(query1);
                    rs1.next();
				
		
           session.setAttribute("subject",table_name);
	}
	catch (ClassNotFoundException ex)
	{
	    System.out.println(ex);
	}
	catch (SQLException ex) 
	{
	    System.out.println(ex);
	}
	finally
	{   
        	//Step 6: Close all resources
            try {
                if(rs1!= null ) {
                    rs1.close();
                   
                }
                if (stmt1!= null) {
                    stmt1.close();
                    
                }
                if (conn1!= null) {
                    conn1.close();
                   
                }
            }
            catch (SQLException ex) 
            {
                System.out.println("Exception occured while releasing resources");
            }
	}

      out.write("\n");
      out.write("\n");
      out.write("<br><br>\n");
      out.write("<!--<center><button class=\"button\" name=\"sub\"><strong>SUBMIT</strong></button></center>-->\n");
      out.write("<!--</form>-->\n");
      out.write("</body></html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
