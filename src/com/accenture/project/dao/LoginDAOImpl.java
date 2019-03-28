package com.accenture.project.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.accenture.project.connection.DbConnection;
public class LoginDAOImpl implements LoginDAO{
	public static  Connection c = null;
    //static Statement stmt = null;
	PreparedStatement stmt=null;
	@Override
	public boolean verifyAdminUser(String userName) {
		// TODO Auto-generated method stub
		System.out.println("User name:"+userName);
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
    	 DbConnection connection=new DbConnection();
    	 c=connection.getConnection();
    	 
    	
    	 System.out.println("database version "+c.getMetaData().getDatabaseMajorVersion());
     
    		String sql = "SELECT admin FROM oct_users where username=?";
    		stmt = c.prepareStatement(sql);
    		stmt.setString(1, userName);
    		System.out.println(sql);
            //stmt.executeQuery(sql);
            ResultSet rs = stmt.executeQuery();
           
            while(rs.next())
            {
            	String admin=rs.getString("admin");
            	//verify user is admin
            	if("Yes".equalsIgnoreCase(admin)) {
            		return true;
            	}
            }
            
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
          return false;
       	
    	}
    	
    	
    
	

}
