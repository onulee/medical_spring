package com.java.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.EDDao;
import com.java.dto.EDDto;

@Service
public class EDServiceImpl implements EDService {

	@Autowired EDDao edDao;
	
	@Override
	public ArrayList<EDDto> selectAll() {
		ArrayList<EDDto> list = edDao.selectAll();
		return list;
	}

}
