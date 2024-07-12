package com.java.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.BoardDto;

@Mapper
public interface BoardDao {

	//게시판리스트 가져오기 - 리스트,검색포함
	ArrayList<BoardDto> selectList(int startRow, int endRow, String category, String searchWord);
	//게시글 총개수 - 리스트,검색포함
	int selectCount(String category, String searchWord);

	//게시글1개 가져오기 - 현재글,이전글,다음글
	BoardDto selectOne(BoardDto bdto);
	BoardDto selectOnePrev(BoardDto bdto);
	BoardDto selectOneNext(BoardDto bdto);
	// 조회수1증가
	void updateBhit(BoardDto bdto);

	//게시글 저장
	void insertBoard(BoardDto bdto);

	//게시글 삭제
	void deleteBoard(BoardDto bdto);

	//게시글 수정저장
	void updateBoard(BoardDto bdto);

	//답글페이지 저장
	void insertReply(BoardDto bdto);

	//step 1씩 증가
	void updateBstep(BoardDto bdto);

	

	

}
