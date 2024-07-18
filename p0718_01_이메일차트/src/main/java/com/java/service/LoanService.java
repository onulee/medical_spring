package com.java.service;

import java.util.ArrayList;

import com.java.dto.LoanDto;

public interface LoanService {

	//Loan 리스트 - region
	ArrayList<LoanDto> selectLoan();

	//Loan 리스트 - period
	ArrayList<LoanDto> selectLoan2();

}
