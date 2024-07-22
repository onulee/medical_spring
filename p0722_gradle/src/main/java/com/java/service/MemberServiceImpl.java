package com.java.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.MemberDao;
import com.java.dto.MemberDto;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired MemberDao memberDao;
	
	@Override //로그인 확인
	public MemberDto selectLogin(MemberDto memberDto) {
		MemberDto mDto = memberDao.selectLogin(memberDto);
		return mDto;
	}

}
