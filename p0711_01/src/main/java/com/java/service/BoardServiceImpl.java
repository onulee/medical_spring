package com.java.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.BoardDao;
import com.java.dto.BoardDto;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDao boardDao;
	
	@Override
	public ArrayList<BoardDto> selectList() {
		//mybatis연결해서 list 가져오기
		ArrayList<BoardDto> list = boardDao.selectList();
		return list;
	}//selectList

	@Override
	public BoardDto selectOne(BoardDto bdto) {
		boardDao.updateBhit(bdto); //조회수 1증가
		BoardDto boardDto = boardDao.selectOne(bdto);
		
		return boardDto;
	}

	@Override
	public void insertBoard(BoardDto bdto) {
		boardDao.insertBoard(bdto);
		
	}

	@Override
	public void deleteBoard(BoardDto bdto) {
		boardDao.deleteBoard(bdto);
		
	}

	@Override
	public BoardDto updateBoard(BoardDto bdto) {
		BoardDto boardDto = boardDao.selectOne(bdto);
		return boardDto;
	}

	@Override  //게시글 수정저장
	public void doUpdateBoard(BoardDto bdto) {
		boardDao.updateBoard(bdto);
	}

	@Override //답글페이지 저장
	public void insertReply(BoardDto bdto) {
		boardDao.updateBstep(bdto); // 부모보다 큰 step을 1씩 증가
		boardDao.insertReply(bdto);
		
	}
	
	

}
