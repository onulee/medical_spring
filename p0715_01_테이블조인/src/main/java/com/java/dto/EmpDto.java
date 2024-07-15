package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class EmpDto {
	
	private int employee_id;
	private String emp_name;
	private String email;
	private String phone_number;
	private Timestamp hire_date;
	private double salary;
	private int manager_id;
	private double commission_pct;
	private Timestamp retire_date;
	private int department_id;
	private String job_id;
	private Timestamp create_date;
	private Timestamp update_date;
	

}
