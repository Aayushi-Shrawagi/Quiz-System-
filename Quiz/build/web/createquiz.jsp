<!DOCTYPE html>
<html>
<head>
        <title>Make_test</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
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

.dropdown:hover .dropdown-content {
  display: block;
}
</style>

</head>

<body style="background:#E0FFFF; background-image: url('bgimg.jpeg');  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;">
    <%--<%@page import="java.awt.Dialog"%><jsp:include page="header.jsp"></jsp:include>

<%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");

%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
}
%>

             <% 
					if(request.getAttribute("notlogin_msg")!=null){
					out.print("<font size='2' color='red' m>");
					out.print(request.getAttribute("notlogin_msg"));
					out.print("</font>");
					}
					%>
				<% 
					if(request.getAttribute("Error")!=null){
					out.print("<font size='2' color='red' >");
					out.print(request.getAttribute("Error"));
					out.print("</font>");
					}
					%>--%>
					 <% 
					 	if(request.getAttribute("counter")!=null){
                   Integer i=(Integer)request.getAttribute("counter");
                  		 if(i==10){
   								out.println("quiz successfully submitted");
   			
   					%>
   				         
   							          <% 
   							             
                   }}
                else{
                  %>
    

                  <form action="saveques.jsp" method="POST">
	<center>
<h1 style="color: white;">Create a Test</h1><br>
</center>

<h3 style="color: white;">Choose a Subject</h3><br>
<select name="subject" id="subject">
    <option value="Maths">Maths</option>
    <option value="Science">Science</option>
    <option value="English">English</option>
    <option value="Extra Class">Extra Class</option>
  </select>
<br><br>
<h3 style="color: white;">Add a question</h3>
<textarea rows="3" cols="30" name="question" ></textarea><br><br>
<h3 style="color: white;">Option 1</h3>
<input type="text" id="options" name="option1"><br><br>
<h3 style="color: white;">Option 2</h3>
<input type="text" id="options" name="option2"><br><br>
<h3 style="color: white;">Option 3</h3>
<input type="text" id="options" name="option3"><br><br>
<h3 style="color: white;">Option 4</h3>
<input type="text" id="options" name="option4"><br><br>
<h3 style="color: white;">Correct Option</h3>
<input type="text" id="answer" name="answer"><br><br>
<h3 style="color: white;">Add Description</h3>
<textarea rows="3" cols="30" name="explanation" ></textarea><br><br>
<center><input  name="sub" type="submit" value ="submit" style="width:120px; height:45px;"></center>

</form>


</body>

</html>
<%
}
%>
