<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>
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
	
	String usr,passwd;
	
	int num=1;
%>
<%
    try{
		    
		    Class.forName("org.apache.derby.jdbc.ClientDriver");
		    System.out.println("Driver registered");
		    //STEP 2: Establish Connection
		    conn1 = DriverManager.getConnection("jdbc:derby://localhost:1527/quiz","quiz","quiz");
		    System.out.println("Connection established with Database1");
		    stmt1 = conn1.createStatement();
		    //Creating the query
		    usr=request.getParameter("username");
		    passwd=request.getParameter("password");
		    String query1 = "SELECT password FROM TEACHER Where username=\'"+usr+"\'";
		    rs1=stmt1.executeQuery(query1);
                    rs1.next();
		    String getPass =rs1.getString(1);
		    if(getPass.equals(passwd))
		    {
		    	response.sendRedirect("createquiz.jsp");
		    }
		    else
		    {
		    	out.println("<h1>Invalid Password!</h1>");
		    	out.println("<form action=\"index.html\" method=\"POST\"><input type=\"submit\" value\"Go To Login Page\"></form>");
		    }
    
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
</body>
</html>