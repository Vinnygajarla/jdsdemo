
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
<form method="get" action="EmployInsert.jsp">
		<center>
			Employ No : 
			<input type="number" name="empno" /> <br/><br/>
			Employ Name : 
			<input type="text" name="name" /> <br/> <br/>
			Gender : 
			<select name="gender">
				<option value="Male">Male</option>
				<option value="Female">Female</option>
			</select> <br/><br/> 
			Department : 
			<input type="text" name="dept" /> <br/><br/>
			Designation : 
			<input type="text" name="desig" /> <br/><br/>
			Basic : 
			<input type="number" name="basic" /> <br/><br/>
			<input type="submit" value="Insert" />
		</center>
	</form>
	<%
	if (request.getParameter("empno")!=null && request.getParameter("basic")!=null) {
		Connection con = ConnectionHelper.getConnection();
		String cmd = "Insert into EmployNew(empno,name,gender,dept,desig,basic) "+ 
				" values(?,?,?,?,?,?) ";
		PreparedStatement pst = con.prepareStatement(cmd);
		pst.setInt(1, Integer.parseInt(request.getParameter("empno")));
		pst.setString(2, request.getParameter("name"));
		pst.setString(3, request.getParameter("gender"));
		pst.setString(4, request.getParameter("dept"));
		pst.setString(5, request.getParameter("desig"));
		pst.setInt(6, Integer.parseInt(request.getParameter("basic")));
		pst.executeUpdate();
		out.println("*** Record Inserted ***");
	}
%>
</body>
</html>