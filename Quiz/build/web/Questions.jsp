<%@page import="java.sql.Connection"%>
<!-- page will be displayed after submitting the quiz -->
<!--Redirected from quiz.jsp  -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="form.css">
<meta charset="ISO-8859-1">
</head>
<body style="background:#E0FFFF;">
    <script>
    var ans=["hello"];
    var i =1;
    function addDropdown(Ques,op1,op2,op3,op4){
                            document.getElementById("space").innerHTML+="<br><h3>"+Ques+"</h3>"+//\"select1\"
                            " <input type=\"radio\" id=\"r1\" name=\"select"+i+"\" value=\"op1\">"+
                            "<label for=\"op1\">"+op1+"</label><br>"+
                            " <input type=\"radio\" id=\"r2\" name=\"select"+i+"\" value=\"op2\">"+
                            "<label for=\"op2\">"+op2+"</label><br>"+
                            " <input type=\"radio\" id=\"r3\" name=\"select"+i+"\" value=\"op3\">"+
                            "<label for=\"op3\">"+op3+"</label><br>"+
                            " <input type=\"radio\" id=\"r4\" name=\"select"+i+"\" value=\"op4\">"+
                            "<label for=\"op4\">"+op4+"</label>";
                            //document.getElementById("space").innerHTML="<h1>Hello!</h1>"
                            i++;
                    }
    }
    function display(){
        document.getElementById("space").innerHTML=ans;
        document.getElementById("space").innerHTML+=document.getElementById("r1").innerHTML;
    }
</script>
<!--<form action="Answer.jsp" method="POST">-->
<b><center><h2>Quiz</h2></center></b>
<div id="space">
    <script>addDropdown("How are you?","good","bad","fine","Excellent");</script>
    <!--<script>addDropdown("How are you?","good","bad","fine","Excellent");</script>-->
    <br>
    <input type="submit" value="test" onclick="display()">
</div>
<%@ page import=" java.sql.Connection,
 java.sql.DriverManager,
 java.sql.PreparedStatement,
 java.sql.ResultSet,
 java.sql.SQLException,
java.sql.Statement,
 java.sql.ResultSetMetaData,
java.util.*" %>
<%!
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
%>
<%
	
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
%>

<br><br>
<!--<center><button class="button" name="sub"><strong>SUBMIT</strong></button></center>-->
<!--</form>-->
</body></html>