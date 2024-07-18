package com.java.service;

import java.util.ArrayList;

import com.java.dto.NoticeDto;

public interface NoticeService {

	//게시판 리스트
	ArrayList<NoticeDto> selectAll();

}
