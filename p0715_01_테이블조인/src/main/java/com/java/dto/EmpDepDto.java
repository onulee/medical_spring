package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class EmpDepDto {

	private int employee_id;
	private String emp_name;
	private Timestamp hire_date;
	private double salary;
	private int department_id;
	
	private String department_name;
	private int parent_id;
	
	
	
}
