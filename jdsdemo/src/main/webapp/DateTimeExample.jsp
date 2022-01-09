<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	java.util.Date obj = new java.util.Date();
%>
Time is : 
<b>
	<%=obj.getHours() %> : <%=obj.getMinutes() %> : <%=obj.getSeconds() %>
</b>
</body>
</html>