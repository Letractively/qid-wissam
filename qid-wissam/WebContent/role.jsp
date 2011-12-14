<%@include file="connection.jsp" %>
<%@ page import="java.util.*"%>
<%@ page language="java" import="java.util.StringTokenizer" %>
<link rel="stylesheet" type="text/css" href="css/cofares.css">
<%
int test;
Statement st= con.createStatement(); 
String userid=request.getParameter("userid");
int UQ=0;
String role=request.getParameter("idrole");
ResultSet rs=st.executeQuery(" select * from user where login='"+userid+"' ");
while(rs.next())
{
Statement st2= con.createStatement(); 
UQ=st2.executeUpdate("update user set idrole='"+role+"' where login='"+userid+"' ");
if (UQ==1)
{
out.println("Update Role Success");
}
else
{
out.println("Update Role failed");
}
} 
%>