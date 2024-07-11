<%@page import="Database.DBconnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="Database.DBconnect"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<%

String phnumber=request.getParameter("t1");
String upass=request.getParameter("t2");
Connection con=DBconnect.getcon();
PreparedStatement st = con.prepareStatement("select * from custreg where phoneno='"+phnumber+"' and password='"+upass+"'");
int j=st.executeUpdate();

if (j==1)
{
	%>	
	<script type="text/javascript">
	alert('You are very close to book your slot.');
	</script>
	<jsp:include page="information.html"></jsp:include>
	<%
}
else
{
	%>	
	<script type="text/javascript">
	alert('Please enter valid Phone number/Password.');
	</script>
	<jsp:include page="custlogin.html"></jsp:include>
	<%

}
%>
</body>
</html>