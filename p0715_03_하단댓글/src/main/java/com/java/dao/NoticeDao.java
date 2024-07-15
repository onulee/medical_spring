package com.java.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.NoticeDto;

@Mapper
public interface NoticeDao {

	ArrayList<NoticeDto> selectAll();

}
