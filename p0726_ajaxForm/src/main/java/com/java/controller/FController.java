package com.java.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.dto.Member;


@Controller
public class FController {
	
	//로그에 출력을 위한 선언
	Logger log = LoggerFactory.getLogger(this.getClass());
	

	@RequestMapping({"/","/index"})
	public String index() {
		System.out.println("aop test");
		//해당내용을 로그에 출력시켜줌.
		log.info("index페이지에 접근했습니다.");
		return "index";
	}
	
	@RequestMapping("doForm")
	@ResponseBody
	public String doLogin(@RequestBody Member member) {
		System.out.println("controller id : "+ member.getId());
		
		
		return "doLogin";
	}
	
	
	@RequestMapping("map")
	public String map() {
		System.out.println("map");
		return "map";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
