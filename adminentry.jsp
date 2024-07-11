<%@page import="Database.DBconnect"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Database.DBconnect"%>
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
String number=request.getParameter("t5");
String password=request.getParameter("t6");
Connection con=DBconnect.getcon();
PreparedStatement ps = con.prepareStatement("insert into adminentry values(?,?)");
ps.setString(1,number);
ps.setString(2,password);
int k= ps.executeUpdate();
if (k > 0)
{
	%>	
	<script type="text/javascript">
	alert('New admin entered');
	</script>
	<%
}

%>

</body>
</html>