<!-- page will be displayed after submitting the quiz -->
<!--Redirected from quiz.jsp  -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet" type="text/css" href="form.css">
<!--<meta charset="ISO-8859-1">-->
</head>
<body style="background:#E0FFFF;">
    <form method="POST" action="index.html">
<%@ page import=" java.sql.Connection,
 java.sql.DriverManager,
 java.sql.PreparedStatement,
 java.sql.ResultSet,
 java.sql.SQLException,
java.sql.Statement,
 java.sql.ResultSetMetaData,
java.util.*" %>
<%!
	
	Connection conn1 = null;
	Statement stmt1 = null;
	ResultSet rs1 = null;
	String ans;
	String dbans;
	int num=1;
        String Attemptmsg;
%>
<%
	out.println("<form action=\"home.jsp\" method=\"POST\">");
	out.println("<b><center><h2>Quiz</h2><br></center></b>");
	try {
		    String table_name=(String)session.getAttribute("subject");
		    Class.forName("org.apache.derby.jdbc.ClientDriver");
		    System.out.println("Driver registered");
                    System.out.println(table_name+"'</h1>");
		    //STEP 2: Establish Connection
		    conn1 = DriverManager.getConnection("jdbc:derby://localhost:1527/quiz","quiz","quiz");
		    System.out.println("Connection established with Database1");
		    stmt1 = conn1.createStatement();
                        //Creating the query
		    String query1 = "SELECT * FROM "+table_name;
                    //out.println("<h1>'"+query1+"'</h1>");
		    rs1=stmt1.executeQuery(query1);
                    //rs1.next();
                    //out.println("<h1>'"+rs1.getString(1)+"'</h1>");
		   
		   
	

				rs1.next();
				out.println("<strong>"+num+")"+rs1.getString(1)+" *:</strong>");
				out.println("<br><br>");
				out.println("<input type=\"radio\" name=\"d1\" value=\"1\">");
				out.println(rs1.getString(2)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d1\" value=\"2\">");
				out.println(rs1.getString(3)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d1\" value=\"3\">");
				out.println(rs1.getString(4)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d1\" value=\"4\">");
				out.println(rs1.getString(5)+"&emsp;");
				ans=request.getParameter("d1");
                System.out.println("ans="+ans);
				dbans=rs1.getString(6);
                                
                                out.println("<br><br>");
				out.println("Answer selected:"+ans);
                                out.println("<br>");
                                out.println("Correct answer:"+dbans);
                                out.println("<br>");
				if(ans.equals(dbans))
				{
					out.println("<h3 style=\"color:green;\">Correct</h3>");
					
				}
				else
				{
					out.println("<h3 style=\"color:red;\">Incorrect</h3>");
                                       
				}
				out.println("<br>");
                                //System.out.println("after if else");
                                out.println("Explanation:"+rs1.getString(7));
                               // System.out.println(rs1.getString(7));
                                out.println("<br><br>");
	   			num++;
                                //System.out.println("89");
	   			rs1.next();
                                // System.out.println("after rs1.next 90");
				out.println("<strong>"+num+")"+rs1.getString(1)+" *:</strong>");
				out.println("<br><br>");
				out.println("<input type=\"radio\" name=\"d2\" value=\"1\">");
				out.println(rs1.getString(2)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d2\" value=\"2\">");
				out.println(rs1.getString(3)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d2\" value=\"3\">");
				out.println(rs1.getString(4)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d2\" value=\"4\">");
				out.println(rs1.getString(5)+"&emsp;");
				ans=request.getParameter("d2");
                System.out.println("d2="+ans);
				dbans=rs1.getString(6);
				out.println("Answer selected:"+ans);
                                out.println("<br>");
                                out.println("Correct answer:"+dbans);
                                out.println("<br>");
				if(ans.equals(dbans))
				{
					out.println("<h3 style=\"color:green;\">Correct</h3>");
					
				}
				else
				{
					out.println("<h3 style=\"color:red;\">Incorrect</h3>");
                                       
				}
				out.println("<br>");
                                out.println("Explanation:"+rs1.getString(7));
                                out.println("<br><br>");
	   			num++;
	   			rs1.next();
				out.println("<strong>"+num+")"+rs1.getString(1)+" *:</strong>");
				out.println("<br><br>");
				out.println("<input type=\"radio\" name=\"d3\" value=\"1\">");
				out.println(rs1.getString(2)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d3\" value=\"2\">");
				out.println(rs1.getString(3)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d3\" value=\"3\">");
				out.println(rs1.getString(4)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d3\" value=\"4\">");
				out.println(rs1.getString(5)+"&emsp;");
				ans=request.getParameter("d3");
                System.out.println("d3="+ans);
                
				dbans=rs1.getString(6);
				out.println("Answer selected:"+ans);
				out.println("<br>");
                                out.println("Correct answer:"+dbans);
                                out.println("<br>");
				if(ans.equals(dbans))
				{
					out.println("<h3 style=\"color:green;\">Correct</h3>");
					
				}
				else
				{
					out.println("<h3 style=\"color:red;\">Incorrect</h3>");
                                       
				}
				out.println("<br>");
                                out.println("Explanation:"+rs1.getString(7));
                                out.println("<br><br>");
	   			num++;
	   			
	   			System.out.println("after rs1.next 153");
	   			rs1.next();
                                System.out.println("after rs1.next 154");
				out.println("<strong>"+num+")"+rs1.getString(1)+" *:</strong>");
				out.println("<br><br>");
				out.println("<input type=\"radio\" name=\"d4\" value=\"1\">");
				out.println(rs1.getString(2)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d4\" value=\"2\">");
				out.println(rs1.getString(3)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d4\" value=\"3\">");
				out.println(rs1.getString(4)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d4\" value=\"4\">");
				out.println(rs1.getString(5)+"&emsp;");
				ans=request.getParameter("d4");
                System.out.println(ans);
                System.out.println("d4 ans");
				dbans=rs1.getString(6);
				out.println("Answer selected:"+ans);
				out.println("<br>");
                                out.println("Correct answer:"+dbans);
                                out.println("<br>");
				if(ans.equals(dbans))
				{
					out.println("<h3 style=\"color:green;\">Correct</h3>");
					
				}
				else
				{
					out.println("<h3 style=\"color:red;\">Incorrect</h3>");
                                       
				}
				out.println("<br>");
                                out.println("Explanation:"+rs1.getString(7));
                                out.println("<br><br>");
	   			num++;
	   			rs1.next();
				out.println("<strong>"+num+")"+rs1.getString(1)+" *:");
				out.println("<br><br>");
				out.println("<input type=\"radio\" name=\"d5\" value=\"1\">");
				out.println(rs1.getString(2)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d5\" value=\"2\">");
				out.println(rs1.getString(3)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d5\" value=\"3\">");
				out.println(rs1.getString(4)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d5\" value=\"4\">");
				out.println(rs1.getString(5)+"&emsp;");
				ans=request.getParameter("d5");
                System.out.println(ans);
				dbans=rs1.getString(6);
				out.println("Answer selected:"+ans);
				out.println("<br>");
                                out.println("Correct answer:"+dbans);
                                out.println("<br>");
				if(ans.equals(dbans))
				{
					out.println("<h3 style=\"color:green;\">Correct</h3>");
					
				}
				else
				{
					out.println("<h3 style=\"color:red;\">Incorrect</h3>");
                                       
				}
				out.println("<br>");
                                out.println("Explanation:"+rs1.getString(7));
                                out.println("<br><br>");
	   			num++;
	   			rs1.next();
				out.println("<strong>"+num+")"+rs1.getString(1)+" *:</strong>");
				out.println("<br><br>");
				out.println("<input type=\"radio\" name=\"d6\" value=\"1\">");
				out.println(rs1.getString(2)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d6\" value=\"2\">");
				out.println(rs1.getString(3)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d6\" value=\"3\">");
				out.println(rs1.getString(4)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d6\" value=\"4\">");
				out.println(rs1.getString(5)+"&emsp;");
				ans=request.getParameter("d6");
                System.out.println(ans);
				dbans=rs1.getString(6);
				out.println("Answer selected:"+ans);
				out.println("<br>");
                                out.println("Correct answer:"+dbans);
                                out.println("<br>");
				if(ans.equals(dbans))
				{
					out.println("<h3 style=\"color:green;\">Correct</h3>");
					
				}
				else
				{
					out.println("<h3 style=\"color:red;\">Incorrect</h3>");
                                       
				}
				out.println("<br>");
                                out.println("Explanation:"+rs1.getString(7));
                                out.println("<br><br>");
	   			num++;
	   			rs1.next();
				out.println("<strong>"+num+")"+rs1.getString(1)+" *:</strong>");
				out.println("<br><br>");
				out.println("<input type=\"radio\" name=\"d7\" value=\"1\">");
				out.println(rs1.getString(2)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d7\" value=\"2\">");
				out.println(rs1.getString(3)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d7\" value=\"3\">");
				out.println(rs1.getString(4)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d7\" value=\"4\">");
				out.println(rs1.getString(5)+"&emsp;");
				ans=request.getParameter("d7");
                System.out.println(ans);
				dbans=rs1.getString(6);
				out.println("Answer selected:"+ans);
				out.println("<br>");
                                out.println("Correct answer:"+dbans);
                                out.println("<br>");
				if(ans.equals(dbans))
				{
					out.println("<h3 style=\"color:green;\">Correct</h3>");
					
				}
				else
				{
					out.println("<h3 style=\"color:red;\">Incorrect</h3>");
                                       
				}
				out.println("<br>");
                                out.println("Explanation:"+rs1.getString(7));
                                out.println("<br><br>");
	   			num++;
	   			rs1.next();
				out.println("<strong>"+num+")"+rs1.getString(1)+" *:</strong>");
				out.println("<br><br>");
				out.println("<input type=\"radio\" name=\"d8\" value=\"1\">");
				out.println(rs1.getString(2)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d8\" value=\"2\">");
				out.println(rs1.getString(3)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d8\" value=\"3\">");
				out.println(rs1.getString(4)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d8\" value=\"4\">");
				out.println(rs1.getString(5)+"&emsp;");
				ans=request.getParameter("d8");
                System.out.println(ans);
				dbans=rs1.getString(6);
				out.println("Answer selected:"+ans);
				out.println("<br>");
                                out.println("Correct answer:"+dbans);
                                out.println("<br>");
				if(ans.equals(dbans))
				{
					out.println("<h3 style=\"color:green;\">Correct</h3>");
					
				}
				else
				{
					out.println("<h3 style=\"color:red;\">Incorrect</h3>");
                                       
				}
				out.println("<br>");
                                out.println("Explanation:"+rs1.getString(7));
                                out.println("<br><br>");
	   			num++;
	   			rs1.next();
				out.println("<strong>"+num+")"+rs1.getString(1)+" *:</strong>");
				out.println("<br><br>");
				out.println("<input type=\"radio\" name=\"d9\" value=\"1\">");
				out.println(rs1.getString(2)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d9\" value=\"2\">");
				out.println(rs1.getString(3)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d9\" value=\"3\">");
				out.println(rs1.getString(4)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d9\" value=\"4\">");
				out.println(rs1.getString(5)+"&emsp;");
				ans=request.getParameter("d9");
                System.out.println(ans);
				dbans=rs1.getString(6);
				out.println("Answer selected:"+ans);
				out.println("<br>");
                                out.println("Correct answer:"+dbans);
                                out.println("<br>");
				if(ans.equals(dbans))
				{
					out.println("<h3 style=\"color:green;\">Correct</h3>");
					
				}
				else
				{
					out.println("<h3 style=\"color:red;\">Incorrect</h3>");
                                       
				}
				out.println("<br>");
                                out.println("Explanation:"+rs1.getString(7));
                                out.println("<br><br>");
	   			num++;
	   			rs1.next();
				out.println("<strong>"+num+")"+rs1.getString(1)+" *:</strong>");
				out.println("<br><br>");
				out.println("<input type=\"radio\" name=\"d10\" value=\"1\">");
				out.println(rs1.getString(2)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d10\" value=\"2\">");
				out.println(rs1.getString(3)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d10\" value=\"3\">");
				out.println(rs1.getString(4)+"&emsp;");
				out.println("<input type=\"radio\" name=\"d10\" value=\"4\">");
				out.println(rs1.getString(5)+"&emsp;");
				ans=request.getParameter("d10");
                System.out.println(ans);
				dbans=rs1.getString(6);
				out.println("Answer selected:"+ans);
				out.println("<br>");
                                out.println("Correct answer:"+dbans);
                                out.println("<br>");
				if(ans.equals(dbans))
				{
					out.println("<h3 style=\"color:green;\">Correct</h3>");
					
				}
				else
				{
					out.println("<h3 style=\"color:red;\">Incorrect</h3>");
                                       
				}
				out.println("<br>");
                                out.println("Explanation:"+rs1.getString(7));
                                out.println("<br><br>");
	   			
	}
        catch(java.lang.NullPointerException ex){
            session.setAttribute("Attemptmsg", "Attempt all questions compulsorily");
           response.sendRedirect("Questions.jsp");
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
%>
<!-- <button type="button" onclick="myFunction10()">View Explanation</button> -->
<!-- <p id="demo10"></p> -->

<!-- <center><input type="text" name="com" placeholder="Any other suggestions?" ></center> -->
<!-- <br><br> -->
<!-- <center><button class="button" name="sub"><strong>SUBMIT</strong></button></center> -->
<input type="submit" value="Go to Home Page"/>
</form>
</body>
</html>