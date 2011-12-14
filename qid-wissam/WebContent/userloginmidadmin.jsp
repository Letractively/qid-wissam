<%@ page import="java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@include file="connection.jsp" %>
<%
String login = request.getParameter("login");
String password = request.getParameter("password");
java.util.Date now = new java.util.Date();
String DATE_FORMAT = "yyyy-MM-dd hh:mm:ss";
SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
String strDateNew = sdf.format(now) ;
try {
Statement st = con.createStatement();
String strQuery = "select * from user where login='"+login+"' and password='"+password+"' and idRole='1'  "; 
//out.println(strQuery);
ResultSet rs = st.executeQuery(strQuery);
if(rs.next())
{
int userid=rs.getInt(1);
String user=rs.getString(2);
session.setAttribute("userid",userid);
session.setAttribute("login",user);
session.setAttribute("intime",strDateNew);
String queryString = "INSERT INTO admin set userid="+userid+",intime='"+strDateNew+"'";
int i = st.executeUpdate(queryString);
if(i>0)
{
response.sendRedirect("welcomeadmin.jsp");
}
}
response.sendRedirect("loginadmin.jsp");
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%> 
	