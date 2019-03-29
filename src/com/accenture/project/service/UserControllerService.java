package com.accenture.project.service;

import org.springframework.stereotype.Service;

public interface UserControllerService {
	
	public boolean checkLoginUser(String userName, String password);

}
