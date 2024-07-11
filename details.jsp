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

String number=request.getParameter("t2");
Connection con=DBconnect.getcon();
PreparedStatement st = con.prepareStatement("select custreg.name,custreg.phoneno,custreg.email,bookinfo.organizer,bookinfo.bdate,bookinfo.programe,bookinfo.tslot from custreg INNER JOIN bookinfo ON custreg.phoneno= '"+number+"'");
ResultSet rs=st.executeQuery();

while(rs.next())
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
	text-align:left;
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

</style>
<br><br><br><br><center>
Here Your Profile.<br>
<table><img src="avatar.png" class="avatar">

<tr><th>Name</th><th>Phone no</th><th>Email</th><th>Organizer name</th><th>Booking date</th><th>Program Name</th><th>Time slot</th></tr>
<td><%=rs.getString(1) %></td><td><%=rs.getString(2) %></td><td><%=rs.getString(3) %></td><td><%=rs.getString(4) %></td><td><%=rs.getString(5) %></td><td><%=rs.getString(6) %></td><td><%=rs.getString(7) %></td>

</table><br>

<a href=start.html>
<input type="submit" class="btn btn-warning" value="OK"></a>
<input type="submit" class="btn btn-danger" value="Cancel" onclick="cancel()">

<script type="text/javascript">
function cancel()
{
	alert('Your request for cancellation is accepted.');
}
		</script>
		

<%
}

%>
</body>
</html>