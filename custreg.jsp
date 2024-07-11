<%@page import="Database.DBconnect"%>
<%@ page language="java"  import="Database.DBconnect" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<%
String name=request.getParameter("t1");
String number=request.getParameter("t2");
String email=request.getParameter("email");
String dob=request.getParameter("t3");
String pass=request.getParameter("upass");
Connection con=DBconnect.getcon();
PreparedStatement ps = con.prepareStatement("insert into custreg values(?,?,?,?,?)");
PreparedStatement st = con.prepareStatement("select * from custreg where phoneno='"+number+"'");
int j=st.executeUpdate();

if (j>0)
{
%>	
<script type="text/javascript">
alert('You are already user.Go and login.');
</script>
<%
}
else
{
	ps.setString(1,name);
	ps.setString(2,number);
	ps.setString(3,email);
	ps.setString(4,dob);
	ps.setString(5,pass);
	int k= ps.executeUpdate();
	if (k > 0)
	{
	response.sendRedirect("custlogin.html");
	}
}



%>
</body>
</html>