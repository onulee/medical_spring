package com.java.service;

import java.util.ArrayList;

import com.java.dto.EmpDto;

public interface EmpService {

	//사원리스트 모두 가져오기
	ArrayList<EmpDto> selectAll();

}
