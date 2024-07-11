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

String number=request.getParameter("t3");
String pass=request.getParameter("t4");
Connection con=DBconnect.getcon();
PreparedStatement st = con.prepareStatement("select * from adminentry where phoneno='"+number+"' and password='"+pass+"'");
int j=st.executeUpdate();

if (j==1)
{
	%>	
	<script type="text/javascript">
	alert('Welcome...');
	</script>
	<jsp:include page="adminchoose.html"></jsp:include>
	<%
}
else
{
	%>	
	<script type="text/javascript">
	alert('You are not admin.');
	</script>
	<jsp:include page="adminlogin.html"></jsp:include>
	<%
}
%>

</body>
</html>