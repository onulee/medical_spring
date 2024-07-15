package com.java.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.EmpDto;

@Mapper
public interface EmpDao {

	// 사원리스트 모두 가져오기
	ArrayList<EmpDto> selectAll();

}
