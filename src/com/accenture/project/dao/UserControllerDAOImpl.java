package com.accenture.project.dao;

import java.sql.DriverManager;
import java.sql.ResultSet;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import com.accenture.project.connection.MD5Encryption;

import java.sql.Connection;
import java.sql.Statement;

@Repository
public class UserControllerDAOImpl implements UserControllerDAO {
	
	private static final Logger log = Logger
            .getLogger(UserControllerDAOImpl.class.getName());

	@Override
	public boolean checkLoginUser(String userName, String password) {
		
		Connection c = null;
		Statement stmt = null;
		try {
			Class.forName("org.postgresql.Driver");
			System.out.println("UserControllerDAOImpl");
			log.debug("In class");
			c = DriverManager.getConnection("jdbc:postgresql://10.195.219.199:5432/telia", "postgres", "password");

			c.setAutoCommit(false);
			System.out.println("Connected with Database...");

			stmt = c.createStatement();

			String user = userName + "";
			String pass ="";
			if(!"".equals(password))
				pass = MD5Encryption.getMd5(password) + "";
			else
				pass = password + "";
			
			ResultSet rs = stmt.executeQuery("SELECT * FROM oct_users where oct_users.username='" + user
					+ "' AND oct_users.password='" + pass + "' ");
			
			while (rs.next()) {
				String status = rs.getString("status");
				if (status.equalsIgnoreCase("Active")) {
					return true;
				}
				return false;
			}

			stmt.close();
			c.commit();
			c.close();
		} catch (Exception e) {
			System.err.println(e.getClass().getName() + ": " + e.getMessage());
			System.exit(0);
		}
		return false;
	}

}
