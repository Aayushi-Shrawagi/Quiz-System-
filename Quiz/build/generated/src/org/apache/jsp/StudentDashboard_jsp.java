package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class StudentDashboard_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("                    .card-container{\n");
      out.write("                        padding-top:30px;\n");
      out.write("                        padding-left:10px;\n");
      out.write("                        /*display: inline-block;*/\n");
      out.write("                    }\n");
      out.write("                    .card {\n");
      out.write("                          /* Add shadows to create the \"card\" effect */\n");
      out.write("                          /*position: relative;*/\n");
      out.write("                          box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);\n");
      out.write("                          transition: 0.3s;\n");
      out.write("                          float:left;\n");
      out.write("                          width:20%;\n");
      out.write("                          margin-left: 1rem;\n");
      out.write("                          margin-bottom: 1rem;\n");
      out.write("\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        /* On mouse-over, add a deeper shadow */\n");
      out.write("                        .card:hover {\n");
      out.write("                          box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        /* Add some padding inside the card container */\n");
      out.write("                        .container {\n");
      out.write("                          padding: 2px 16px;\n");
      out.write("                          color: #002699;\n");
      out.write("                          background-color:white;\n");
      out.write("                          font-size: 17px;\n");
      out.write("                        }\n");
      out.write("                        .button {\n");
      out.write("                          position: relative;\n");
      out.write("                          left: 78%;\n");
      out.write("                          border-radius: 5px;\n");
      out.write("                          background-color:#002699;\n");
      out.write("                          border: none;\n");
      out.write("                          color: #FFFFFF;\n");
      out.write("                          text-align: center;\n");
      out.write("                          font-size: 22px;\n");
      out.write("                          padding: 20px;\n");
      out.write("                          width: 260px;\n");
      out.write("                          height:65px;\n");
      out.write("                          transition: all 0.5s;\n");
      out.write("                          cursor: pointer;\n");
      out.write("                          margin: 5px;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        .button span {\n");
      out.write("                          cursor: pointer;\n");
      out.write("                          display: inline-block;\n");
      out.write("                          position: relative;\n");
      out.write("                          transition: 0.5s;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        .button span:after {\n");
      out.write("                          content: '\\00bb';\n");
      out.write("                          position: absolute;\n");
      out.write("                          opacity: 0;\n");
      out.write("                          top: 0;\n");
      out.write("                          right: -20px;\n");
      out.write("                          transition: 0.5s;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        .button:hover span {\n");
      out.write("                          padding-right: 25px;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        .button:hover span:after {\n");
      out.write("                          opacity: 1;\n");
      out.write("                          right: 0;\n");
      out.write("                        }\n");
      out.write("                        a {\n");
      out.write("                            text-decoration: none !important;\n");
      out.write("                        }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"#e6ecff\">\n");
      out.write("        <center><h1>Student Quiz Dashboard</h1></center>\n");
      out.write("        <button class=\"button\"><span>Quiz analysis</span></button>\n");
      out.write("        <br><br>\n");
      out.write("\n");
      out.write("        <hr style=\"color: navy;\" size=\"4\">\n");
      out.write("        <div class =\"card-container\">\n");
      out.write("\n");
      out.write("         <a href = \"Questions.jsp\" class=\"card\" >\n");
      out.write("          <img src=\"Maths.jpg\" alt=\"Avatar\"  height=\"120px\" style=\"width:100%\">\n");
      out.write("          <div class=\"container\">\n");
      out.write("            <h4><b>Mathematics</b></h4>\n");
      out.write("            <p>topic description</p>\n");
      out.write("             </div>\n");
      out.write("          </a>\n");
      out.write("           \n");
      out.write("         <a href = \"Questions.jsp\" class=\"card\" >\n");
      out.write("          <img src=\"Literature.jpg\" alt=\"Avatar\" height=\"120px\" style=\"width:100%\">\n");
      out.write("          <div class=\"container\">\n");
      out.write("            <h4><b>Literature</b></h4>\n");
      out.write("            <p>topic description</p>\n");
      out.write("          </div>\n");
      out.write("        </a>\n");
      out.write("\n");
      out.write("        <a href = \"Questions.jsp\" class=\"card\" >\n");
      out.write("          <img src=\"science.jpg\" alt=\"Avatar\" height=\"120px\" style=\"width:100%\">\n");
      out.write("          <div class=\"container\">\n");
      out.write("            <h4><b>Science</b></h4>\n");
      out.write("            <p>topic description</p>\n");
      out.write("          </div>\n");
      out.write("      </a>\n");
      out.write("\n");
      out.write("        <a href = \"Questions.jsp\" class=\"card\" >\n");
      out.write("          <img src=\"History.jpg\" height=\"120px\" alt=\"Avatar\" style=\"width:100%\">\n");
      out.write("          <div class=\"container\">\n");
      out.write("            <h4><b>History</b></h4>\n");
      out.write("            <p>topic description</p>\n");
      out.write("          </div>\n");
      out.write("        </a>\n");
      out.write("\n");
      out.write("        <a href = \"Questions.jsp\" class=\"card\" >\n");
      out.write("          <img src=\"geo.jpg\" height=\"120px\" alt=\"Avatar\" style=\"width:100%\">\n");
      out.write("          <div class=\"container\">\n");
      out.write("            <h4><b>Geography</b></h4>\n");
      out.write("            <p>topic description</p>\n");
      out.write("          </div>\n");
      out.write("        </a>\n");
      out.write("        \n");
      out.write("    </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
