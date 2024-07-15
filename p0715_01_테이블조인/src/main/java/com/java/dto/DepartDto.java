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
public class DepartDto {

	private int department_id;
	private String department_name;
	private int parent_id;
	private int manager_id;
	private Timestamp create_date;
	private Timestamp update_date;
	
}
