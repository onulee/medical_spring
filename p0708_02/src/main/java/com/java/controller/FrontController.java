package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FrontController {
	
	@RequestMapping(value="/index", method = RequestMethod.GET)
	public String index() {
		//localhost:8181/index
		//localhost:8181/WEB-INF/views/index.jsp
		return "index";
	}
	
	@RequestMapping("/login")
    public String login() {
    	return "login";
    }
	

}
