<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="login.jsp">
<center>
User Name : 
			<input type="text" name="userName" /> 
			<br/><br/> 
Password:
          <input type="text" name="passCode" />
          <br/><br/>
 <input type ="submit" value="login" />
 		
</center>
</form>
<%
if(request.getParameter("userName")!=null && request.getParameter("passCode")!=null){
	String user=request.getParameter("userName");
	String pwd =request.getParameter("passCode");
	
	if(user.equals("Mphasis")&& pwd.equals("Mphasis")){
		%>
		<jsp:forward page="Menu.jsp"/>  
		<% 
	} else {
	%>
	<p>
	   Invalid Credentials...
	</p>
     <% 
	}		
}
%>
</body>
</html>