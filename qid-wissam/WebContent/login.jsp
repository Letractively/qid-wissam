<html>
<head>
</head>
<link rel="stylesheet" type="text/css" href="css/cofares.css">
<body>

<div id="index-content">
<h2><center>Bienvenue au Système d'Information de l'ISAE</center></h2>
<h3><center>Accès: utilisateur</center></h3>
<form name="loginform" method="post" action="userloginmid.jsp">
<table align="center"  >
  <tr><td colspan=2> </td></tr>
  <tr>
  <td>Login Name:</td>
  <td><input type="text" name="login" value=""></td>
  </tr>
  <tr>
  <td>Password:</td>
  <td><input type="password" name="password" value=""></td>
  </tr>
  <tr align="center">
  <td><br><input type="button" name="bac" value="Home" onclick="parent.location='index.jsp'" ></td>
  <td><br><input type="submit" name="Submit" value="Valider"></td>
  </tr>
  <tr><td colspan=2> </td></tr>
</table>
</form>
</div>

</body>
</html>