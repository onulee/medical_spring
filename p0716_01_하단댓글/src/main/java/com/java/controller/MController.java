package com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.java.dto.MemberDto;
import com.java.service.MemberService;

import jakarta.servlet.http.HttpSession;

@Controller
public class MController {

	@Autowired MemberService memberService;
	@Autowired HttpSession session;
	
	@GetMapping("/member/login") //로그인페이지
	public String login() {
		return "member/login";
	}
	
	@PostMapping("/member/login") //로그인 확인
	public ModelAndView login(MemberDto memberDto) {
		System.out.println("controller id : "+memberDto.getId());
		System.out.println("controller pw : "+memberDto.getPw());
		//로그인 확인
		int chkLogin = 0; //로그인실패
		MemberDto mDto = memberService.selectLogin(memberDto);
		
		if(mDto!=null) { //session추가
			chkLogin = 1; //로그인성공
			System.out.println("controller name : "+mDto.getName());
			session.setAttribute("sessionId", mDto.getId());
			session.setAttribute("sessionName", mDto.getName());
		}
		System.out.println("controller chkLogin : "+chkLogin);
		ModelAndView mv = new ModelAndView();
		mv.addObject("chkLogin",chkLogin);
		mv.setViewName("member/doLogin");
		return mv;
	}
	
	@RequestMapping("/member/logout") //로그아웃
	public ModelAndView logout() {
		int chkLogin = 3;  //로그아웃
		//섹션종료
		session.invalidate();
		ModelAndView mv = new ModelAndView();
		mv.addObject("chkLogin",chkLogin);
		mv.setViewName("member/doLogin");
		return mv;
	}
	
	
	
	
}
