<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@include file="connection.jsp" %>

<%
int userid=Integer.parseInt(session.getAttribute("userid").toString());
String intime = session.getAttribute("intime").toString();


java.util.Date now = new java.util.Date();
String DATE_FORMAT = "yyyy-MM-dd hh:mm:ss";
SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
String strDateNew = sdf.format(now) ;
try
{
	Statement st = con.createStatement();
	String queryString = "update admin set outtime='"+strDateNew+"' where userid="+userid+" and intime='"+intime+"'";
	int i = st.executeUpdate(queryString);

	if(i>0)
	{
	session.invalidate();
	response.sendRedirect("index.jsp");
	}
	con.close();
}
catch (Exception e)
{
	e.printStackTrace();
}
%> 

