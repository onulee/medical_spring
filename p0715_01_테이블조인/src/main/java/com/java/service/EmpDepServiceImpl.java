package com.java.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.EmpDepDao;
import com.java.dto.EmpDepDto;

@Service
public class EmpDepServiceImpl implements EmpDepService {

	@Autowired EmpDepDao empDepDao;
	
	@Override
	public ArrayList<EmpDepDto> selectAll() {
		ArrayList<EmpDepDto> list = empDepDao.selectAll(); 
		return list;
	}

}
