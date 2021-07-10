package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class createquiz_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("        <title>Make_test</title>\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\t\n");
      out.write("\t<style>\n");
      out.write(".dropdown {\n");
      out.write("  position: relative;\n");
      out.write("  display: inline-block;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown-content {\n");
      out.write("  display: none;\n");
      out.write("  position: absolute;\n");
      out.write("  background-color: #f9f9f9;\n");
      out.write("  min-width: 160px;\n");
      out.write("  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);\n");
      out.write("  padding: 12px 16px;\n");
      out.write("  z-index: 1;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown:hover .dropdown-content {\n");
      out.write("  display: block;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body style=\"background:#E0FFFF; background-image: url('bgimg.jpeg');  background-repeat: no-repeat;\n");
      out.write("  background-attachment: fixed; \n");
      out.write("  background-size: 100% 100%;\">\n");
      out.write("    ");
      out.write("\n");
      out.write("\t\t\t\t\t ");
 
					 	if(request.getAttribute("counter")!=null){
                   Integer i=(Integer)request.getAttribute("counter");
                  		 if(i==10){
   								out.println("quiz successfully submitted");
   			
   					
      out.write("\n");
      out.write("   \t\t\t\t         \n");
      out.write("   \t\t\t\t\t\t\t          ");
 
   							             
                   }}
                else{
                  
      out.write("\n");
      out.write("    \n");
      out.write("\n");
      out.write("                  <form action=\"saveques.jsp\" method=\"POST\">\n");
      out.write("\t<center>\n");
      out.write("<h2 style=\"color: white;\">Create a Test</h2><br>\n");
      out.write("</center>\n");
      out.write("\n");
      out.write("<h3 style=\"color: white;\">Choose a Subject</h3><br>\n");
      out.write("<select name=\"subject\" id=\"subject\">\n");
      out.write("    <option value=\"Maths\">Maths</option>\n");
      out.write("    <option value=\"Science\">Science</option>\n");
      out.write("    <option value=\"English\">English</option>\n");
      out.write("    <option value=\"Extra Class\">Extra Class</option>\n");
      out.write("  </select>\n");
      out.write("<br><br>\n");
      out.write("<h3 style=\"color: white;\">Add a question</h3>\n");
      out.write("<textarea rows=\"3\" cols=\"30\" name=\"question\" ></textarea><br><br>\n");
      out.write("<h3 style=\"color: white;\">Option 1</h3>\n");
      out.write("<input type=\"text\" id=\"options\" name=\"option1\"><br><br>\n");
      out.write("<h3 style=\"color: white;\">Option 2</h3>\n");
      out.write("<input type=\"text\" id=\"options\" name=\"option2\"><br><br>\n");
      out.write("<h3 style=\"color: white;\">Option 3</h3>\n");
      out.write("<input type=\"text\" id=\"options\" name=\"option3\"><br><br>\n");
      out.write("<h3 style=\"color: white;\">Option 4</h3>\n");
      out.write("<input type=\"text\" id=\"options\" name=\"option4\"><br><br>\n");
      out.write("<h3 style=\"color: white;\">Correct Option</h3>\n");
      out.write("<input type=\"text\" id=\"answer\" name=\"answer\"><br><br>\n");
      out.write("<h3 style=\"color: white;\">Add Description</h3>\n");
      out.write("<textarea rows=\"3\" cols=\"30\" name=\"explanation\" ></textarea><br><br>\n");
      out.write("<center><input  name=\"sub\" type=\"submit\" value =\"submit\" style=\"width:120px; height:45px;\"></center>\n");
      out.write("\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");

}

      out.write('\n');
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
