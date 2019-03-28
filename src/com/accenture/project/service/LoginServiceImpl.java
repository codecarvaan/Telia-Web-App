package com.accenture.project.service;

import com.accenture.project.dao.LoginDAOImpl;
import com.accenture.project.dao.LoginDAO;

public class LoginServiceImpl implements LoginService {

	@Override
	public boolean verifyAdminUser(String userName) {
		// TODO Auto-generated method stub
		LoginDAO loginDAO=new LoginDAOImpl();
		boolean isAdmin=loginDAO.verifyAdminUser(userName);
		return isAdmin;
	}

}
