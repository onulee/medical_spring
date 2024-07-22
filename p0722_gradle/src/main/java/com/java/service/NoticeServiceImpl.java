package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.NoticeDao;
import com.java.dto.CommentBDto;
import com.java.dto.NoticeDto;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired NoticeDao noticeDao;
	
	@Override //notice리스트
	public ArrayList<NoticeDto> selectAll() {
		ArrayList<NoticeDto> list = noticeDao.selectAll();
		return list;
	}

	@Override //notice 1개 가져오기
	public Map<String, Object> selectOne(NoticeDto noticeDto) {
		Map<String, Object> map = new HashMap<>();
		// 게시글 1개 가져오기
		NoticeDto nDto = noticeDao.selectOne(noticeDto);
		// 게시글 하단댓글 모두가져오기 - 예)41번에 해당되는 하단댓글 모두가져오기
		ArrayList<CommentBDto> list = noticeDao.selectAllCommentB(noticeDto);
		map.put("nDto", nDto);
		map.put("list", list);
		return map;
	}

	@Override //하단댓글저장, 1개 가져오기
	public CommentBDto insertCommentB(CommentBDto commentBDto) {
		System.out.println("service cno : "+commentBDto.getCno());
		//하단댓글 저장
		noticeDao.insertCommentB(commentBDto);
		//cno생성후 출력
		System.out.println("service cno2 : "+commentBDto.getCno());
		//하단댓글 1개 가져오기
		CommentBDto cBDto = noticeDao.selectOneCommentB(commentBDto);
		return cBDto;
	}
	
	@Override //하단댓글삭제
	public void deleteCommentB(CommentBDto commentBDto) {
		System.out.println("service cno : "+commentBDto.getCno());
		noticeDao.deleteCommentB(commentBDto);
		return;
	}

	@Override //하단댓글수정
	public CommentBDto updateCommentB(CommentBDto commentBDto) {
		System.out.println("service cno : "+commentBDto.getCno());
		//하단댓글 수정
		noticeDao.updateCommentB(commentBDto);
		//하단댓글 1개 가져오기
		CommentBDto cBDto = noticeDao.selectOneCommentB(commentBDto);
		return cBDto;
	}

	
	
	
	
}
