<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.java.jds.ConnectionHelper"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="get" action="EmploySearch.jsp">
		<center>
			Employ No : 
			<input type="number" name="empno" /> <br/><br/> 
			<input type="submit" value="Search" /> 
		</center>
	</form>
	<%
	  if (request.getParameter("empno")!=null) {
		int empno = Integer.parseInt(request.getParameter("empno"));
		Connection con = ConnectionHelper.getConnection();
		String cmd = "select * from EmployNew where empno=?";
		PreparedStatement pst = con.prepareStatement(cmd);
		pst.setInt(1, empno);
		ResultSet rs = pst.executeQuery();
		if (rs.next()) {
			out.println("Employ Name   " +rs.getString("name") + "<br/>");
			out.println("Department   " +rs.getString("dept") + "<br/>");
			out.println("Designation   " +rs.getString("desig") + "<br/>");
			out.println("Gender   " +rs.getString("gender") + "<br/>");
			out.println("Basic   " +rs.getInt("basic") + "<br/><hr/>");
		} else {
			out.println("*** Record Not Found ***");
		}
	  }
	%>
</body>
</html>