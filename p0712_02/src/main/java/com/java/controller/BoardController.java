package com.java.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.java.dto.BoardDto;
import com.java.service.BoardService;
import com.java.service.BoardServiceImpl;

@Controller
public class BoardController {

//	BoardServiceImpl boardServiceImpl = new BoardServiceImpl(); //객체선언
//	BoardService boardService = new BoardServiceImpl();  //다형성
	
	@Autowired
	BoardService boardService; //IOC컨테이너에서 주입받음. 
	
	@RequestMapping("/board/list") //게시판리스트
	public ModelAndView list(@RequestParam(defaultValue = "1") int page,
			String category,String searchWord) {
		//category,searchWord
		System.out.println("controller category : "+category);
		System.out.println("controller searchWord : "+searchWord);
		
		//리스트,검색 포함
		Map<String, Object> map = boardService.selectList(page,category,searchWord);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("map",map);
		mv.setViewName("board/list");
		return mv;
	}//list
	
	@RequestMapping("/board/view") //뷰페이지
	public ModelAndView view(BoardDto bdto,@RequestParam(defaultValue = "1") int page) {
		//현재글,이전글,다음글
		Map<String, Object> map = boardService.selectOne(bdto);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("map",map);
		mv.addObject("page",page);
		mv.setViewName("board/view");
		return mv;
	}//view
	
	@GetMapping("/board/write") //글쓰기 화면
	public String write() {
		return "board/write";
	}
	
	@PostMapping("/board/write") //글쓰기 저장
	public String write(BoardDto bdto,@RequestPart MultipartFile files) {
		//id,btitle,bcontent,files
		System.out.println("controller files : "+files.getOriginalFilename());
		String uFile="";
		//파일이 존재할 시
		if(!files.isEmpty()) {
			//jsp
			long time = System.currentTimeMillis();
			System.out.println("time : "+time);
			
			//uuid방식
//			UUID uuid = UUID.randomUUID();
//			System.out.println("uuid : "+uuid);
			
			uFile = String.format("%d_%s", time,files.getOriginalFilename());
			String saveUrl = "c:/upload/";
			File f = new File(saveUrl+uFile);
			try {
				files.transferTo(f);
			} catch (Exception e) {	e.printStackTrace();} //파일업로드
		}//if
		
		
		//변경된 파일이름 저장
		bdto.setBfile(uFile);
		
		boardService.insertBoard(bdto);
		return "redirect:/board/list";
	}
	
	@RequestMapping("/board/delete") //게시글 삭제
	public String delete(BoardDto bdto) {
		System.out.println("controller delete bno : "+bdto.getBno());
		boardService.deleteBoard(bdto);
		return "redirect:/board/list";
	}
	
	@RequestMapping("/board/update") //수정페이지
	public ModelAndView update(BoardDto bdto) { 
		BoardDto boardDto = boardService.updateBoard(bdto);
		ModelAndView mv = new ModelAndView();
		mv.addObject("boardDto",boardDto);
		mv.setViewName("/board/modify");
		return mv;
	}
	
	@RequestMapping("/board/doUpdate") //게시글 수정저장
	public String doUpdate(BoardDto bdto,@RequestPart MultipartFile files) {
		//수정페이지 저장 - bno,id,btitle,bcontent,files
		
		String uFile="";
		//파일이 존재할 시
		if(!files.isEmpty()) {
			//jsp
			long time = System.currentTimeMillis();
			System.out.println("time : "+time);
			
			//uuid방식
//			UUID uuid = UUID.randomUUID();
//			System.out.println("uuid : "+uuid);
			
			uFile = String.format("%d_%s", time,files.getOriginalFilename());
			String saveUrl = "c:/upload/";
			File f = new File(saveUrl+uFile);
			try {
				files.transferTo(f);
			} catch (Exception e) {	e.printStackTrace();} //파일업로드
			//변경된 파일이름 저장
			bdto.setBfile(uFile);
			
		}//if
		
		boardService.doUpdateBoard(bdto);
		return "redirect:/board/list";
	}
	
	@RequestMapping("/board/reply") //답글페이지
	public ModelAndView reply(BoardDto bdto) {
		Map<String, Object> map = boardService.selectOne(bdto);
		ModelAndView mv = new ModelAndView();
		mv.addObject("boardDto",map.get("boardDto"));
		mv.setViewName("board/reply");
		return mv;
	}
	
	@RequestMapping("/board/doReply") //답글페이지 저장
	public String doReply(BoardDto bdto,@RequestPart MultipartFile files) {
		String uFile="";
		//파일이 존재할 시
		if(!files.isEmpty()) {
			long time = System.currentTimeMillis();
			System.out.println("time : "+time);
			
			uFile = String.format("%d_%s", time,files.getOriginalFilename());
			String saveUrl = "c:/upload/";
			File f = new File(saveUrl+uFile);
			try {
				files.transferTo(f);
			} catch (Exception e) {	e.printStackTrace();} //파일업로드
		}//if
		
		bdto.setBfile(uFile);
		
		boardService.insertReply(bdto);
		
		return "redirect:/board/list";
	}
	
	
	
	
	
}
