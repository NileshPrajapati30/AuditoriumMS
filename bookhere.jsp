<%@page import="Database.DBconnect"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DBconnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book here.</title>
</head>
<body>
<%
String name=request.getParameter("t1");
String phn=request.getParameter("t2");
String email=request.getParameter("email");
String date=request.getParameter("t5");
String prname=request.getParameter("t6");
String tslot=request.getParameter("t7");
String trid=request.getParameter("t9");
Connection con=DBconnect.getcon();
PreparedStatement ps = con.prepareStatement("insert into bookinfo values(?,?,?,?,?,?,?)");
PreparedStatement st = con.prepareStatement("select * from custreg where phoneno='"+phn+"'");
PreparedStatement et = con.prepareStatement("select * from bookinfo where tslot='"+tslot+"'");
int i=et.executeUpdate();
if(i == 1)
{
	%>
	<script type="text/javascript">
	alert('Please slect another time slot.');
	</script>
	<jsp:include page="bookhere.html"></jsp:include>
	<%	
}
else
{
int j=st.executeUpdate();
if (j>0)
{
	ps.setString(1,name);
	ps.setString(2,phn);
	ps.setString(3,email);
	ps.setString(4,date);
	ps.setString(5,prname);
	ps.setString(6,tslot);
	ps.setString(7,trid);
	int k= ps.executeUpdate();
	if (k > 0)
	{
		%>
		<script type="text/javascript">
		alert('Welldone,your slot is booked.See your full information here.');
		</script>
		<jsp:include page="detail.html"></jsp:include>
		<%
	}
	else
	{
		%>	
		<script type="text/javascript">
		alert('Please enter registered mobile number.');
		</script>
		<jsp:include page="bookhere.html"></jsp:include>
		<%
	}
}
}

%>

</body>
</html>