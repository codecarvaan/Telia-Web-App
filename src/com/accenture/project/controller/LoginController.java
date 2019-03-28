package com.accenture.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.accenture.project.service.LoginService;
import com.accenture.project.service.LoginServiceImpl;

@Controller
public class LoginController {
	
	@RequestMapping("/login.htm")
	public ModelAndView LoginPage(HttpServletRequest  request,HttpServletResponse response) {
		ModelAndView m=new ModelAndView();
		
		m.setViewName("/login");
		return m;
		
	}
	
	
	@RequestMapping("/adminIccid.htm")
	public ModelAndView AdminIccidPage(HttpServletRequest  request,HttpServletResponse response) {
		ModelAndView m=new ModelAndView();
		
		m.setViewName("/adminIccid");
		return m;
		
	}
	
	@RequestMapping("/adminMsISDN.htm")
	public ModelAndView AdminMsIsdnPage(HttpServletRequest  request,HttpServletResponse response) {
		ModelAndView m=new ModelAndView();
		
		m.setViewName("/adminMsISDN");
		return m;
		
	}
	
	
	@RequestMapping("/buyOrder.htm")
	public ModelAndView BuyOrderPage(HttpServletRequest  request,HttpServletResponse response) {
		ModelAndView m=new ModelAndView();
		
		m.setViewName("/buyOrder");
		return m;
		
	}
	
	
	
	
	@RequestMapping("/header.htm")
	public ModelAndView HeaderPage(HttpServletRequest  request,HttpServletResponse response) {
		ModelAndView mv=new ModelAndView();
		String visitorName=request.getParameter("Username");		
		mv.addObject("visitorName", visitorName);
		LoginService loginService= new LoginServiceImpl();
		boolean isAdmin=loginService.verifyAdminUser(visitorName);
		mv.addObject("isAdmin", isAdmin);
		mv.setViewName("/header");
		return mv;
		
	}
	
	

	@RequestMapping("/home.htm")
	public ModelAndView RegistrationPage(HttpServletResponse response,HttpServletRequest request) {
		ModelAndView mv=new ModelAndView();
		String visitorName=request.getParameter("Username");
	
		mv.addObject("visitorName", visitorName);
		mv.setViewName("/home");
		return mv;
	}
	@RequestMapping("/Result.htm")
	public ModelAndView ResultPage(HttpServletResponse response,HttpServletRequest request) {
		ModelAndView mv=new ModelAndView();
		String username=request.getParameter("username");
		String age=request.getParameter("age");
		String gender=request.getParameter("gender");
		mv.addObject("username", username);
		mv.addObject("age", age);
		mv.addObject("gender", gender);
		
		mv.setViewName("/ResultPage");
		return mv;
	}
	
}
