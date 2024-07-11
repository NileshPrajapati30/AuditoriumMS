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

String no=request.getParameter("t3");
Connection con=DBconnect.getcon();
PreparedStatement qs = con.prepareStatement("select password from custreg where phoneno= '"+no+"'");
ResultSet rs=qs.executeQuery();

if(rs.next())
{
%>


	<script type="text/javascript">
	alert('Password:-<%=rs.getString(1) %>');
	</script>
	<jsp:include page="custlogin.html"></jsp:include>
<%


}
else
{
	%>	
	<script type="text/javascript">
	alert('You are not user.');
	</script>
	<jsp:include page="custlogin.html"></jsp:include>
	<%
}

%>
</body>
</html>