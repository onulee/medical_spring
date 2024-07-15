package com.java.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.EmpDepDto;

@Mapper
public interface EmpDepDao {

	ArrayList<EmpDepDto> selectAll(); 

}
