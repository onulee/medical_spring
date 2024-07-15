package com.java.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.java.dto.NoticeDto;
import com.java.service.NoticeService;

@Controller
@RequestMapping("/customer")
public class NoticeController {

	@Autowired NoticeService noticeService;
	
	@RequestMapping("/notice")
	public ModelAndView notice() {
		
		ArrayList<NoticeDto> list = noticeService.selectAll();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("list",list);
		mv.setViewName("/customer/notice");
		
		return mv;
	}
	
	@RequestMapping("/notice_view")
	public String notice_view() {
		return "/customer/notice_view";
	}
	
	
	
	
}
