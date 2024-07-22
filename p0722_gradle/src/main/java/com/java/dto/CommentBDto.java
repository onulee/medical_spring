package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class CommentBDto {

	private int cno;
	private int bno;
	private String id;
	private String cpw;
	private String ccontent;
	private Timestamp cdate;
	
	
}
