<%@ page contentType="text/html; charset=iso-8859-1" language="java" %>
<html>
<head>

<script language = "Javascript">


function echeck(str) {
	
	
		var at="@"
		var dot="."
		var lat=str.indexOf(at)
		var lstr=str.length
		var ldot=str.indexOf(dot)
		if (str.indexOf(at)==-1){
		   alert("Invalid E-mail Adress")
		   return false
		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		   alert("Invalid E-mail Adress")
		   return false
		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		    alert("Invalid E-mail Adress")
		    return false
		}

		 if (str.indexOf(at,(lat+1))!=-1){
		    alert("Invalid E-mail Adress")
		    return false
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		    alert("Invalid E-mail Adress")
		    return false
		 }

		 if (str.indexOf(dot,(lat+2))==-1){
		    alert("Invalid E-mail Adress")
		    return false
		 }
		
		 if (str.indexOf(" ")!=-1){
		    alert("Invalid E-mail Adress")
		    return false
		 }

 		 return true					
	}

function ValidateForm(){
	var emailID=document.frm.email
	var PrenomID=document.frm.fname
	var NomID=document.frm.lname
	var userID=document.frm.userid
	var password=document.frm.pwd
	
	
	if ((PrenomID.value==null)||(PrenomID.value=="")){
		alert("Please Enter votre Prénom")
		PrenomID.focus()
		return false
	}
	
	if ((NomID.value==null)||(NomID.value=="")){
		alert("Please Enter votre Nom")
		NomID.focus()
		return false
	}
	
	if ((userID.value==null)||(userID.value=="")){
		alert("Please Enter votre Nom utilisateur")
		userID.focus()
		return false
	}
	
	
	if ((password.value==null)||(password.value=="")){
		alert("Please Enter votre Mot de passe")
		password.focus()
		return false
	}
	
		
	if ((emailID.value==null)||(emailID.value=="")){
		alert("Please Enter your Email Adress")
		emailID.focus()
		return false
	}
	if (echeck(emailID.value)==false){
		emailID.value=""
		emailID.focus()
		return false
	}

 
	return true
 
 }
</script>

<link rel="stylesheet" type="text/css" href="css/cofares.css">

</head>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<body>

<div id="index-content">
<form   name="frm" action="reg.jsp" method="post" onSubmit="return ValidateForm()">
<H2 ALIGN="center"> Bienvenue au Système d'Information de l'ISAE</H2>
<table  align="center" width="0%" border="0" cellspacing="10" cellpadding="0">


<tr>
    <td>Prénom:</td>
    <td><input type="text" name="fname" /></td>
  </tr>

<tr>
    <td>Nom:</td>
    <td><input type="text" name="lname" /></td>
  </tr>

<tr>
<td>Nom utilisateur:</td>
 <td><input type="text" name="userid" /></td>
 </tr>
  
  
 <tr>
    <td>Mot de passe:</td>
    <td><input type="password" name="pwd" /></td>
  </tr>


 <tr>
    <td>Adresse Email:</td>
    <td><input type="text" name="email" /></td>
  </tr>

  

  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" name="submit" value="Submit" ></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>

<input type="hidden" name="option" value="0" />


</table>
</form>
</div>
<p align="center" style="color:red">
            
        </p>

</body>
</html>