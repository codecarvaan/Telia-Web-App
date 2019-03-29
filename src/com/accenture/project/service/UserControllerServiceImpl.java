package com.accenture.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.accenture.project.dao.UserControllerDAO;
import com.accenture.project.dao.UserControllerDAOImpl;
@Service
public class UserControllerServiceImpl implements UserControllerService{

	public UserControllerServiceImpl() {
		//UserControllerServiceImpl userControllerServiceImpl =new UserControllerServiceImpl();
	}
	
	@Autowired
	UserControllerDAOImpl userControllerDAOImpl;
	
	@Override
	public boolean checkLoginUser(String userName, String password) {
		System.out.println("ServiceImpl");
		
		return userControllerDAOImpl.checkLoginUser(userName, password);
		
		
	}

}
