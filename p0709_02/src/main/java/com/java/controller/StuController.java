package com.java.controller;

import java.util.Arrays;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.java.dto.Students;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class StuController {

	@RequestMapping("/students/students")
	public String students() {
		return "students/students";
	}
	
	// doStudents.jsp 데이터를 보여지도록 하시오.
	@RequestMapping("/students/doStudents")
	public ModelAndView doStudents(Students stu) {
		
		stu.setTotal(stu.getKor()+stu.getEng()+stu.getMath());
		stu.setAvg(stu.getTotal()/3.0);
		stu.setHobby(Arrays.toString(stu.getHobbys()));
		
		System.out.println("kor : "+stu.getKor());
		System.out.println("avg : "+stu.getAvg());
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("stu",stu);
		mv.setViewName("students/doStudents");
		
		return mv;
	}
	
	@RequestMapping("/students/stuUpdate")
	public ModelAndView stuUpdate(Students stu) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("stu",stu);
		mv.setViewName("students/stuUpdate");
		return mv;
	}
	
	
}
