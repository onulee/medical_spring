package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class NoticeDto {

	private int bno;
	private String id;
	private String btitle;
	private String bcontent;
	private Timestamp bdate;
	private int bgroup;
	private int bstep;
	private int bindent;
	private int bhit;
	private String bfile;
	
}
