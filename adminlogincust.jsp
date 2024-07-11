<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DBconnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<link rel="stylesheet"   type="text/css"  href="bootstrap.min.css" >
<link rel="stylesheet"   type="text/css"  href="bootstrap.min.js" >
<style>
body
{
	background:#2193b0;
	background-size:cover;
	
}
</style>

<body>
<%


Connection con=DBconnect.getcon();

PreparedStatement st= con.prepareStatement("select * from custreg");

{
	
		%>	
		<style>
	table
	{
	font-family:arial,sans-serif;
	border:1px solid black;
	border-collapse:collapse;
	width:80%;
	background-color:white;
	}
	td,th
	{
	border:1px solid black;
	text-allign:left;
	padding:8px;
	}
	btn
	{
	font-size:10px;
	border:1px solid #fff;
	padding:10px 40px;
	margin-right:15px;
	margin-left:10px;
	text-decoration:none;
	color:#fff;
	}
	btn:hover
	{
	background-color:#fff;
	color:#000;
	}
	h3
	{
		font-size:20px;
	}

	</style>
	<br><br><br><br><center>
	<h3><b>USER DETAILS.</b></h3><br>
	<table>
		<tr>
		<th>Name</th>
		<th>Phone no</th>
		<th>Email</th>
		<th>Birth Year</th>
		<th>Password</th>
		<%
		int j=st.executeUpdate();
	ResultSet rs=st.executeQuery();
	while(rs.next())
	{
		%></tr>
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getString(4) %></td>
		<td><%=rs.getString(5) %></td>
	<%
}
%></table> <br><br><a href="adminchoose.html"><input type="submit" class="btn btn-danger" value="OK"><%
}





%>

</body>
</html>