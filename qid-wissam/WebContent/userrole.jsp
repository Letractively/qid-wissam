<%@ page contentType="text/html; charset=iso-8859-1" language="java" %>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/cofares.css">
</head>
<%@include file="connection.jsp" %>
<body>
<form   name="frm" action="role.jsp" method="post">
<%
Statement st= con.createStatement(); 
String query = "Select * from user ";  
ResultSet rs = st.executeQuery(query); 
%> 
<TABLE cellpadding="15" border="1" style="background-color: #ffffcc;">
<TR>
<TD>Select username : <select name="userid"><%while (rs.next()) {%>
<option><%=rs.getString(2)%></option>
<% } %>
</select></TD>
<%
String query2= "Select * from role";
ResultSet rs2 = st.executeQuery(query2);
%>
<TD>Change Role of this user : <select name="idrole"><%while (rs2.next()) {%>
<option value="<%=rs2.getString(1)%>"><%=rs2.getString(2)%></option>
<% } %>
</select></TD>
<td><input type="submit" name="submit" value="Update"></td>
</TR>
</table>
</form>
<p align="center" style="color:red">
</p>
</body>
</html>