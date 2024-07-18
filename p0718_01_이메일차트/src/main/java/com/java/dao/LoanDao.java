package com.java.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.LoanDto;

@Mapper
public interface LoanDao {

	//Loan 리스트 - region
	ArrayList<LoanDto> selectLoan();
	//Loan 리스트 - period
	ArrayList<LoanDto> selectLoan2();

}
