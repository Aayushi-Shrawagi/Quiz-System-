<%-- 
    Document   : Takequiz
    Created on : 14 Apr, 2021, 6:04:39 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Take Quiz</title>
        <style>
.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  padding: 12px 16px;
  z-index: 1;
}

.dropdown:hover 
.dropdown-content {
  display: block;
}
</style>
    </head>
    <body style="background:#E0FFFF;">
        <form method="post" name="myform" action="Questions.jsp">
            <center>  <h1> Take Quiz</h1></center>			
            <div class="dropdown">
<!--                <div class="dropdown-content">-->
                         <select name="subject" id="subject">
                             
                                 <option>Select Subject</option>
                                <option value="Maths">Maths</option>
                                <option value="Science">Science</option>
                                   <option value="English">English</option>
                             
                        </select>
                    </div>
<!--            </div>-->
            <br><center> <input type="submit" value="SUBMIT"></center>
                     </form>
    </body>
</html>
