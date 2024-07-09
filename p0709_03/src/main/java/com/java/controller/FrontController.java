package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.Member;

@Controller
public class FrontController {

	@RequestMapping("/index")
	public String index() {
		
		//기본생성자
		Member m = new Member();
		
		//전체생성자
		Member m2 = new Member("aaa","1111","홍길동","010-1111-1111");
		
		//부분생성자
//		Member m3 = new Member("aaa");
		Member m3 = Member.builder().id("aaa").build();
		
		//부분생성자
//		Member m4 = new Member("bbb","1111","유관순");
		Member m4 = Member.builder().id("bbb").pw("1111").name("유관순").build();
		
		
		
		
		return "index";
	}
}
