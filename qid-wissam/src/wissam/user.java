package wissam;

import java.sql.*;

public class user {

	private String login;
	private String password;
    public String idrole;

    String connectionURL = "jdbc:mysql://localhost:3306/dbsurvey"; 
    Connection connection = null; 
   
	
   public String getUserame(){
	   
	   return login;
   }
	
	
   public void setUsername(String userName ){
	   
	   this.login=userName;
   }
   
  public String getPassword(){
	  
	  return password;
  }
   
  public void setPassword(String password){
	  
	  this.password=password;
  }
   
  public boolean isadmin(String usernamet)  {
  
	  try{
		  Class.forName("com.mysql.jdbc.Driver").newInstance(); 
		  connection = DriverManager.getConnection(connectionURL, "root", "");
		  Statement stmt = connection.createStatement();
		  String query = "Select * FROM  user where login='"+usernamet+"' ";
		  ResultSet rs = stmt.executeQuery(query);
		  while(rs.next()){ 
		  idrole=rs.getString(7);
		  }
		  }catch(Exception e){e.printStackTrace();}
		
	  if(idrole.equals("1"))
	   
		  return true;
	 
	  else
		
		  return false;  
	
}
	}
		
	  

