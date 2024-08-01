package com.java.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.MemberDto;
import com.java.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper memberMapper;
	
	@Override
	public MemberDto selectLogin(MemberDto mdto) {
		System.out.println("jsp serviceImpl id : "+mdto.getId());
		System.out.println("jsp serviceImpl pw : "+mdto.getPw());
		
		//DB연결해서 1개 객체 가져오기
		MemberDto memberDto = memberMapper.selectLogin(mdto);
		System.out.println("db serviceImpl id : "+memberDto.getId());
		System.out.println("db serviceImpl pw : "+memberDto.getPw());
		System.out.println("db serviceImpl name : "+memberDto.getName());
		
		return memberDto;
	}

}
