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
<table border="3" align="center">
		<tr>
			<th>Employ No</th>
			<th>Employ Name</th>
			<th>Gender</th>
			<th>Department</th>
			<th>Designation</th>
			<th>Basic</th>
		</tr>
		<%
		Connection con = ConnectionHelper.getConnection();
		String cmd = "select * from EmployNew";
		PreparedStatement pst = con.prepareStatement(cmd);
		ResultSet rs = pst.executeQuery();
		while(rs.next()) {
		%>
			<tr>
				<td><%=rs.getInt("empno") %></td>
				<td><%=rs.getString("name") %> </td>
				<td><%=rs.getString("gender") %> </td>
				<td><%=rs.getString("dept") %> </td>
				<td><%=rs.getString("desig") %> </td>
				<td><%=rs.getInt("basic") %> </td>
			</tr>
		<%
		}
		
		%>
	</table>
</body>
</html>