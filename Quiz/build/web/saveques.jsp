<%@page import="java.sql.DatabaseMetaData"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>


</head>
<body style="background:#E0FFFF;">
<%@ page import=" java.sql.Connection,
 java.sql.DriverManager,
 java.sql.PreparedStatement,
 java.sql.ResultSet,
 java.sql.SQLException,
java.sql.Statement,
 java.sql.ResultSetMetaData,
java.util.*" %>

 
<%! static int counter=0; %>
<%

    
        Connection conn1 = null;
        Statement stmt = null;
        ResultSet rs = null;
        
        try {
//        Step 1: Register the driver class
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            System.out.println("Driver registered");

//        STEP 2: Establish Connection
            conn1 = DriverManager.getConnection("jdbc:derby://localhost:1527/quiz","quiz","quiz");
           
            System.out.println("Connection established");

//        Step 3: Create Statement
            stmt = conn1.createStatement();
            if(counter==0){
                
    DatabaseMetaData databaseMetadata = conn1.getMetaData();
    ResultSet resultSet = databaseMetadata.getTables(null, null, "'"+request.getParameter("subject")+"'", null);
    if (resultSet.next()) {
      String query="drop table "+request.getParameter("subject");
                stmt.executeUpdate(query);
    } else {
        //language=MySQL
        
                
                 String query=" create table "+ request.getParameter("subject")+"( question varchar(3000) NOT NULL,option1 varchar(200) NOT NULL,option2 varchar(200) NOT NULL,option3 varchar(200) NOT NULL,option4 varchar(200) NOT NULL,answer varchar(200) NOT NULL , explanation varchar(3000) NOT NULL)";
                stmt.executeUpdate(query);
           }
            }
            String query1="insert into "+request.getParameter("subject")+" values("+"'"+request.getParameter("question")+"','"+request.getParameter("option1")+"','"+request.getParameter("option2")+"','"+request.getParameter("option3")+"','"+request.getParameter("option4")+"','"+request.getParameter("answer")+"','"+request.getParameter("explanation")+"')";
            System.out.println(query1);
            stmt.executeUpdate(query1);
            
            counter++;
            System.out.println("Done");
        }catch(java.sql.SQLSyntaxErrorException ex){
            //System.out.println("Table does not exist");
            ex.printStackTrace();
        }
        catch (ClassNotFoundException ex) {
            System.out.println(ex);
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        finally {   
//        Step 6: Close all resources
            try {
                if (rs != null) {
                    rs.close();
                }
                
                
                if (stmt != null) {
                    stmt.close();
                }
                if (conn1 != null) {
                    conn1.close();
                }
            } catch (SQLException ex) {
                System.out.println("Exception occured while releasing resources");
            }

        }
            %>
            <% 
request.setAttribute("counter",counter);
response.sendRedirect("createquiz.jsp");
%>
<%--<jsp:forward page=></jsp:forward>--%>

</body>
</html>



