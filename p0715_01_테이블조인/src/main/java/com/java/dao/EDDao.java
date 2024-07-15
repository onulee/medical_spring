package com.java.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.EDDto;

@Mapper
public interface EDDao {

	ArrayList<EDDto> selectAll();

}
