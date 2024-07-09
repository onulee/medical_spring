package com.java.controller;

import java.util.Arrays;

import org.springframework.boot.context.properties.bind.DefaultValue;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.java.dto.Member;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@RequestMapping("/member")
	public String member() {
		return "member/member";
	}
	
	@RequestMapping("/doMember")
	public ModelAndView doMember(Member member) {
		
		System.out.println("id : "+ member.getId());
		System.out.println("name : "+ member.getName());
		System.out.println("gender : "+ member.getGender());
		System.out.println("hobby : "+Arrays.toString(member.getHobbys()));
		
		member.setHobby(Arrays.toString(member.getHobbys()));
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("member",member);
		mv.setViewName("member/doMember");
		
		return mv;
	}
	
	@RequestMapping("/login")
	public String login() {
		return "member/login";
	}
	
	@RequestMapping("/doLogin")
	public ModelAndView doLogin(@RequestParam("id") String id,
			String pw,
			@RequestParam(defaultValue = "1") int pno,
			HttpServletRequest request) {
//		int pno = Integer.parseInt(request.getParameter("pno"));
		System.out.println("id : "+id);
		System.out.println("pw : "+pw);
		System.out.println("pno : "+pno);
		ModelAndView mv = new ModelAndView();
		mv.addObject("id",id);
		mv.addObject("pw",pw);
		mv.addObject("pno",pno);
		mv.setViewName("member/doLogin");
		return mv;
	}
	
	@RequestMapping("/member/data")
	public String data() {
		return "member/data";
	}
	
	//requestParam 형태로 데이터를 받아 doData.jsp페이지로 데이터를 전송하시오.
	@RequestMapping("/member/doData")
	public ModelAndView doData(@RequestParam(defaultValue = "1") int stuNo
			, String name,@RequestParam(defaultValue = "0") int kor
			,String[] hobby) {
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("stuNo",stuNo);
		mv.addObject("name",name);
		mv.addObject("kor",kor);
		mv.addObject("hobby",Arrays.toString(hobby));
		
		mv.setViewName("/member/doData");
		
		return mv;
	}
	
	
	
	
	

}
