package com.java.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.java.dto.BoardDto;
import com.java.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	BoardService boardService;
	
	@RequestMapping("/board/list")
	public ModelAndView list() {
		//db연결
		ArrayList<BoardDto> list = boardService.selectList();
		ModelAndView mv = new ModelAndView();
		mv.addObject("list",list);
		mv.setViewName("board/list");
		return mv;
	}
}
