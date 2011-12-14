<%@ page import="java.sql.*,java.util.*" %>
<%@ page import="wissam.user"%> 
<html>
<head>
</head>
<link rel="stylesheet" type="text/css" href="css/cofares.css">
<body>


<%
String login="";
if(session.getAttribute("login")!=null && session.getAttribute("login")!="")
{
login=session.getAttribute("login").toString();
%>
 <a href="index.jsp">Home</a>
 <a href="logout.jsp">Logout</a>

<%
}
else
{
%>
 <a href="index.jsp">Home</a>
 <a href="login.jsp">Login</a>
<%
}
%>

<h1>Welcome <%=login%></h1>

<% 
try{
user u = new user();
u.isadmin(login);
}catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</html>