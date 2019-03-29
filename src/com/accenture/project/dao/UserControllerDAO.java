package com.accenture.project.dao;

import org.springframework.stereotype.Repository;


public interface UserControllerDAO {
	
	public boolean checkLoginUser(String userName, String password);

}
