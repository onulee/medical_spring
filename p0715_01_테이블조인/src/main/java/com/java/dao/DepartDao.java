package com.java.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.DepartDto;

@Mapper
public interface DepartDao {

	ArrayList<DepartDto> selectAll();

}
