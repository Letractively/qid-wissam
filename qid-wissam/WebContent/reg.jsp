<%@include file="connection.jsp" %>
<%
String user=request.getParameter("userid"); 
session.putValue("userid",user);  
String pwd=request.getParameter("pwd"); 
String fname=request.getParameter("fname"); 
String lname=request.getParameter("lname"); 
String email=request.getParameter("email"); 
String option=request.getParameter("option");
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate(" insert into user(login,password,FirstName,LastName,Email,idRole) values('"+user+"','"+pwd+"','"+fname+"','"+lname+"','"+email+"','"+option+"')");
String redirectURL = "index.jsp";
response.sendRedirect(redirectURL);
%>
